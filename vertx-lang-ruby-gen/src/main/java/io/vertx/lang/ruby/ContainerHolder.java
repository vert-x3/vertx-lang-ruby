package io.vertx.lang.ruby;

import io.vertx.core.Promise;
import io.vertx.core.Vertx;
import org.jruby.RubyClass;
import org.jruby.RubyInstanceConfig;
import org.jruby.RubyModule;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.ScriptingContainer;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.StringReader;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

/**
 * Wrap a JRuby scripting container to allow the deployment of several verticle instances for
 * the same scripting container to remove the per container bottleneck that would prevent to
 * scale up the number of verticle instances for the same script.<p/>
 *
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
class ContainerHolder {

  private static final AtomicInteger seq = new AtomicInteger();
  private final JRubyVerticleFactory factory;
  private final String verticleName;
  private ScriptingContainer container;
  private int refs;

  ContainerHolder(JRubyVerticleFactory factory, String verticleName) {
    this.factory = factory;
    this.verticleName = verticleName;
  }

  String getVerticleName() {
    return verticleName;
  }

  /**
   * Create a deployment of the verticle.
   *
   * @param gemPath the optional gem path
   * @param vertx the current vertx object
   * @param classLoader the classloader
   * @param startFuture the start callback
   * @return the deployment or null if that couldn't be done
   */
  synchronized Deployment create(String gemPath, Vertx vertx, ClassLoader classLoader, Promise<?> startFuture) {
    if (refs++ == 0) {
      ScriptingContainer cont = new ScriptingContainer(LocalContextScope.SINGLETHREAD);
      RubyInstanceConfig config = cont.getProvider().getRubyInstanceConfig();
      if (gemPath != null) {
        Map newEnv = new HashMap(config.getEnvironment());
        newEnv.put("GEM_PATH", gemPath);
        config.setEnvironment(newEnv);
      }

      // In jruby 9, it it not able to load classes or rb files from a classloader.
      // We need to explode the classloader content in the `LOAD_PATH` building "jar" URIs pointing to the root of the
      // jar.
      if (classLoader instanceof URLClassLoader) {
        config.setLoadPaths(Arrays.stream(((URLClassLoader) classLoader).getURLs())
            .map(u -> {
              String form = u.toExternalForm();
              if (form.endsWith(".jar")) {
                return "jar:" + form + "!";
              } else {
                return form;
              }
            }).collect(Collectors.toList()));
      }
      // In addition we need to the set delegating classloader.
      cont.setClassLoader(classLoader);

      cont.setError(new PrintStream(new OutputStream() {
        @Override
        public void write(int b) throws IOException {
          // > /dev/null
        }
      }));
      cont.put("$_vertx", vertx);
      cont.runScriptlet("require 'vertx/vertx'");
      cont.runScriptlet("require 'vertx/promise'");
      cont.runScriptlet("$vertx=Vertx::Vertx.new($_vertx)");
      cont.remove("$_vertx");
      container = cont;
    }

    try {
      // Read the whole file into a string and wrap it in a module to provide a degree of isolation
      // - note there is one JRuby runtime per
      // verticle _type_ or module _type_ so any verticles/module instances of the same type
      // will share a runtime and need to be wrapped so ivars, cvars etc don't collide
      // We also require vertx_require which overrides the load and require methods to make them
      // synchronized
      String modName = "Mod___VertxInternalVert__" + seq.incrementAndGet();
      StringBuilder script = new StringBuilder("require 'vertx/util/vertx_require'\n").append("module ").append(modName).append(";extend self;");

      URL url = classLoader.getResource(verticleName);
      if (url == null) {
        File f = new File(verticleName);
        if (!f.isAbsolute()) {
          f = new File(System.getProperty("user.dir"), verticleName);
        }
        if (f.exists() && f.isFile()) {
          url = f.toURI().toURL();
        }
      }
      if (url == null) {
        throw new IllegalStateException("Cannot find verticle script: " + verticleName + " on classpath");
      }
      int idx = verticleName.lastIndexOf('/');

      BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
      for (String line = br.readLine(); line != null; line = br.readLine()) {
        script.append(line).append("\n");
      }
      br.close();
      script.append(";end;").append(modName);

      RubyModule wrappingModule = (RubyModule) container.runScriptlet(new StringReader(script.toString()), verticleName.substring(idx + 1));

      if (wrappingModule.getMethods().containsKey("vertx_start")) {
        container.callMethod(wrappingModule, "vertx_start");
        startFuture.complete();
      } else if (wrappingModule.getMethods().containsKey("vertx_start_async")) {
        invokeAsync(wrappingModule, "vertx_start_async", startFuture);
      } else {
        startFuture.complete();
      }
      return new Deployment(modName, wrappingModule);
    } catch (Throwable t) {
      startFuture.fail(t);
      return null;
    }
  }

  /**
   * Undeploy the deployment, this possibly destroy this container holder when the number of
   * deployment reaches zero.
   *
   * @param deployment the deployment to destroy
   * @param stopFuture the stop callback
   */
  synchronized void undeploy(Deployment deployment, Promise<?> stopFuture) {
    Promise<Void> promise = Promise.promise();
    promise.future().setHandler(ar -> {

      // Remove the module const
      container.runScriptlet("Object.send(:remove_const, :" + deployment.modName + ")");

      // Destroy for verticle
      if (--refs == 0) {
        factory.removeVerticle(this);
        container.terminate();
      }

      //
      if (ar.succeeded()) {
        stopFuture.complete();
      } else {
        stopFuture.fail(ar.cause());
      }
    });
    if (deployment.wrappingModule.getMethods().containsKey("vertx_stop")) {
      container.callMethod(deployment.wrappingModule, "vertx_stop");
      promise.complete();
    } else if (deployment.wrappingModule.getMethods().containsKey("vertx_stop_async")) {
      invokeAsync(deployment.wrappingModule, "vertx_stop_async", promise);
    } else {
      promise.complete();
    }
  }

  private void invokeAsync(RubyModule module, String name, Promise future) {
    org.jruby.RubyClass rubyClass = (RubyClass) container.runScriptlet("return ::Vertx::Promise");
    Object wrappedFuture = container.callMethod(rubyClass, "new", future);
    container.callMethod(module, name, wrappedFuture);
  }
}

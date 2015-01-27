package io.vertx.lang.jruby;

import io.vertx.core.Context;
import io.vertx.core.Future;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;
import io.vertx.core.spi.VerticleFactory;
import org.jruby.CompatVersion;
import org.jruby.RubyClass;
import org.jruby.RubyInstanceConfig;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.ScriptingContainer;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class JRubyVerticle implements Verticle {

  private final JRubyVerticleFactory factory;
  private final ClassLoader classLoader;
  private final String verticleName;
  private Vertx vertx;
  private Context context;
  private ScriptingContainer container;

  public JRubyVerticle(JRubyVerticleFactory factory, ClassLoader classLoader, String verticleName) {
    this.factory = factory;
    this.classLoader = classLoader;
    this.verticleName = verticleName;
  }

  @Override
  public Vertx getVertx() {
    return vertx;
  }

  @Override
  public void init(Vertx vertx, Context context) {
    this.vertx = vertx;
    this.context = context;
  }

  @Override
  public void start(Future<Void> startFuture) throws Exception {
    String gemPath = context.config().getString("GEM_PATH");
    if (gemPath != null && !gemPath.trim().isEmpty()) {
      container = factory.createContainer(gemPath);
    } else {
      container = factory.getContainer();
    }
    String requireName = VerticleFactory.removePrefix(verticleName);
    try {
      container.runScriptlet("require 'vertx/context'");
      container.runScriptlet("$context=Vertx::Context.new($_context)");
      container.put("$_context", context);
      container.remove("_context");
      container.runScriptlet("require '" + requireName + "'");
      if (hasTopLevelFunction(container, "vertx_start")) {
        container.runScriptlet("vertx_start");
        startFuture.complete();
      } else if (hasTopLevelFunction(container, "vertx_async_start")) {
        invokeAsync("vertx_async_start", startFuture);
      } else {
        startFuture.complete();
      }
    } catch (Throwable t) {
      startFuture.fail(t);
    }
  }

  private boolean hasTopLevelFunction(ScriptingContainer container, String name) {
    return Boolean.TRUE.equals(container.runScriptlet("respond_to?(:" + name + ",true)"));
  }

  private void invokeAsync(String name, Future future) {
    org.jruby.RubyClass rubyClass = (RubyClass) container.runScriptlet("return ::Vertx::Future");
    Object wrappedFuture = container.callMethod(rubyClass, "new", future);
    Object self = container.runScriptlet("return self");
    container.callMethod(self, name, wrappedFuture);
  }

  @Override
  public void stop(Future<Void> stopFuture) throws Exception {
    if (container != null) {
      if (hasTopLevelFunction(container, "vertx_stop")) {
        container.runScriptlet("vertx_stop");
        stopFuture.complete();
      } else if (hasTopLevelFunction(container, "vertx_async_stop")) {
        invokeAsync("vertx_async_stop", stopFuture);
      } else {
        stopFuture.complete();
      }
    } else {
      stopFuture.complete();
    }
  }
}

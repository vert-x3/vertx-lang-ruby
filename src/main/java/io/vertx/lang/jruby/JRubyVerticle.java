package io.vertx.lang.jruby;

import io.vertx.core.Context;
import io.vertx.core.Future;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;
import org.jruby.CompatVersion;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.ScriptingContainer;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class JRubyVerticle implements Verticle {

  private final ClassLoader classLoader;
  private final String verticleName;
  private Vertx vertx;
  private Context context;

  public JRubyVerticle(ClassLoader classLoader, String verticleName) {
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
    ScriptingContainer container = new ScriptingContainer(LocalContextScope.SINGLETHREAD);
    container.setCompatVersion(CompatVersion.RUBY1_9);
    container.setError(new PrintStream(new OutputStream() {
      @Override
      public void write(int b) throws IOException {
        // > /dev/null
      }
    }));
    try {
      container.put("$_vertx", vertx);
      container.put("$_context", context);
      container.runScriptlet("require 'vertx/vertx'");
      container.runScriptlet("$vertx=Vertx::Vertx.new($_vertx)");
      container.runScriptlet("require 'vertx/context'");
      container.runScriptlet("$context=Vertx::Context.new($_context)");
      container.remove("$_vertx");
      container.remove("_context");
      container.runScriptlet("require '" + verticleName + "'");
      startFuture.complete();
    } catch (Throwable t) {
      startFuture.fail(t);
    }
  }

  @Override
  public void stop(Future<Void> stopFuture) throws Exception {
    stopFuture.complete();
  }
}

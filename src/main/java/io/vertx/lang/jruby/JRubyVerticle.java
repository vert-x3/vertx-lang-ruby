package io.vertx.lang.jruby;

import io.vertx.core.Context;
import io.vertx.core.Future;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

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
    ScriptEngineManager manager = new ScriptEngineManager();
    ScriptEngine engine = manager.getEngineByName("jruby");
    try {
      engine.put("_vertx", vertx);
      engine.put("_context", context);
      engine.eval("require 'vertx/vertx'");
      engine.eval("$vertx=Vertx::Vertx.new($_vertx)");
      engine.eval("require 'vertx/context'");
      engine.eval("$context=Vertx::Context.new($_context)");
      engine.eval("require '" + verticleName + "'");
      startFuture.complete();
    } catch (ScriptException e) {
      startFuture.fail(e);
    }
  }

  @Override
  public void stop(Future<Void> stopFuture) throws Exception {

  }
}

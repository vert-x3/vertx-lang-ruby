package io.vertx.lang.jruby;

import io.vertx.core.Context;
import io.vertx.core.Future;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class JRubyVerticle implements Verticle {

  private final JRubyVerticleFactory factory;
  private final ContainerHolder holder;
  private final ClassLoader classLoader;
  private final String verticleName;
  private Vertx vertx;
  private Context context;
  private Deployment instance;

  public JRubyVerticle(JRubyVerticleFactory factory, ContainerHolder holder, ClassLoader classLoader, String verticleName) {
    this.factory = factory;
    this.holder = holder;
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
      instance = holder.create(gemPath, vertx, classLoader, startFuture);
    } else {
      instance = holder.create(null, vertx, classLoader, startFuture);
    }
  }

  @Override
  public void stop(Future<Void> stopFuture) throws Exception {
    if (instance != null) {
      holder.undeploy(instance, stopFuture);
    } else {
      stopFuture.complete();
    }
  }
}

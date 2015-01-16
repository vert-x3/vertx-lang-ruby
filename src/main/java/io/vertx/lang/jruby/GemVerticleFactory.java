package io.vertx.lang.jruby;

import io.vertx.core.Verticle;
import io.vertx.core.spi.VerticleFactory;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class GemVerticleFactory implements VerticleFactory {

  @Override
  public String prefix() {
    return "gem";
  }

  @Override
  public Verticle createVerticle(String verticleName, ClassLoader classLoader) throws Exception {
    throw new UnsupportedOperationException();
  }
}

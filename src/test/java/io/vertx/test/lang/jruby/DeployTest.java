package io.vertx.test.lang.jruby;

import io.vertx.test.core.VertxTestBase;
import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class DeployTest extends VertxTestBase {

  private static volatile int deployedCount = 0;

  public static void deployed() {
    deployedCount++;
  }

  @Override
  public void setUp() throws Exception {
    super.setUp();
    deployedCount = 0;
  }

  @Test
  public void testDeployRubyVerticle() {
    vertx.deployVerticle("simple_verticle.rb", ar -> {
      assertTrue(ar.succeeded());
      assertEquals(1, deployedCount);
      testComplete();
    });
    await();
  }
}

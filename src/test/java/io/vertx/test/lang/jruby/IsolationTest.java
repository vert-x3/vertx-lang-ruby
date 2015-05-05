package io.vertx.test.lang.jruby;

import io.vertx.test.core.VertxTestBase;
import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class IsolationTest extends VertxTestBase {

  private static volatile Runnable callback;

  public static void registerCallback(Runnable callback) {
    IsolationTest.callback = callback;
  }

  @Test
  public void testFoo() {
    vertx.deployVerticle("isolation_client1.rb", ar1 -> {
      assertTrue(ar1.succeeded());
      System.out.println("callback = " + callback);
      callback.run();
      vertx.deployVerticle("isolation_client2.rb", ar2 -> {
        assertTrue(ar2.succeeded());
        callback.run();
        testComplete();
      });
    });
    await();
  }

}

package io.vertx.test.lang.ruby;

import io.vertx.test.core.VertxTestBase;
import org.junit.Test;

import java.util.LinkedList;
import java.util.function.Supplier;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class IsolationTest extends VertxTestBase {

  private static final LinkedList<Supplier<Number>> callbacks = new LinkedList<>();

  public static void registerCallback(Supplier<Number> callback) {
    callbacks.add(callback);
  }

  public void before() throws Exception {
    callbacks.clear();
    super.before();
  }

  @Test
  public void testDifferentVerticleTypeDontShareTheSameGlobal() {
    vertx.deployVerticle("verticle_sharing_global_1.rb", ar1 -> {
      assertTrue(ar1.succeeded());
      assertEquals(1, callbacks.size());
      assertEquals(1, callbacks.get(0).get().intValue());
      vertx.deployVerticle("verticle_sharing_global_2.rb", ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(2, callbacks.size());
        assertEquals(1, callbacks.get(0).get().intValue());
        assertEquals(2, callbacks.get(1).get().intValue());
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testSameVerticleTypeShareTheSameGlobal() {
    vertx.deployVerticle("verticle_incrementing_global.rb", ar1 -> {
      assertTrue(ar1.succeeded());
      assertEquals(1, callbacks.size());
      assertEquals(1, callbacks.get(0).get().intValue());
      vertx.deployVerticle("verticle_incrementing_global.rb", ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(2, callbacks.size());
        assertEquals(2, callbacks.get(0).get().intValue());
        assertEquals(2, callbacks.get(1).get().intValue());
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testSameVerticleTypeDontShareTheSameLocal() {
    vertx.deployVerticle("verticle_incrementing_local.rb", ar1 -> {
      assertTrue(ar1.succeeded());
      assertEquals(1, callbacks.size());
      assertEquals(1, callbacks.get(0).get().intValue());
      vertx.deployVerticle("verticle_incrementing_local.rb", ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(2, callbacks.size());
        assertEquals(1, callbacks.get(0).get().intValue());
        assertEquals(1, callbacks.get(1).get().intValue());
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testSameVerticleTypeDontShareTheSameIvar() {
    vertx.deployVerticle("verticle_incrementing_ivar.rb", ar1 -> {
      assertTrue(ar1.succeeded());
      assertEquals(1, callbacks.size());
      assertEquals(1, callbacks.get(0).get().intValue());
      vertx.deployVerticle("verticle_incrementing_ivar.rb", ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(2, callbacks.size());
        assertEquals(1, callbacks.get(0).get().intValue());
        assertEquals(1, callbacks.get(1).get().intValue());
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testSameVerticleTypeDontShareTheSameCvar() {
    vertx.deployVerticle("verticle_incrementing_cvar.rb", ar1 -> {
      assertTrue(ar1.succeeded());
      assertEquals(1, callbacks.size());
      assertEquals(1, callbacks.get(0).get().intValue());
      vertx.deployVerticle("verticle_incrementing_cvar.rb", ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(2, callbacks.size());
        assertEquals(1, callbacks.get(0).get().intValue());
        assertEquals(1, callbacks.get(1).get().intValue());
        testComplete();
      });
    });
    await();
  }
}

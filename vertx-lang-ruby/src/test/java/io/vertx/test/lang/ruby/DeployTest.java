package io.vertx.test.lang.ruby;

import io.vertx.core.DeploymentOptions;
import io.vertx.core.json.JsonObject;
import io.vertx.test.core.VertxTestBase;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.ScriptingContainer;
import org.junit.Test;

import java.io.File;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class DeployTest extends VertxTestBase {

  private static volatile int deployedCount;
  private static volatile int startedCount;
  private static volatile int stoppedCount;

  public static void deployed() {
    deployedCount++;
  }
  public static void started() {
    startedCount++;
  }
  public static void stopped() {
    stoppedCount++;
  }

  @Override
  public void setUp() throws Exception {
    super.setUp();
    deployedCount = 0;
    startedCount = 0;
    stoppedCount = 0;
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

  @Test
  public void testDeployAbsentVerticle() {
    vertx.deployVerticle("doesnotexists.rb", ar -> {
      assertTrue(ar.failed());
      testComplete();
    });
    await();
  }

  @Test
  public void testGemPath() {
    waitFor(2);
    File gemsDir = new File(System.getProperty("gems.path"));
    if (gemsDir.exists()) {
      if (!gemsDir.isDirectory()) {
        throw new AssertionError("Gems dir is not a dir");
      }
    } else if (!gemsDir.mkdirs()) {
      throw new AssertionError("Could not create gems dir");
    }
    ScriptingContainer container = new ScriptingContainer(LocalContextScope.SINGLETHREAD);
    container.runScriptlet(
        "require 'rubygems'\n" +
        "require 'rubygems/gem_runner'\n" +
        "require 'rubygems/exceptions'\n" +
        "Gem::GemRunner.new.run ['install', 'src/test/gems/test_gem/test_gem-0.0.0.gem', '--install-dir', '" +
            gemsDir.getAbsolutePath() + "']"
    );
    vertx.eventBus().consumer("deployment", msg -> {
      assertEquals("gem_started", msg.body());
      complete();
    });
    vertx.deployVerticle(
        "verticle_requiring_gem.rb",
        new DeploymentOptions().setConfig(new JsonObject().put("GEM_PATH", gemsDir.getAbsolutePath())),
        onSuccess(id -> {
          complete();
        }));
    await();
  }

  @Test
  public void testVerticleLifecycle() {
    vertx.deployVerticle("lifecycle_verticle.rb", ar -> {
      assertTrue(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(1, startedCount);
      assertEquals(0, stoppedCount);
      vertx.undeploy(ar.result(), ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(1, deployedCount);
        assertEquals(1, startedCount);
        assertEquals(1, stoppedCount);
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testAsyncVerticleLifecycle() {
    vertx.deployVerticle("async_lifecycle_verticle.rb", ar -> {
      assertTrue(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(1, startedCount);
      assertEquals(0, stoppedCount);
      vertx.undeploy(ar.result(), ar2 -> {
        assertTrue(ar2.succeeded());
        assertEquals(1, deployedCount);
        assertEquals(1, startedCount);
        assertEquals(1, stoppedCount);
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testVerticleRaisingErrorInRun() {
    vertx.deployVerticle("verticle_raising_error_in_run.rb", ar -> {
      assertFalse(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(0, startedCount);
      assertEquals(0, stoppedCount);
      testComplete();
    });
    await();
  }

  @Test
  public void testVerticleRaisingErrorInStart() {
    vertx.deployVerticle("verticle_raising_error_in_start.rb", ar -> {
      assertFalse(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(1, startedCount);
      assertEquals(0, stoppedCount);
      testComplete();
    });
    await();
  }

  @Test
  public void testVerticleRaisingErrorInStop() {
    vertx.deployVerticle("verticle_raising_error_in_stop.rb", ar -> {
      assertTrue(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(1, startedCount);
      assertEquals(0, stoppedCount);
      vertx.undeploy(ar.result(), ar2 -> {
        assertTrue(ar.succeeded());
        assertEquals(1, deployedCount);
        assertEquals(1, startedCount);
        assertEquals(1, stoppedCount);
        testComplete();
      });
    });
    await();
  }

  @Test
  public void testVerticleRaisingErrorInAsyncStart() {
    vertx.deployVerticle("verticle_raising_error_in_async_start.rb", ar -> {
      assertFalse(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(1, startedCount);
      assertEquals(0, stoppedCount);
      testComplete();
    });
    await();
  }

  @Test
  public void testVerticleRaisingErrorInAsyncStop() {
    vertx.deployVerticle("verticle_raising_error_in_async_stop.rb", ar -> {
      assertTrue(ar.succeeded());
      assertEquals(1, deployedCount);
      assertEquals(1, startedCount);
      assertEquals(0, stoppedCount);
      vertx.undeploy(ar.result(), ar2 -> {
        assertTrue(ar.succeeded());
        assertEquals(1, deployedCount);
        assertEquals(1, startedCount);
        assertEquals(1, stoppedCount);
        testComplete();
      });
    });
    await();
  }
}

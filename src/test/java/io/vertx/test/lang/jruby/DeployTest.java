package io.vertx.test.lang.jruby;

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

  @Test
  public void testDeployRubyVerticle2() {
    vertx.deployVerticle("rb:simple_verticle", ar -> {
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
  public void testDeployGem() {
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
        "Gem::GemRunner.new.run ['install', 'src/test/gems/test_gem_verticle/test_gem_verticle-0.0.0.gem', '--install-dir', '" +
            gemsDir.getAbsolutePath() + "']"
    );
    vertx.eventBus().consumer("deployment", msg -> {
      assertEquals("gem_started", msg.body());
      testComplete();
    });
    vertx.deployVerticle(
        "rb:test_gem_verticle",
        new DeploymentOptions().setConfig(new JsonObject().put("GEM_PATH", gemsDir.getAbsolutePath())),
        ar -> {
      assertTrue(ar.succeeded());
    });
    await();
  }
}

package io.vertx.test.lang.ruby;

import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class IntegrationTest extends RubyTestBase {

  @Test
  public void testMultiMapNames() {
    runTest("test_multi_map_names");
  }

  private void runTest(String testName) {
    runTest("integration_test", testName);
  }
}

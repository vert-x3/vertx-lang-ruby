package io.vertx.test.lang.jruby;

import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class LangTest extends RubyTestBase {

  @Test
  public void testLinearOverload() {
    runTest("test_linear_overload");
  }

  @Test
  public void testMultiOverload() {
    runTest("test_multi_overload");
  }

  private void runTest(String testName) {
    runTest("lang_test", testName);
  }
}

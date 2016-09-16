package io.vertx.test.lang.ruby;

import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class DataObjectTCKTest extends RubyTestBase {

  @Test
  public void testMethodWithOnlyJsonObjectConstructorDataObject() {
    runTest();
  }

  private void runTest() {
    runTest("data_object_tck_test", testName.getMethodName());
  }
}

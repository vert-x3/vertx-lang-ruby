package io.vertx.test.lang.ruby;

import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ConstantTCKTest extends RubyTestBase {

  @Test  public void testBasic() { runTest(); }
  @Test  public void testVertxGen() { runTest(); }
  @Test  public void testDataObject() { runTest(); }
  @Test  public void testJson() { runTest(); }
  @Test  public void testEnum() { runTest(); }
  @Test  public void testThrowable() { runTest(); }
  @Test  public void testObject() { runTest(); }
  @Test  public void testNullable() { runTest(); }
  @Test  public void testList() { runTest(); }
  @Test  public void testSet() { runTest(); }
  @Test  public void testMap() { runTest(); }

  private void runTest() {
    runTest("constant_tck_test", testName.getMethodName());
  }
}

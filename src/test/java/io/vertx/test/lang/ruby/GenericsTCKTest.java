package io.vertx.test.lang.ruby;

import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class GenericsTCKTest extends RubyTestBase {

  @Test
  public void testMethodWithUserTypeParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithClassTypeParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerClassTypeParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testInterfaceWithStringArg() throws Exception {
    runTest();
  }

  @Test
  public void testInterfaceWithVariableArg() throws Exception {
    runTest();
  }

  @Test
  public void testInterfaceWithApiArg() throws Exception {
    runTest();
  }

  private void runTest() {
    runTest("generics_tck_test", testName.getMethodName());
  }
}

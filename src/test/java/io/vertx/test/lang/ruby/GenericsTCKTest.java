package io.vertx.test.lang.ruby;

import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class GenericsTCKTest extends RubyTestBase {

  @Test
  public void testMethodWithBasicParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerBasicParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultBasicParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithJsonParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerJsonParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultJsonParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithDataObjectParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerDataObjectParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultDataObjectParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithEnumParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerEnumParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultEnumParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithUserTypeParameterizedReturn() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerUserTypeParameterized() throws Exception {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultUserTypeParameterized() throws Exception {
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
  public void testMethodWithHandlerAsyncResultClassTypeParameterized() throws Exception {
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

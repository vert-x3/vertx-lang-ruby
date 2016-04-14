package io.vertx.test.lang.ruby;

import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TestName;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class FunctionParamTest extends RubyTestBase {

  @Rule
  public final TestName testName = new TestName();

  @Test
  public void testBasicParam() {
    runTest();
  }

  @Test
  public void testJsonParam() {
    runTest();
  }

  @Test
  public void testUserTypeParam() {
    runTest();
  }

  @Test
  public void testObjectParam() {
    runTest();
  }

  @Test
  public void testDataObjectParam() {
    runTest();
  }

  @Test
  public void testEnumParam() {
    runTest();
  }

  @Test
  public void testListParam() {
    runTest();
  }

  @Test
  public void testSetParam() {
    runTest();
  }

  @Test
  public void testMapParam() {
    runTest();
  }

  @Test
  public void testGenericParam() {
    runTest();
  }

  @Test
  public void testGenericUserTypeParam() {
    runTest();
  }

  @Test
  public void testNullableListParam() {
    runTest();
  }

  @Test
  public void testBasicReturn() {
    runTest();
  }

  @Test
  public void testJsonReturn() {
    runTest();
  }

  @Test
  public void testObjectReturn() {
    runTest();
  }

  @Test
  public void testDataObjectReturn() {
    runTest();
  }

  @Test
  public void testEnumReturn() {
    runTest();
  }

  @Test
  public void testListReturn() {
    runTest();
  }

  @Test
  public void testSetReturn() {
    runTest();
  }

  @Test
  public void testMapReturn() {
    runTest();
  }

  @Test
  public void testGenericReturn() {
    runTest();
  }

  @Test
  public void testGenericUserTypeReturn() {
    runTest();
  }

  @Test
  public void testNullableListReturn() {
    runTest();
  }

  private void runTest() {
    runTest("function_param_test", testName.getMethodName());
  }
}

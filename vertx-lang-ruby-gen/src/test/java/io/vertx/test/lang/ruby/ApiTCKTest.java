package io.vertx.test.lang.ruby;

import io.vertx.codegen.Case;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TestName;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ApiTCKTest extends RubyTestBase {

  @Test
  public void testMethodWithBasicParams() {
    runTest();
  }

  @Test
  public void testMethodWithBasicBoxedParams() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerBasicTypes() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultBasicTypes() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultBasicTypesFails() {
    runTest();
  }

  @Test
  public void testMethodWithUserTypes() {
    runTest();
  }

  @Test
  public void testMethodWithOverloadedUserTypes() {
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
  public void testMethodWithHandlerDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultDataObjectFails() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerStringReturn() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerVertxGenReturn() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerGenericReturn() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultStringReturn() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultVertxGenReturn() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultGenericReturn() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerUserTypes() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultUserTypes() {
    runTest();
  }

  @Test
  public void testMethodWithConcreteHandlerUserTypeSubtype() {
    runTest();
  }

  @Test
  public void testMethodWithAbstractHandlerUserTypeSubtype() {
    runTest();
  }

  @Test
  public void testMethodWithConcreteHandlerUserTypeSubtypeExtension() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerVoid() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultVoid() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultVoidFails() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerThrowable() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerGenericUserType() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultGenericUserType() {
    runTest();
  }

  @Test
  public void testMethodWithGenericParam() {
    runTest();
  }

  @Test
  public void testMethodWithGenericHandler() {
    runTest();
  }

  @Test
  public void testMethodWithGenericHandlerAsyncResult() {
    runTest();
  }

  @Test
  public void testBasicReturns() {
    runTest();
  }

  @Test
  public void testVertxGenReturn() {
    runTest();
  }

  @Test
  public void testVertxGenNullReturn() {
    runTest();
  }

  @Test
  public void testAbstractVertxGenReturn() {
    runTest();
  }

  @Test
  public void testDataObjectReturn() {
    runTest();
  }

  @Test
  public void testDataObjectNullReturn() {
    runTest();
  }

  @Test
  public void testOverloadedMethods() {
    runTest();
  }

  @Test
  public void testSuperInterfaces() {
    runTest();
  }

  @Test
  public void testMethodWithGenericReturn() {
    runTest();
  }

  @Test
  public void testFluentMethod() {
    runTest();
  }

  @Test
  public void testStaticFactoryMethod() {
    runTest();
  }

  @Test
  public void testMethodWithCachedReturn() {
    runTest();
  }

  @Test
  public void testMethodWithCachedListReturn() {
    runTest();
  }

  @Test
  public void testJsonReturns() {
    runTest();
  }

  @Test
  public void testNullJsonReturns() {
    runTest();
  }

  @Test
  public void testComplexJsonReturns() {
    runTest();
  }

  @Test
  public void testJsonParams() {
    runTest();
  }

  @Test
  public void testNullJsonParams() {
    runTest();
  }

  @Test
  public void testJsonHandlerParams() {
    runTest();
  }

  @Test
  public void testComplexJsonHandlerParams() {
    runTest();
  }

  @Test
  public void testJsonHandlerAsyncResultParams() {
    runTest();
  }

  @Test
  public void testNullJsonHandlerAsyncResultParams() {
    runTest();
  }

  @Test
  public void testThrowableParam() {
    runTest();
  }

  @Test
  public void testSuperMethodOverloadedBySubclass() {
    runTest();
  }

  @Test
  public void testEnumParam() {
    runTest();
  }

  @Test
  public void testEnumReturn() {
    runTest();
  }

  @Test
  public void testComplexJsonHandlerAsyncResultParams() {
    runTest();
  }

  @Test
  public void testThrowableReturn() {
    runTest();
  }

  @Test
  public void testCustomModule() {
    runTest();
  }

  private void runTest() {
    runTest("api_tck_test", testName.getMethodName());
  }
}

package io.vertx.test.lang.ruby;

import io.vertx.codegen.Case;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TestName;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ApiTest extends RubyTestBase {

  @Rule
  public final TestName testName = new TestName();

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
  public void testObjectParam() {
    runTest();
  }

  @Test
  public void testListOfDataObjectsParam() {
    runTest();
  }

  @Test
  public void testSetOfDataObjectsParam() {
    runTest();
  }

  @Test
  public void testDataObjectParam() {
    runTest();
  }

  @Test
  public void testNullDataObjectParam() {
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
  public void testMethodWithHandlerListAndSet() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListAndSet() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListVertxGen() {
    runTest();;
  }

  @Test
  public void testMethodWithHandlerListAbstractVertxGen() {
    runTest();;
  }

  @Test
  public void testMethodWithHandlerAsyncResultListVertxGen() {
    runTest();;
  }

  @Test
  public void testMethodWithHandlerAsyncResultListAbstractVertxGen() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetVertxGen() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetAbstractVertxGen() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetVertxGen() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetAbstractVertxGen() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListNullJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListComplexJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListNullJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListComplexJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetNullJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetComplexJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetNullJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetComplexJsonObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListNullJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListNullJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListComplexJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetNullJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetComplexJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetNullJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListComplexJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerListNullDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerNullSetDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetComplexJsonArray() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListNullDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetDataObject() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultNullSetDataObject() {
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
  public void testMethodWithHandlerListEnum() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerSetEnum() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultListEnum() {
    runTest();
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetEnum() {
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
  public void testMapComplexJsonArrayReturn() {
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
  public void testNullJsonHandlerParams() {
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
  public void testEnumParam() {
    runTest();
  }

  @Test
  public void testEnumReturn() {
    runTest();
  }

  @Test
  public void testMapReturn() {
    runTest();
  }

  @Test
  public void testMapStringReturn() {
    runTest();
  }

  @Test
  public void testMapJsonObjectReturn() {
    runTest();
  }

  @Test
  public void testMapComplexJsonObjectReturn() {
    runTest();
  }

  @Test
  public void testMapJsonArrayReturn() {
    runTest();
  }

  @Test
  public void testMapIntegerReturn() {
    runTest();
  }

  @Test
  public void testMapShortReturn() {
    runTest();
  }

  @Test
  public void testMapByteReturn() {
    runTest();
  }

  @Test
  public void testMapCharacterReturn() {
    runTest();
  }

  @Test
  public void testMapBooleanReturn() {
    runTest();
  }

  @Test
  public void testMapFloatReturn() {
    runTest();
  }

  @Test
  public void testMapDoubleReturn() {
    runTest();
  }

  @Test
  public void testMapLongReturn() {
    runTest();
  }

  @Test
  public void testMapNullReturn() {
    runTest();
  }

  @Test
  public void testListStringReturn() {
    runTest();
  }

  @Test
  public void testListLongReturn() {
    runTest();
  }

  @Test
  public void testListJsonObjectReturn() {
    runTest();
  }

  @Test
  public void testListComplexJsonObjectReturn() {
    runTest();
  }

  @Test
  public void testListJsonArrayReturn() {
    runTest();
  }

  @Test
  public void testListComplexJsonArrayReturn() {
    runTest();
  }

  @Test
  public void testListVertxGenReturn() {
    runTest();
  }

  @Test
  public void testListDataObjectReturn() {
    runTest();
  }

  @Test
  public void testListEnumReturn() {
    runTest();
  }

  @Test
  public void testSetStringReturn() {
    runTest();
  }

  @Test
  public void testSetLongReturn() {
    runTest();
  }

  @Test
  public void testSetJsonObjectReturn() {
    runTest();
  }

  @Test
  public void testSetComplexJsonObjectReturn() {
    runTest();
  }

  @Test
  public void testSetJsonArrayReturn() {
    runTest();
  }

  @Test
  public void testSetComplexJsonArrayReturn() {
    runTest();
  }

  @Test
  public void testSetVertxGenReturn() {
    runTest();
  }

  @Test
  public void testSetDataObjectReturn() {
    runTest();
  }

  @Test
  public void testSetEnumReturn() {
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

  @Test
  public void testMethodWithListParams() {
    runTest();
  }

  @Test
  public void testMethodWithSetParams() {
    runTest();
  }

  @Test
  public void testMethodWithMapParams() {
    runTest();
  }
  @Test
  public void testMethodWithOnlyJsonObjectConstructorDataObject() {
    runTest();
  }

  private void runTest() {
    runTest("api_test", testName.getMethodName());
  }
}

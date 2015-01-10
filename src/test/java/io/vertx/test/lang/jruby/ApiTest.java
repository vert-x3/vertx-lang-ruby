package io.vertx.test.lang.jruby;

import org.junit.Test;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ApiTest extends RubyTestBase {

  @Test
  public void testMethodWithBasicParams() {
    runTest("test_method_with_basic_params");
  }

  @Test
  public void testMethodWithBasicBoxedParams() {
    runTest("test_method_with_basic_boxed_params");
  }

  @Test
  public void testMethodWithHandlerBasicTypes() {
    runTest("test_method_with_handler_basic_types");
  }

  @Test
  public void testMethodWithHandlerAsyncResultBasicTypes() {
    runTest("test_method_with_handler_async_result_basic_types");
  }

  @Test
  public void testMethodWithHandlerAsyncResultBasicTypesFails() {
    runTest("test_method_with_handler_async_result_basic_types_fails");
  }

  @Test
  public void testMethodWithUserTypes() {
    runTest("test_method_with_user_types");
  }

  @Test
  public void testObjectParam() {
    runTest("test_object_param");
  }

  @Test
  public void testOptionsParam() {
    runTest("test_options_param");
  }

  @Test
  public void testNullOptionsParam() {
    runTest("test_method_with_null_options_param");
  }

  @Test
  public void testMethodWithHandlerOptions() {
    runTest("test_method_with_handler_options");
  }

  @Test
  public void testMethodWithHandlerAsyncResultOptions() {
    runTest("test_method_with_handler_async_result_options");
  }

  @Test
  public void testMethodWithHandlerAsyncResultOptionsFails() {
    runTest("test_method_with_handler_async_result_options_fails");
  }

  @Test
  public void testMethodWithHandlerListAndSet() {
    runTest("test_method_with_handler_list_and_set");
  }

  @Test
  public void testMethodWithHandlerAsyncResultListAndSet() {
    runTest("test_method_with_handler_async_result_list_and_set");
  }

  @Test
  public void testMethodWithHandlerListVertxGen() {
    runTest("test_method_with_handler_list_vertx_gen");;
  }

  @Test
  public void testMethodWithHandlerListAbstractVertxGen() {
    runTest("test_method_with_handler_list_abstract_vertx_gen");;
  }

  @Test
  public void testMethodWithHandlerAsyncResultListVertxGen() {
    runTest("test_method_with_handler_async_result_list_vertx_gen");;
  }

  @Test
  public void testMethodWithHandlerAsyncResultListAbstractVertxGen() {
    runTest("test_method_with_handler_async_result_list_abstract_vertx_gen");
  }

  @Test
  public void testMethodWithHandlerSetVertxGen() {
    runTest("test_method_with_handler_set_vertx_gen");
  }

  @Test
  public void testMethodWithHandlerSetAbstractVertxGen() {
    runTest("test_method_with_handler_set_abstract_vertx_gen");
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetVertxGen() {
    runTest("test_method_with_handler_async_result_set_vertx_gen");
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetAbstractVertxGen() {
    runTest("test_method_with_handler_async_result_set_abstract_vertx_gen");
  }

  @Test
  public void testMethodWithHandlerListJsonObject() {
    runTest("test_method_with_handler_list_json_object");
  }

  @Test
  public void testMethodWithHandlerListNullJsonObject() {
    runTest("test_method_with_handler_list_null_json_object");
  }

  @Test
  public void testMethodWithHandlerAsyncResultListJsonObject() {
    runTest("test_method_with_async_result_handler_list_json_object");
  }

  @Test
  public void testMethodWithHandlerAsyncResultListNullJsonObject() {
    runTest("test_method_with_handler_async_result_list_null_json_object");
  }

  @Test
  public void testMethodWithHandlerSetJsonObject() {
    runTest("test_method_with_handler_set_json_object");
  }

  @Test
  public void testMethodWithHandlerSetNullJsonObject() {
    runTest("test_method_with_handler_set_null_json_object");
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetJsonObject() {
    runTest("test_method_with_async_result_handler_set_json_object");
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetNullJsonObject() {
    runTest("test_method_with_handler_async_result_set_null_json_object");
  }

  @Test
  public void testMethodWithHandlerListJsonArray() {
    runTest("test_method_with_handler_list_json_array");
  }

  @Test
  public void testMethodWithHandlerListNullJsonArray() {
    runTest("test_method_with_handler_list_null_json_array");
  }

  @Test
  public void testMethodWithHandlerAsyncResultListJsonArray() {
    runTest("test_method_with_async_result_handler_list_json_array");
  }

  @Test
  public void testMethodWithHandlerAsyncResultListNullJsonArray() {
    runTest("test_method_with_handler_async_result_list_null_json_array");
  }

  @Test
  public void testMethodWithHandlerSetJsonArray() {
    runTest("test_method_with_handler_set_json_array");
  }

  @Test
  public void testMethodWithHandlerSetNullJsonArray() {
    runTest("test_method_with_handler_set_null_json_array");
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetJsonArray() {
    runTest("test_method_with_async_result_handler_set_json_array");
  }

  @Test
  public void testMethodWithHandlerAsyncResultSetNullJsonArray() {
    runTest("test_method_with_handler_async_result_set_null_json_array");
  }

  @Test
  public void testMethodWithHandlerUserTypes() {
    runTest("test_method_with_handler_user_types");
  }

  @Test
  public void testMethodWithHandlerAsyncResultUserTypes() {
    runTest("test_method_with_handler_async_result_user_types");
  }

  @Test
  public void testMethodWithHandlerVoid() {
    runTest("test_method_with_handler_void");
  }

  @Test
  public void testMethodWithHandlerAsyncResultVoid() {
    runTest("test_method_with_handler_async_result_void");
  }

  @Test
  public void testMethodWithHandlerAsyncResultVoidFails() {
    runTest("test_method_with_handler_async_result_void_fails");
  }

  private void runTest(String testName) {
    runTest("api_test", testName);
  }
}

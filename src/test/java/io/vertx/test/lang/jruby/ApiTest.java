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

  private void runTest(String testName) {
    runTest("api_test", testName);
  }
}

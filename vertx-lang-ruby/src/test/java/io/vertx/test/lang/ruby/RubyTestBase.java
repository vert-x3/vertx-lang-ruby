package io.vertx.test.lang.ruby;

import org.junit.Rule;
import org.junit.rules.TestName;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class RubyTestBase {

  @Rule
  public final TestName testName = new TestName();

  protected void runTest(String script, String testName) {
    try {
      ScriptEngineManager manager = new ScriptEngineManager();
      ScriptEngine engine = manager.getEngineByName("jruby");
      engine.eval("require '" + script + "'");
      engine.eval(testName + "()");
    } catch (ScriptException e) {
      throw new AssertionError(e.getCause());
    }
  }
}

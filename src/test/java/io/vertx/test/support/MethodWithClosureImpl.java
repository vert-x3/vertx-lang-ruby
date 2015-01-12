package io.vertx.test.support;

import io.vertx.core.Handler;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class MethodWithClosureImpl implements MethodWithClosure {

  private String called;

  public String getCalled() {
    return called;
  }

  @Override
  public void doSomething() {
    called = "doSomething()";
  }

  @Override
  public void doSomething(String s) {
    called = "doSomething(" + s + ")";
  }

  @Override
  public void doSomething(String s, Handler<String> callback) {
    called = "doSomething(" + s + ",callback)";
    callback.handle("the_callback_payload");
  }
}

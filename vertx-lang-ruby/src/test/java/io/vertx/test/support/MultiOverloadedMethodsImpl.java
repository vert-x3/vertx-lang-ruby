package io.vertx.test.support;

import io.vertx.core.Handler;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class MultiOverloadedMethodsImpl implements MultiOverloadedMethods {

  private String called;

  public String getCalled() {
    return called;
  }

  @Override
  public void method() {
    called = "method()";
  }

  @Override
  public void method(String foo) {
    called = "method(foo=" + foo + ")";
  }

  @Override
  public void method(int bar, boolean juu) {
    called = "method(bar=" + bar + ",juu=" + juu + ")";
  }

  @Override
  public void optionalHandler(String foo, Handler<String> bar) {
    if (bar != null) {
      bar.handle("the_event");
    }
    called = "optionalHandler(foo=" + foo + ",bar)";
  }

  @Override
  public void optionalHandler(String foo, int bar) {
    called = "optionalHandler(foo=" + foo + ",bar=" +  bar+ ")";
  }

  @Override
  public void optionalHandler(String foo, boolean juu) {
    called = "optionalHandler(foo=" + foo + ",juu=" +  juu+ ")";
  }

  @Override
  public void handlers(Handler<String> foo) {
    if (foo != null) {
      foo.handle("foo_event");
    }
    called = "handlers(foo)";
  }

  @Override
  public void handlers(Handler<String> foo, Handler<String> bar) {
    if (foo != null) {
      foo.handle("foo_event");
    }
    if (bar != null) {
      bar.handle("bar_event");
    }
    called = "handlers(foo,bar)";
  }

  @Override
  public void handlers(Handler<String> foo, Handler<String> bar, Handler<String> juu) {
    if (foo != null) {
      foo.handle("foo_event");
    }
    if (bar != null) {
      bar.handle("bar_event");
    }
    if (juu != null) {
      juu.handle("juu_event");
    }
    called = "handlers(foo,bar,juu)";
  }
}

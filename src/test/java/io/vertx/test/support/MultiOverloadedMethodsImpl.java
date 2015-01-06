package io.vertx.test.support;

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
}

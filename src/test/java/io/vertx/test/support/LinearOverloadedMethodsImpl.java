package io.vertx.test.support;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class LinearOverloadedMethodsImpl implements LinearOverloadedMethods {

  private String called;

  public String getCalled() {
    return called;
  }

  @Override
  public void method() {
    this.called = "method()";
  }

  @Override
  public void method(String foo) {
    this.called = "method(" + foo + ")";
  }

  @Override
  public void method(String foo, String bar, String juu) {
    this.called = "method(" + foo + "," + bar + "," + juu +  ")";
  }

  @Override
  public void method(String foo, String bar, String juu, String daa) {
    this.called = "method(" + foo + "," + bar + "," + juu + "," + daa +   ")";
  }
}

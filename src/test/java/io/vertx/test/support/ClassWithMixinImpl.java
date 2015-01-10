package io.vertx.test.support;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ClassWithMixinImpl implements ClassWithMixin {

  private String called;

  public String getCalled() {
    return called;
  }

  @Override
  public void mixinMethod() {
    called = "mixinMethod()";
  }

  @Override
  public void superMixinMethod() {
    called = "superMixinMethod()";
  }
}

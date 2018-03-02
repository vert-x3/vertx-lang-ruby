package io.vertx.test.support;

import io.vertx.core.DeploymentOptions;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class OverloadWithOptionsImpl implements OverloadWithOptions {

  private String called;

  public String getCalled() {
    return called;
  }

  @Override
  public void method() {
    called = "method()";
  }

  @Override
  public void method(DeploymentOptions options) {
    called = "method(" + (options != null ? options.toJson() : "null") + ")";
  }
}

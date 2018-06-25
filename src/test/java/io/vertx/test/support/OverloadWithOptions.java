package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;
import io.vertx.core.DeploymentOptions;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface OverloadWithOptions {

  void method();

  void method(DeploymentOptions options);

}

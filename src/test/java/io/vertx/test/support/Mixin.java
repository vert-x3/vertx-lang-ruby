package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen(concrete = false)
public interface Mixin extends SuperMixin {

  void mixinMethod();

}

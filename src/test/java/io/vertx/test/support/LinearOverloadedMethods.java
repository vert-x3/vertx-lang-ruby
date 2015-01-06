package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface LinearOverloadedMethods {

  void method();
  void method(String foo);
  void method(String foo, String bar, String juu);
  void method(String foo, String bar, String juu, String daa);

}

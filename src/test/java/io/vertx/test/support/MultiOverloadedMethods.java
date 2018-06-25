package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;
import io.vertx.core.Handler;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface MultiOverloadedMethods {

  void method();
  void method(String foo);
  void method(int bar, boolean juu);

  void optionalHandler(String foo, Handler<String> bar);
  void optionalHandler(String foo, int bar);
  void optionalHandler(String foo, boolean juu);

  void handlers(Handler<String> foo);
  void handlers(Handler<String> foo, Handler<String> bar);
  void handlers(Handler<String> foo, Handler<String> bar, Handler<String> juu);
}

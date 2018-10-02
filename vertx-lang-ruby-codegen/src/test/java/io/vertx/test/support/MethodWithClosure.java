package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;
import io.vertx.core.Handler;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface MethodWithClosure {

  void doSomething();
  void doSomething(String s);
  void doSomething(String s, Handler<String> callback);

}

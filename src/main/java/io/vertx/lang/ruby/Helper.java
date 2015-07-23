package io.vertx.lang.ruby;

import java.util.Map;
import java.util.concurrent.Callable;
import java.util.function.Function;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class Helper {

  public static Map adaptingMap(Map map, Function toRuby, Function toJava) {
    if (map == null) {
      return null;
    }
    return new AdaptingMap(map, toRuby, toJava);
  }

  public static Throwable catchAndReturnThrowable(Callable<?> c) {
    try {
      c.call();
    } catch (Throwable t) {
      return t;
    }
    throw new AssertionError("Should not happen");
  }
}

package io.vertx.lang.ruby;

import io.vertx.core.AsyncResult;

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

  public static <T> AsyncResult<T> succeededResult(T object) {
    return new AsyncResult<T>() {
      @Override
      public T result() {
        return object;
      }
      @Override
      public Throwable cause() {
        return null;
      }
      @Override
      public boolean succeeded() {
        return true;
      }
      @Override
      public boolean failed() {
        return false;
      }
    };
  }

  public static <T> AsyncResult<T> failedResult(Object err) {
    return new AsyncResult<T>() {
      @Override
      public T result() {
        return null;
      }
      @Override
      public Throwable cause() {
        return err instanceof Throwable ? (Throwable) err : new Exception(String.valueOf(err));
      }
      @Override
      public boolean succeeded() {
        return false;
      }
      @Override
      public boolean failed() {
        return true;
      }
    };
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

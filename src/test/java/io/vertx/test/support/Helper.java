package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;
import io.vertx.core.MultiMap;
import io.vertx.core.http.CaseInsensitiveHeaders;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface Helper {

  static MultiMap getMultiMap() {
    CaseInsensitiveHeaders multiMap = new CaseInsensitiveHeaders();
    multiMap.add("foo", "foo_value");
    multiMap.add("bar", "bar_value");
    return multiMap;
  }
}

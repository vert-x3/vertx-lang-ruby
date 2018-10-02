package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface ReservedWordParams {

  // According to : http://www.zenspider.com/Languages/Ruby/QuickRef.html#reserved-words
  String method(
      String alias, String and, String BEGIN, String begin, String def, String elsif, String END,
      String end, String ensure, String in, String module, String next, String nil, String not,
      String or, String redo, String rescue, String retry, String self, String then, String undef,
      String unless, String until, String when, String yield
  );

}

package io.vertx.test.support;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ReservedWordParamsImpl implements ReservedWordParams {

  @Override
  public String method(String alias, String and, String BEGIN, String begin, String def, String elsif, String END, String end, String ensure, String in, String module, String next, String nil, String not, String or, String redo, String rescue, String retry, String self, String then, String undef, String unless, String until, String when, String yield) {
    return alias + and + BEGIN + begin + def + elsif + END + end + ensure + in + module + next + nil + not + or + redo + rescue + retry + self + then + undef + unless + until + when + yield;
  }
}

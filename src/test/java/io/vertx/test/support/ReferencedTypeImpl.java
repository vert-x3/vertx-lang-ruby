package io.vertx.test.support;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ReferencedTypeImpl implements ReferencedType {

  @Override
  public String someMethod() {
    return "someMethodValue";
  }
}

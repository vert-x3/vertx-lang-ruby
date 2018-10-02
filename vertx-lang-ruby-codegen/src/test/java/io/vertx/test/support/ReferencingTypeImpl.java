package io.vertx.test.support;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ReferencingTypeImpl implements ReferencingType {

  @Override
  public ReferencedType getReferenced() {
    return new ReferencedTypeImpl();
  }
}

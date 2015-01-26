package io.vertx.lang.jruby;

import org.jruby.Ruby;
import org.jruby.javasupport.JavaMethod;
import org.jruby.javasupport.JavaObject;
import org.jruby.javasupport.JavaUtil;
import org.jruby.runtime.builtin.IRubyObject;
import org.jruby.util.CodegenUtils;

import java.lang.reflect.Method;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class ConvertingJavaMethod extends JavaMethod {

  private final Class boxedReturnType;
  private final JavaUtil.JavaConverter returnConverter;

  public ConvertingJavaMethod(Ruby runtime, Method method) {
    super(runtime, method);
    method.setAccessible(true);
    if (method.getReturnType().isPrimitive() && method.getReturnType() != void.class) {
      this.boxedReturnType = CodegenUtils.getBoxType(method.getReturnType());
    } else {
      this.boxedReturnType = method.getReturnType();
    }
    returnConverter = JavaUtil.getJavaConverter(method.getReturnType());
  }

  @Override
  public IRubyObject invoke(IRubyObject[] args) {
    IRubyObject ret = super.invoke(args);
    if (ret instanceof JavaObject) {
      ret = convertReturn(((JavaObject) ret).getValue());
    }
    return ret;
  }

  private IRubyObject convertReturn(Object result) {
    if (result != null && result.getClass() != boxedReturnType) {
      // actual type does not exactly match method return type, re-get converter
      // FIXME: when the only autoconversions are primitives, this won't be needed
      return JavaUtil.convertJavaToUsableRubyObject(getRuntime(), result);
    }
    return JavaUtil.convertJavaToUsableRubyObjectWithConverter(getRuntime(), result, returnConverter);
  }
}

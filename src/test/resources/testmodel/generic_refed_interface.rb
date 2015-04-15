require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.GenericRefedInterface<T>
module Testmodel
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class GenericRefedInterface
    # @private
    # @param j_del [::Testmodel::GenericRefedInterface] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::GenericRefedInterface] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Object] value
    # @return [void]
    def set_value(value=nil)
      if value.class == String  ||value.class == Hash || value.class == Array && !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setValue,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid arguments when calling set_value(value)"
    end
    # @return [Object]
    def get_value
      if !block_given?
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getValue))).invoke(@j_del))
      end
      raise ArgumentError, "Invalid arguments when calling get_value()"
    end
  end
end

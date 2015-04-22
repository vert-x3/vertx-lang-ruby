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
      if (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && !block_given?
        return @j_del.java_method(:setValue, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid arguments when calling set_value(value)"
    end
    # @return [Object]
    def get_value
      if !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:getValue, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_value()"
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.GenericRefedInterface
module Testmodel
  class GenericRefedInterface
    # @private
    # @param j_del [::Testmodel::GenericRefedInterface] the java delegate
    def initialize(j_del, j_arg_T=nil)
      @j_del = j_del
      @j_arg_T = j_arg_T != nil ? j_arg_T : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Testmodel::GenericRefedInterface] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Object] value 
    # @return [void]
    def set_value(value=nil)
      if @j_arg_T.accept?(value) && !block_given?
        return @j_del.java_method(:setValue, [Java::java.lang.Object.java_class]).call(@j_arg_T.unwrap(value))
      end
      raise ArgumentError, "Invalid arguments when calling set_value(value)"
    end
    # @return [Object]
    def get_value
      if !block_given?
        return @j_arg_T.wrap(@j_del.java_method(:getValue, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_value()"
    end
  end
end

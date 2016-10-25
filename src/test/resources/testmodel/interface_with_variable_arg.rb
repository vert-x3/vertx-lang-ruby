require 'testmodel/generic_refed_interface'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.InterfaceWithVariableArg
module Testmodel
  class InterfaceWithVariableArg < ::Testmodel::GenericRefedInterface
    # @private
    # @param j_del [::Testmodel::InterfaceWithVariableArg] the java delegate
    def initialize(j_del, j_arg_T=nil, j_arg_U=nil)
      super(j_del, j_arg_U)
      @j_del = j_del
      @j_arg_T = j_arg_T != nil ? j_arg_T : ::Vertx::Util::unknown_type
      @j_arg_U = j_arg_U != nil ? j_arg_U : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Testmodel::InterfaceWithVariableArg] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Object] value 
    # @return [void]
    def set_value(value=nil)
      if @j_arg_U.accept?(value) && !block_given?
        return @j_del.java_method(:setValue, [Java::java.lang.Object.java_class]).call(@j_arg_U.unwrap(value))
      end
      raise ArgumentError, "Invalid arguments when calling set_value(value)"
    end
    # @return [Object]
    def get_value
      if !block_given?
        return @j_arg_U.wrap(@j_del.java_method(:getValue, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_value()"
    end
    # @param [Object] value 
    # @return [void]
    def set_other_value(value=nil)
      if @j_arg_T.accept?(value) && !block_given?
        return @j_del.java_method(:setOtherValue, [Java::java.lang.Object.java_class]).call(@j_arg_T.unwrap(value))
      end
      raise ArgumentError, "Invalid arguments when calling set_other_value(value)"
    end
    # @return [Object]
    def get_other_value
      if !block_given?
        return @j_arg_T.wrap(@j_del.java_method(:getOtherValue, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_other_value()"
    end
  end
end

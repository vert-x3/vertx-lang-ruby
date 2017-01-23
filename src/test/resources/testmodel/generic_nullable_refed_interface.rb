require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.GenericNullableRefedInterface
module Testmodel
  class GenericNullableRefedInterface
    # @private
    # @param j_del [::Testmodel::GenericNullableRefedInterface] the java delegate
    def initialize(j_del, j_arg_T=nil)
      @j_del = j_del
      @j_arg_T = j_arg_T != nil ? j_arg_T : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Testmodel::GenericNullableRefedInterface] the underlying java delegate
    def j_del
      @j_del
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

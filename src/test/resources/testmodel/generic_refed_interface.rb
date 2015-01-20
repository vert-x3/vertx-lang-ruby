require 'vertx/util/utils.rb'
    # @param j_del [::Testmodel::GenericRefedInterface] the java delegate
    # @private
# Generated from io.vertx.codegen.testmodel.GenericRefedInterface<T>
module Testmodel
  class GenericRefedInterface
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @param [Object] value
    # return [void]
    def set_value(value)
      if value.class == String  ||value.class == Hash || value.class == Array
        return @j_del.setValue(::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling set_value(value)"
    end
    # THE METHOD DOC
    #
    # @return [Object]: the return value (todo)
    def get_value
      ::Vertx::Util::Utils.from_object(@j_del.getValue)
    end
  end
end

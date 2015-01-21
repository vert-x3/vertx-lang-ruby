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
    # return [void]
    def set_value(value)
      if value.class == String  ||value.class == Hash || value.class == Array
        return @j_del.setValue(::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling set_value(value)"
    end
    # @return [Object]
    def get_value
      ::Vertx::Util::Utils.from_object(@j_del.getValue)
    end
  end
end

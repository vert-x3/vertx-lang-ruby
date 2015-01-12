require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.GenericRefedInterface<T>
module Testmodel
  class GenericRefedInterface
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def set_value(value)
      if value != nil && (value.class == String  ||value.class == Hash || value.class == Array)
        return @j_del.setValue(Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_value()
      Vertx::Util::Utils.from_object(@j_del.getValue)
    end
  end
end

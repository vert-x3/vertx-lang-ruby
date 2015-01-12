require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.RefedInterface1
module Testmodel
  class RefedInterface1
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get_string()
      @j_del.getString
    end
    def set_string(str)
      if str.class == String
        @j_del.setString(str)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

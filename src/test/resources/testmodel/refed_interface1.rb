require 'vertx/util/utils.rb'
module Testmodel
  class RefedInterface1
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get_string()
      return @j_del.getString()
    end
    def set_string(str)
      if str != nil && str.class == String
        @j_del.setString(str)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

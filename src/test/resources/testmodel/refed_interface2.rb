require 'vertx/util/utils.rb'
module Testmodel
  module RefedInterface2
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

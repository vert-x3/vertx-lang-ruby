require 'vertx/util/utils.rb'
    # @param j_del [::Testmodel::RefedInterface1] the java delegate
    # @private
# Generated from io.vertx.codegen.testmodel.RefedInterface1
module Testmodel
  class RefedInterface1
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def get_string
      @j_del.getString
    end
    # THE METHOD DOC
    #
    # @param [String] str
    # return [self]
    def set_string(str)
      if str.class == String
        @j_del.setString(str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling set_string(str)"
    end
  end
end

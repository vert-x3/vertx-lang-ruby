require 'vertx/util/utils.rb'
    # @param j_del [::Testmodel::RefedInterface2] the java delegate
    # @private
# Generated from io.vertx.codegen.testmodel.RefedInterface2
module Testmodel
  module RefedInterface2
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
  class RefedInterface2Impl
    include RefedInterface2
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
  end
end

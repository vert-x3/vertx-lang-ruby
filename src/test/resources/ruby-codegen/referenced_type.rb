require 'vertx/util/utils.rb'
    # @param j_del [::RubyCodegen::ReferencedType] the java delegate
    # @private
# Generated from io.vertx.test.support.ReferencedType
module RubyCodegen
  class ReferencedType
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def some_method
      @j_del.someMethod
    end
  end
end

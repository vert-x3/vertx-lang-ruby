require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ReferencedType
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class ReferencedType
    # @private
    # @param j_del [::RubyCodegen::ReferencedType] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::ReferencedType] the underlying java delegate
    def j_del
      @j_del
    end
    # @return [String]
    def some_method
      if !block_given?
        return @j_del.java_method(:someMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling some_method()"
    end
  end
end

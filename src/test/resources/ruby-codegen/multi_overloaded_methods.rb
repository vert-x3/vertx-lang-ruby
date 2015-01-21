require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.MultiOverloadedMethods
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class MultiOverloadedMethods
    # @private
    # @param j_del [::RubyCodegen::MultiOverloadedMethods] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::MultiOverloadedMethods] the underlying java delegate
    def j_del
      @j_del
    end
    # @overload method()
    # @overload method(foo)
    #   @param [String] foo
    # @overload method(bar,juu)
    #   @param [Fixnum] bar
    #   @param [true,false] juu
    # return [void]
    def method(param_1=nil,param_2=nil)
      if param_1.class == String
        return @j_del.method(param_1)
      end
      if param_1.class == Fixnum
        if param_2.class == TrueClass || param_2.class == FalseClass
          return @j_del.method(param_1,param_2)
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling method(param_1,param_2)"
      end
      @j_del.method
    end
  end
end

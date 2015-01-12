require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.MultiOverloadedMethods
module RubyCodegen
  class MultiOverloadedMethods
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def method(param_1=nil,param_2=nil)
      if param_1.class == String
        return @j_del.method(param_1)
      end
      if param_1.class == Fixnum
        if param_2.class == TrueClass || param_2.class == FalseClass
          return @j_del.method(param_1,param_2)
        end
        raise ArgumentError, 'dispatch error'
      end
      @j_del.method
    end
  end
end

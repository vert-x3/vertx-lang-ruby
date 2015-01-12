require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.MethodWithClosure
module RubyCodegen
  class MethodWithClosure
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def do_something(s=nil,&callback)
      if s.class == String
        if callback.class == Proc
          return @j_del.doSomething(s,(Proc.new { |event| callback.call(event) }))
        end
        return @j_del.doSomething(s)
      end
      @j_del.doSomething
    end
  end
end

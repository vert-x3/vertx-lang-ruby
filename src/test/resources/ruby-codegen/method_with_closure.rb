require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.MethodWithClosure
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class MethodWithClosure
    # @private
    # @param j_del [::RubyCodegen::MethodWithClosure] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::MethodWithClosure] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [String] s
    # @param [Proc] callback
    # return [void]
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

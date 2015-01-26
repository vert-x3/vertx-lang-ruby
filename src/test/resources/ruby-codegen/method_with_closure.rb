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
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:doSomething,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,s,(Proc.new { |event| callback.call(event) }))
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:doSomething,Java::java.lang.String.java_class))).invoke(@j_del,s)
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:doSomething))).invoke(@j_del)
    end
  end
end

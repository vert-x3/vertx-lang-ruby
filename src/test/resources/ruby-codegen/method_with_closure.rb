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
    # @yield 
    # @return [void]
    def do_something(s=nil)
      if !block_given? && s == nil
        return @j_del.java_method(:doSomething, []).call()
      elsif s.class == String && !block_given?
        return @j_del.java_method(:doSomething, [Java::java.lang.String.java_class]).call(s)
      elsif s.class == String && block_given?
        return @j_del.java_method(:doSomething, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(s,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling do_something(s)"
    end
  end
end

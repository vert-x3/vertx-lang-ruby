require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.MethodWithClosure
module RubyCodegen
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      MethodWithClosure.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::MethodWithClosure.java_class
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

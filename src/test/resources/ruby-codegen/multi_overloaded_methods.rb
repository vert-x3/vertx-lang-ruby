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
    # @return [void]
    def method(param_1=nil,param_2=nil)
      if !block_given? && param_1 == nil && param_2 == nil
        return @j_del.java_method(:method, []).call()
      elsif param_1.class == String && !block_given? && param_2 == nil
        return @j_del.java_method(:method, [Java::java.lang.String.java_class]).call(param_1)
      elsif param_1.class == Fixnum && (param_2.class == TrueClass || param_2.class == FalseClass) && !block_given?
        return @j_del.java_method(:method, [Java::int.java_class,Java::boolean.java_class]).call(param_1,param_2)
      end
      raise ArgumentError, "Invalid arguments when calling method(param_1,param_2)"
    end
    # @overload optionalHandler(foo,bar)
    #   @param [String] foo
    #   @yield 
    # @overload optionalHandler(foo,bar)
    #   @param [String] foo
    #   @param [Fixnum] bar
    # @overload optionalHandler(foo,juu)
    #   @param [String] foo
    #   @param [true,false] juu
    # @return [void]
    def optional_handler(param_1=nil,param_2=nil)
      if param_1.class == String && block_given? && param_2 == nil
        return @j_del.java_method(:optionalHandler, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(event) }))
      elsif param_1.class == String && param_2.class == Fixnum && !block_given?
        return @j_del.java_method(:optionalHandler, [Java::java.lang.String.java_class,Java::int.java_class]).call(param_1,param_2)
      elsif param_1.class == String && (param_2.class == TrueClass || param_2.class == FalseClass) && !block_given?
        return @j_del.java_method(:optionalHandler, [Java::java.lang.String.java_class,Java::boolean.java_class]).call(param_1,param_2)
      end
      raise ArgumentError, "Invalid arguments when calling optional_handler(param_1,param_2)"
    end
    # @param [Proc] foo
    # @param [Proc] bar
    # @yield 
    # @return [void]
    def handlers(foo=nil,bar=nil)
      if block_given? && foo == nil && bar == nil
        return @j_del.java_method(:handlers, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
      elsif foo.class == Proc && block_given? && bar == nil
        return @j_del.java_method(:handlers, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| foo.call(event) }),(Proc.new { |event| yield(event) }))
      elsif foo.class == Proc && bar.class == Proc && block_given?
        return @j_del.java_method(:handlers, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| foo.call(event) }),(Proc.new { |event| bar.call(event) }),(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling handlers(foo,bar)"
    end
  end
end

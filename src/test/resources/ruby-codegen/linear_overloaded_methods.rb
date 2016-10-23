require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.LinearOverloadedMethods
module RubyCodegen
  class LinearOverloadedMethods
    # @private
    # @param j_del [::RubyCodegen::LinearOverloadedMethods] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::LinearOverloadedMethods] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      LinearOverloadedMethods.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::LinearOverloadedMethods.java_class
    end
    # @param [String] foo 
    # @param [String] bar 
    # @param [String] juu 
    # @param [String] daa 
    # @return [void]
    def method(foo=nil,bar=nil,juu=nil,daa=nil)
      if !block_given? && foo == nil && bar == nil && juu == nil && daa == nil
        return @j_del.java_method(:method, []).call()
      elsif foo.class == String && !block_given? && bar == nil && juu == nil && daa == nil
        return @j_del.java_method(:method, [Java::java.lang.String.java_class]).call(foo)
      elsif foo.class == String && bar.class == String && juu.class == String && !block_given? && daa == nil
        return @j_del.java_method(:method, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(foo,bar,juu)
      elsif foo.class == String && bar.class == String && juu.class == String && daa.class == String && !block_given?
        return @j_del.java_method(:method, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(foo,bar,juu,daa)
      end
      raise ArgumentError, "Invalid arguments when calling method(foo,bar,juu,daa)"
    end
  end
end

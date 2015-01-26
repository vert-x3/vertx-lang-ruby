require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.LinearOverloadedMethods
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
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
    # @param [String] foo
    # @param [String] bar
    # @param [String] juu
    # @param [String] daa
    # return [void]
    def method(foo=nil,bar=nil,juu=nil,daa=nil)
      if foo.class == String
        if bar.class == String
          if juu.class == String
            if daa.class == String
              return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:method,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,foo,bar,juu,daa)
            end
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:method,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,foo,bar,juu)
          end
          raise ArgumentError, "Invalid argument juu=#{juu} when calling method(foo,bar,juu,daa)"
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:method,Java::java.lang.String.java_class))).invoke(@j_del,foo)
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:method))).invoke(@j_del)
    end
  end
end

require 'ruby-codegen/mixin'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ClassWithMixin
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class ClassWithMixin
    include ::RubyCodegen::Mixin
    # @private
    # @param j_del [::RubyCodegen::ClassWithMixin] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::ClassWithMixin] the underlying java delegate
    def j_del
      @j_del
    end
    # @return [void]
    def super_mixin_method
      if !block_given?
        return @j_del.java_method(:superMixinMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling super_mixin_method()"
    end
    # @return [void]
    def mixin_method
      if !block_given?
        return @j_del.java_method(:mixinMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling mixin_method()"
    end
  end
end

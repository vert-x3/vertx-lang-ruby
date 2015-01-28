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
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:superMixinMethod))).invoke(@j_del)
    end
    # @return [void]
    def mixin_method
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:mixinMethod))).invoke(@j_del)
    end
  end
end

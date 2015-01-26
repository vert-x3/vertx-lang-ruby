require 'ruby-codegen/super_mixin'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.Mixin
module RubyCodegen
  module Mixin
    include ::RubyCodegen::SuperMixin
    # return [void]
    def super_mixin_method
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:superMixinMethod))).invoke(@j_del)
    end
    # return [void]
    def mixin_method
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:mixinMethod))).invoke(@j_del)
    end
  end
  class MixinImpl
    include Mixin
    # @private
    # @param j_del [::RubyCodegen::Mixin] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::Mixin] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

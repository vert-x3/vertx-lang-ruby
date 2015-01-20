require 'ruby-codegen/mixin'
require 'vertx/util/utils.rb'
    # @param j_del [::RubyCodegen::ClassWithMixin] the java delegate
    # @private
# Generated from io.vertx.test.support.ClassWithMixin
module RubyCodegen
  class ClassWithMixin
    include ::RubyCodegen::Mixin
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # return [void]
    def super_mixin_method
      @j_del.superMixinMethod
    end
    # THE METHOD DOC
    #
    # return [void]
    def mixin_method
      @j_del.mixinMethod
    end
  end
end

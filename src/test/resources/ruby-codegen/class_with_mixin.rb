require 'ruby-codegen/mixin'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ClassWithMixin
module RubyCodegen
  class ClassWithMixin
    include RubyCodegen::Mixin
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def super_mixin_method()
      @j_del.superMixinMethod
    end
    def mixin_method()
      @j_del.mixinMethod
    end
  end
end

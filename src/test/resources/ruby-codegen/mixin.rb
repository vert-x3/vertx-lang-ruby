include_class 'io.vertx.test.support.SuperMixin'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.Mixin
module RubyCodegen
  module Mixin
    include RubyCodegen::SuperMixin
    def super_mixin_method()
      return @j_del.superMixinMethod()
    end
    def mixin_method()
      return @j_del.mixinMethod()
    end
  end
  class MixinImpl
    include Mixin
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
  end
end

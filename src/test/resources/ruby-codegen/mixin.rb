require 'ruby-codegen/super_mixin'
require 'vertx/util/utils.rb'
    # @param j_del [::RubyCodegen::Mixin] the java delegate
    # @private
# Generated from io.vertx.test.support.Mixin
module RubyCodegen
  module Mixin
    include ::RubyCodegen::SuperMixin
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

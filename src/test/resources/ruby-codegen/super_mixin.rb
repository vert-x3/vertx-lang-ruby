require 'vertx/util/utils.rb'
    # @param j_del [::RubyCodegen::SuperMixin] the java delegate
    # @private
# Generated from io.vertx.test.support.SuperMixin
module RubyCodegen
  module SuperMixin
    # THE METHOD DOC
    #
    # return [void]
    def super_mixin_method
      @j_del.superMixinMethod
    end
  end
  class SuperMixinImpl
    include SuperMixin
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
  end
end

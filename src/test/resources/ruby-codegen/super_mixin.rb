require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.SuperMixin
module RubyCodegen
  module SuperMixin
    # @return [void]
    def super_mixin_method
      if !block_given?
        return @j_del.java_method(:superMixinMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling super_mixin_method()"
    end
  end
  class SuperMixinImpl
    include SuperMixin
    # @private
    # @param j_del [::RubyCodegen::SuperMixin] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::SuperMixin] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

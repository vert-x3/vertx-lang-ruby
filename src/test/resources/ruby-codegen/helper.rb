require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.Helper
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class Helper
    # @private
    # @param j_del [::RubyCodegen::Helper] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::Helper] the underlying java delegate
    def j_del
      @j_del
    end
    # @return [::Vertx::MultiMap]
    def self.get_multi_map
      if !block_given?
        return ::Vertx::MultiMap.new(Java::IoVertxTestSupport::Helper.java_method(:getMultiMap, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_multi_map()"
    end
  end
end

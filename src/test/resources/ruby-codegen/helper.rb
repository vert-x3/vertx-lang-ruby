require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.Helper
module RubyCodegen
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == Helper
    end
    def @@j_api_type.wrap(obj)
      Helper.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::Helper.java_class
    end
    # @return [::Vertx::MultiMap]
    def self.get_multi_map
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxTestSupport::Helper.java_method(:getMultiMap, []).call(),::Vertx::MultiMap)
      end
      raise ArgumentError, "Invalid arguments when calling get_multi_map()"
    end
  end
end

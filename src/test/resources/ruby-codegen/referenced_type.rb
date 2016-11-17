require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ReferencedType
module RubyCodegen
  class ReferencedType
    # @private
    # @param j_del [::RubyCodegen::ReferencedType] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::ReferencedType] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == ReferencedType
    end
    def @@j_api_type.wrap(obj)
      ReferencedType.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::ReferencedType.java_class
    end
    # @return [String]
    def some_method
      if !block_given?
        return @j_del.java_method(:someMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling some_method()"
    end
  end
end

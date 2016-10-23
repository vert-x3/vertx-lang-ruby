require 'ruby-codegen/referenced_type'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ReferencingType
module RubyCodegen
  class ReferencingType
    # @private
    # @param j_del [::RubyCodegen::ReferencingType] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::ReferencingType] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      ReferencingType.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::ReferencingType.java_class
    end
    # @return [::RubyCodegen::ReferencedType]
    def get_referenced
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:getReferenced, []).call(),::RubyCodegen::ReferencedType)
      end
      raise ArgumentError, "Invalid arguments when calling get_referenced()"
    end
  end
end

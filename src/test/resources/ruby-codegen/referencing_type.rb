require 'ruby-codegen/referenced_type'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ReferencingType
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
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
    # @return [::RubyCodegen::ReferencedType]
    def get_referenced
      if !block_given?
        return ::RubyCodegen::ReferencedType.new(@j_del.java_method(:getReferenced, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_referenced()"
    end
  end
end

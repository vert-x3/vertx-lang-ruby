require 'ruby-codegen/referenced_type'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ReferencingType
module RubyCodegen
  class ReferencingType
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get_referenced()
      RubyCodegen::ReferencedType.new(@j_del.getReferenced)
    end
  end
end

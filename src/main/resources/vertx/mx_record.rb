require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.MxRecord
module Vertx
  class MxRecord
    # @private
    # @param j_del [::Vertx::MxRecord] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MxRecord] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def priority
      @j_del.priority
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def name
      @j_del.name
    end
  end
end

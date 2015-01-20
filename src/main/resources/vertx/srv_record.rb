require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.SrvRecord
module Vertx
  class SrvRecord
    # @private
    # @param j_del [::Vertx::SrvRecord] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::SrvRecord] the underlying java delegate
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
    # @return [Fixnum]: the return value (todo)
    def weight
      @j_del.weight
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def port
      @j_del.port
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def name
      @j_del.name
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def protocol
      @j_del.protocol
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def service
      @j_del.service
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def target
      @j_del.target
    end
  end
end

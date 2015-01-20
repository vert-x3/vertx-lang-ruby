require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.SocketAddress
module Vertx
  class SocketAddress
    # @private
    # @param j_del [::Vertx::SocketAddress] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::SocketAddress] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def host_address
      @j_del.hostAddress
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def host_port
      @j_del.hostPort
    end
  end
end

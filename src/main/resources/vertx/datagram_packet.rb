require 'vertx/buffer'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramPacket
module Vertx
  class DatagramPacket
    # @private
    # @param j_del [::Vertx::DatagramPacket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::DatagramPacket] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::SocketAddress]: the return value (todo)
    def sender
      ::Vertx::SocketAddress.new(@j_del.sender)
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::Buffer]: the return value (todo)
    def data
      ::Vertx::Buffer.new(@j_del.data)
    end
  end
end

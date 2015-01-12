require 'vertx/buffer'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramPacket
module Vertx
  class DatagramPacket
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def sender()
      Vertx::SocketAddress.new(@j_del.sender)
    end
    def data()
      Vertx::Buffer.new(@j_del.data)
    end
  end
end

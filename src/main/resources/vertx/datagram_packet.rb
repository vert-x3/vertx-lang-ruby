include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.net.SocketAddress'
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
      return Vertx::SocketAddress.new(@j_del.sender())
    end
    def data()
      return Vertx::Buffer.new(@j_del.data())
    end
  end
end

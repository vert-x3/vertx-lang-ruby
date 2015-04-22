require 'vertx/buffer'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramPacket
module Vertx
  #  A received datagram packet (UDP) which contains the data and information about the sender of the data itself.
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
    #  Returns the {::Vertx::SocketAddress} of the sender that sent
    #  this {::Vertx::DatagramPacket}.
    # @return [::Vertx::SocketAddress] the address of the sender
    def sender
      if !block_given?
        return ::Vertx::SocketAddress.new(@j_del.java_method(:sender, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling sender()"
    end
    #  Returns the data of the {::Vertx::DatagramPacket}
    # @return [::Vertx::Buffer] the data
    def data
      if !block_given?
        return ::Vertx::Buffer.new(@j_del.java_method(:data, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling data()"
    end
  end
end

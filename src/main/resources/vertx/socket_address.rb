require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.SocketAddress
module Vertx
  #  The address of a socket
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
    # @return [String]
    def host
      if !block_given?
        return @j_del.java_method(:host, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling host()"
    end
    # @return [Fixnum]
    def port
      if !block_given?
        return @j_del.java_method(:port, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling port()"
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.SocketAddress
module Vertx
  class SocketAddress
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def host_address()
      return @j_del.hostAddress()
    end
    def host_port()
      return @j_del.hostPort()
    end
  end
end

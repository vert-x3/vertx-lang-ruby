require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.SocketAddress
module Vertx
  #  @author <a href="http://tfox.org">Tim Fox</a>
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
    def host_address
      @j_del.hostAddress
    end
    # @return [Fixnum]
    def host_port
      @j_del.hostPort
    end
  end
end

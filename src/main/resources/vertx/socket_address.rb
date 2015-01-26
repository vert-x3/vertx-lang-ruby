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
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:hostAddress))).invoke(@j_del)
    end
    # @return [Fixnum]
    def host_port
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:hostPort))).invoke(@j_del)
    end
  end
end

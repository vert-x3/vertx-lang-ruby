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
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:host))).invoke(@j_del)
    end
    # @return [Fixnum]
    def port
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:port))).invoke(@j_del)
    end
  end
end

require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetClient
module Vertx
  #  A TCP client.
  #  <p>
  #  Multiple connections to different servers can be made using the same instance.
  #  <p>
  #  This client supports a configurable number of connection attempts and a configurable
  #  delay between attempts.
  class NetClient
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::NetClient] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::NetClient] the underlying java delegate
    def j_del
      @j_del
    end
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isMetricsEnabled))).invoke(@j_del)
    end
    #  Open a connection to a server at the specific <code>port</code> and <code>host</code>.
    #  <p>
    #  <code>host</code> can be a valid host name or IP address. The connect is done asynchronously and on success, a
    #  {::Vertx::NetSocket} instance is supplied via the <code>connectHandler</code> instance
    # @param [Fixnum] port the port
    # @param [String] host the host
    # @param [Proc] connectHandler
    # @return [self]
    def connect(port,host,&connectHandler)
      if port.class == Fixnum
        if host.class == String
          if connectHandler.class == Proc
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connect,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,port,host,(Proc.new { |ar| connectHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument connectHandler=#{connectHandler} when calling connect(port,host,connectHandler)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling connect(port,host,connectHandler)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling connect(port,host,connectHandler)"
    end
    #  Close the client.
    #  <p>
    #  Any sockets which have not been closed manually will be closed here. The close is asynchronous and may not
    #  complete until some time after the method has returned.
    # @return [void]
    def close
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
  end
end

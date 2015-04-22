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
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Open a connection to a server at the specific <code>port</code> and <code>host</code>.
    #  <p>
    #  <code>host</code> can be a valid host name or IP address. The connect is done asynchronously and on success, a
    #  {::Vertx::NetSocket} instance is supplied via the <code>connectHandler</code> instance
    # @param [Fixnum] port the port
    # @param [String] host the host
    # @yield 
    # @return [self]
    def connect(port=nil,host=nil)
      if port.class == Fixnum && host.class == String && block_given?
        @j_del.java_method(:connect, [Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(port,host,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetSocket.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling connect(port,host)"
    end
    #  Close the client.
    #  <p>
    #  Any sockets which have not been closed manually will be closed here. The close is asynchronous and may not
    #  complete until some time after the method has returned.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end

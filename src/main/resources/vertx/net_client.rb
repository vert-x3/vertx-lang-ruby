require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetClient
module Vertx
  #  A TCP/SSL client.<p>
  #  Multiple connections to different servers can be made using the same instance.<p>
  #  This client supports a configurable number of connection attempts and a configurable
  #  delay between attempts.<p>
  #  If an instance is instantiated from an event loop then the handlers
  #  of the instance will always be called on that same event loop.
  #  If an instance is instantiated from some other arbitrary Java thread (i.e. when using embedded) then
  #  an event loop will be assigned to the instance and used when any of its handlers
  #  are called.<p>
  #  Instances of this class are thread-safe.<p>
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
    #  The metric base name
    # @return [String]
    def metric_base_name
      @j_del.metricBaseName
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Attempt to open a connection to a server at the specific <code>port</code> and <code>host</code>.
    #  <code>host</code> can be a valid host name or IP address. The connect is done asynchronously and on success, a
    #  {::Vertx::NetSocket} instance is supplied via the <code>connectHandler</code> instance
    # @param [Fixnum] port
    # @param [String] host
    # @param [Proc] connectHandler
    # return [self]
    def connect(port,host,&connectHandler)
      if port.class == Fixnum
        if host.class == String
          if connectHandler.class == Proc
            @j_del.connect(port,host,(Proc.new { |ar| connectHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument connectHandler=#{connectHandler} when calling connect(port,host,connectHandler)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling connect(port,host,connectHandler)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling connect(port,host,connectHandler)"
    end
    #  Close the client. Any sockets which have not been closed manually will be closed here.
    # return [void]
    def close
      @j_del.close
    end
  end
end

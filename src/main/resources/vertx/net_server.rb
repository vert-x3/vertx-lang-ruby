require 'vertx/net_socket_stream'
require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetServer
module Vertx
  #  Represents a TCP or SSL server<p>
  #  If an instance is instantiated from an event loop then the handlers
  #  of the instance will always be called on that same event loop.
  #  If an instance is instantiated from some other arbitrary Java thread (i.e. when running embedded) then
  #  and event loop will be assigned to the instance and used when any of its handlers
  #  are called.<p>
  #  Instances of this class are thread-safe.<p>
  class NetServer
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::NetServer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::NetServer] the underlying java delegate
    def j_del
      @j_del
    end
    #  The metric base name
    # @return [String]
    def metric_base_name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metricBaseName))).invoke(@j_del)
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metrics))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Return the connect stream for this server. The server can only have at most one handler at any one time.
    #  As the server accepts TCP or SSL connections it creates an instance of {::Vertx::NetSocket} and passes it to the
    #  connect stream .
    # @return [::Vertx::NetSocketStream]
    def connect_stream
      ::Vertx::NetSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectStream))).invoke(@j_del))
    end
    #  Supply a connect handler for this server. The server can only have at most one connect handler at any one time.
    #  As the server accepts TCP or SSL connections it creates an instance of {::Vertx::NetSocket} and passes it to the
    #  connect handler.
    # @param [Proc] handler
    # @return [::Vertx::NetServer]
    def connect_handler(&handler)
      if handler.class == Proc
        return ::Vertx::NetServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::NetSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling connect_handler(handler)"
    end
    #  Instruct the server to listen for incoming connections on the specified <code>port</code> and all available interfaces.
    # @param [Proc] listenHandler
    # return [self]
    def listen(&listenHandler)
      if listenHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listenHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
        return self
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen))).invoke(@j_del)
      self
    end
    #  Close the server. This will close any currently open connections. The event handler <code>done</code> will be called
    #  when the close is complete.
    # @param [Proc] completionHandler
    # return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  The actual port the server is listening on. This is useful if you bound the server specifying 0 as port number
    #  signifying an ephemeral port
    # @return [Fixnum]
    def actual_port
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:actualPort))).invoke(@j_del)
    end
  end
end

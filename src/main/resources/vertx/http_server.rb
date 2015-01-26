require 'vertx/http_server_request'
require 'vertx/server_web_socket'
require 'vertx/measured'
require 'vertx/http_server_request_stream'
require 'vertx/server_web_socket_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServer
module Vertx
  #  An HTTP and WebSockets server<p>
  #  If an instance is instantiated from an event loop then the handlers
  #  of the instance will always be called on that same event loop.
  #  If an instance is instantiated from some other arbitrary Java thread then
  #  an event loop will be assigned to the instance and used when any of its handlers
  #  are called.<p>
  #  Instances of HttpServer are thread-safe.<p>
  class HttpServer
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::HttpServer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpServer] the underlying java delegate
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
    #  Return the request stream for the server. As HTTP requests are received by the server,
    #  instances of {::Vertx::HttpServerRequest} will be created and passed to this stream {::Vertx::ReadStream#handler}.
    # @return [::Vertx::HttpServerRequestStream]
    def request_stream
      ::Vertx::HttpServerRequestStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:requestStream))).invoke(@j_del))
    end
    #  Set the request handler for the server to <code>requestHandler</code>. As HTTP requests are received by the server,
    #  instances of {::Vertx::HttpServerRequest} will be created and passed to this handler.
    # @param [Proc] handler
    # @return [::Vertx::HttpServer]
    def request_handler(&handler)
      if handler.class == Proc
        return ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:requestHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::HttpServerRequest.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling request_handler(handler)"
    end
    #  Return the websocket stream for the server. If a websocket connect handshake is successful a
    #  new {::Vertx::ServerWebSocket} instance will be created and passed to this stream {::Vertx::ReadStream#handler}.
    # @return [::Vertx::ServerWebSocketStream]
    def websocket_stream
      ::Vertx::ServerWebSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocketStream))).invoke(@j_del))
    end
    #  Set the websocket handler for the server to <code>wsHandler</code>. If a websocket connect handshake is successful a
    #  new {::Vertx::ServerWebSocket} instance will be created and passed to the handler.
    # @param [Proc] handler
    # @return [::Vertx::HttpServer]
    def websocket_handler(&handler)
      if handler.class == Proc
        return ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocketHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::ServerWebSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling websocket_handler(handler)"
    end
    # @param [Proc] listenHandler
    # return [self]
    def listen(&listenHandler)
      if listenHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listenHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen))).invoke(@j_del)
      self
    end
    #  Close the server. Any open HTTP connections will be closed. The <code>completionHandler</code> will be called when the close
    #  is complete.
    # @param [Proc] completionHandler
    # return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
  end
end

require 'vertx/http_server_request'
require 'vertx/server_web_socket'
require 'vertx/measured'
require 'vertx/http_server_request_stream'
require 'vertx/server_web_socket_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServer
module Vertx
  #  An HTTP and WebSockets server.
  #  <p>
  #  You receive HTTP requests by providing a {::Vertx::HttpServer#request_handler}. As requests arrive on the server the handler
  #  will be called with the requests.
  #  <p>
  #  You receive WebSockets by providing a {::Vertx::HttpServer#websocket_handler}. As WebSocket connections arrive on the server, the
  #  WebSocket is passed to the handler.
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
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isMetricsEnabled))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Return the request stream for the server. As HTTP requests are received by the server,
    #  instances of {::Vertx::HttpServerRequest} will be created and passed to the stream {::Vertx::ReadStream#handler}.
    # @return [::Vertx::HttpServerRequestStream] the request stream
    def request_stream
      if !block_given?
        return ::Vertx::HttpServerRequestStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:requestStream))).invoke(@j_del))
      end
      raise ArgumentError, "Invalid arguments when calling request_stream()"
    end
    #  Set the request handler for the server to <code>requestHandler</code>. As HTTP requests are received by the server,
    #  instances of {::Vertx::HttpServerRequest} will be created and passed to this handler.
    # @yield 
    # @return [::Vertx::HttpServer] a reference to this, so the API can be used fluently
    def request_handler
      if block_given?
        return ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:requestHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(::Vertx::HttpServerRequest.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling request_handler()"
    end
    #  Return the websocket stream for the server. If a websocket connect handshake is successful a
    #  new {::Vertx::ServerWebSocket} instance will be created and passed to the stream {::Vertx::ReadStream#handler}.
    # @return [::Vertx::ServerWebSocketStream] the websocket stream
    def websocket_stream
      if !block_given?
        return ::Vertx::ServerWebSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocketStream))).invoke(@j_del))
      end
      raise ArgumentError, "Invalid arguments when calling websocket_stream()"
    end
    #  Set the websocket handler for the server to <code>wsHandler</code>. If a websocket connect handshake is successful a
    #  new {::Vertx::ServerWebSocket} instance will be created and passed to the handler.
    # @yield 
    # @return [::Vertx::HttpServer] a reference to this, so the API can be used fluently
    def websocket_handler
      if block_given?
        return ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocketHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(::Vertx::ServerWebSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling websocket_handler()"
    end
    #  Like {::Vertx::HttpServer#listen} but supplying a handler that will be called when the server is actually
    #  listening (or has failed).
    # @param [Fixnum] port the port to listen on
    # @param [String] host the host to listen on
    # @yield the listen handler
    # @return [self]
    def listen(port=nil,host=nil)
      if !block_given? && port == nil && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen))).invoke(@j_del)
        return self
      elsif port.class == Fixnum && !block_given? && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class))).invoke(@j_del,port)
        return self
      elsif block_given? && port == nil && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      elsif port.class == Fixnum && host.class == String && !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host)
        return self
      elsif port.class == Fixnum && block_given? && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,port,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      elsif port.class == Fixnum && host.class == String && block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,port,host,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling listen(port,host)"
    end
    #  Like {::Vertx::HttpServer#close} but supplying a handler that will be called when the server is actually closed (or has failed).
    # @yield the handler
    # @return [void]
    def close
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
      elsif block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end

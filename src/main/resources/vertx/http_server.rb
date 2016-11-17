require 'vertx/http_server_request'
require 'vertx/server_web_socket'
require 'vertx/measured'
require 'vertx/http_server_request_stream'
require 'vertx/http_connection'
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == HttpServer
    end
    def @@j_api_type.wrap(obj)
      HttpServer.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreHttp::HttpServer.java_class
    end
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def metrics_enabled?
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling metrics_enabled?()"
    end
    #  Return the request stream for the server. As HTTP requests are received by the server,
    #  instances of {::Vertx::HttpServerRequest} will be created and passed to the stream .
    # @return [::Vertx::HttpServerRequestStream] the request stream
    def request_stream
      if !block_given?
        if @cached_request_stream != nil
          return @cached_request_stream
        end
        return @cached_request_stream = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:requestStream, []).call(),::Vertx::HttpServerRequestStream)
      end
      raise ArgumentError, "Invalid arguments when calling request_stream()"
    end
    #  Set the request handler for the server to <code>requestHandler</code>. As HTTP requests are received by the server,
    #  instances of {::Vertx::HttpServerRequest} will be created and passed to this handler.
    # @yield 
    # @return [self]
    def request_handler
      if block_given?
        @j_del.java_method(:requestHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::HttpServerRequest)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling request_handler()"
    end
    #  Set a connection handler for the server.
    # @yield 
    # @return [self]
    def connection_handler
      if block_given?
        @j_del.java_method(:connectionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::HttpConnection)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling connection_handler()"
    end
    #  Return the websocket stream for the server. If a websocket connect handshake is successful a
    #  new {::Vertx::ServerWebSocket} instance will be created and passed to the stream .
    # @return [::Vertx::ServerWebSocketStream] the websocket stream
    def websocket_stream
      if !block_given?
        if @cached_websocket_stream != nil
          return @cached_websocket_stream
        end
        return @cached_websocket_stream = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:websocketStream, []).call(),::Vertx::ServerWebSocketStream)
      end
      raise ArgumentError, "Invalid arguments when calling websocket_stream()"
    end
    #  Set the websocket handler for the server to <code>wsHandler</code>. If a websocket connect handshake is successful a
    #  new {::Vertx::ServerWebSocket} instance will be created and passed to the handler.
    # @yield 
    # @return [self]
    def websocket_handler
      if block_given?
        @j_del.java_method(:websocketHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::ServerWebSocket)) }))
        return self
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
        @j_del.java_method(:listen, []).call()
        return self
      elsif port.class == Fixnum && !block_given? && host == nil
        @j_del.java_method(:listen, [Java::int.java_class]).call(port)
        return self
      elsif block_given? && port == nil && host == nil
        @j_del.java_method(:listen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::HttpServer) : nil) }))
        return self
      elsif port.class == Fixnum && host.class == String && !block_given?
        @j_del.java_method(:listen, [Java::int.java_class,Java::java.lang.String.java_class]).call(port,host)
        return self
      elsif port.class == Fixnum && block_given? && host == nil
        @j_del.java_method(:listen, [Java::int.java_class,Java::IoVertxCore::Handler.java_class]).call(port,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::HttpServer) : nil) }))
        return self
      elsif port.class == Fixnum && host.class == String && block_given?
        @j_del.java_method(:listen, [Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(port,host,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::HttpServer) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling listen(#{port},#{host})"
    end
    #  Like {::Vertx::HttpServer#close} but supplying a handler that will be called when the server is actually closed (or has failed).
    # @yield the handler
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      elsif block_given?
        return @j_del.java_method(:close, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  The actual port the server is listening on. This is useful if you bound the server specifying 0 as port number
    #  signifying an ephemeral port
    # @return [Fixnum] the actual port the server is listening on.
    def actual_port
      if !block_given?
        return @j_del.java_method(:actualPort, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling actual_port()"
    end
  end
end

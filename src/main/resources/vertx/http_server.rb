include_class 'io.vertx.core.http.HttpServerRequest'
include_class 'io.vertx.core.http.ServerWebSocket'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.http.HttpServerRequestStream'
include_class 'io.vertx.core.http.ServerWebSocketStream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServer
module Vertx
  class HttpServer
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return nil
    end
    def request_stream()
      return Vertx::HttpServerRequestStream.new(@j_del.requestStream())
    end
    def request_handler(handler)
      if handler != nil && handler.class == Proc
        return Vertx::HttpServer.new(@j_del.requestHandler((Proc.new { |event| handler.call(Vertx::HttpServerRequest.new(event)) })))
      end
      raise ArgumentError, 'dispatch error'
    end
    def websocket_stream()
      return Vertx::ServerWebSocketStream.new(@j_del.websocketStream())
    end
    def websocket_handler(handler)
      if handler != nil && handler.class == Proc
        return Vertx::HttpServer.new(@j_del.websocketHandler((Proc.new { |event| handler.call(Vertx::ServerWebSocket.new(event)) })))
      end
      raise ArgumentError, 'dispatch error'
    end
    def listen(listen_handler=nil)
      if listen_handler != nil && listen_handler.class == Proc
        @j_del.listen((Proc.new { |ar| listen_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      end
      @j_del.listen()
      return self
    end
    def close(completion_handler=nil)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.close(nil)
      end
      return @j_del.close()
    end
  end
end

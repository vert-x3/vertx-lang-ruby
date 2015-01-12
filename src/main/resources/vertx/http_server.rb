require 'vertx/http_server_request'
require 'vertx/server_web_socket'
require 'vertx/measured'
require 'vertx/http_server_request_stream'
require 'vertx/server_web_socket_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServer
module Vertx
  class HttpServer
    include Vertx::Measured
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      @j_del.metricBaseName
    end
    def metrics()
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
    end
    def request_stream()
      Vertx::HttpServerRequestStream.new(@j_del.requestStream)
    end
    def request_handler(&handler)
      if handler.class == Proc
        return Vertx::HttpServer.new(@j_del.requestHandler((Proc.new { |event| handler.call(Vertx::HttpServerRequest.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling request_handler(handler)"
    end
    def websocket_stream()
      Vertx::ServerWebSocketStream.new(@j_del.websocketStream)
    end
    def websocket_handler(&handler)
      if handler.class == Proc
        return Vertx::HttpServer.new(@j_del.websocketHandler((Proc.new { |event| handler.call(Vertx::ServerWebSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling websocket_handler(handler)"
    end
    def listen(&listenHandler)
      if listenHandler.class == Proc
        @j_del.listen((Proc.new { |ar| listenHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      end
      @j_del.listen
      self
    end
    def close(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.close((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
  end
end

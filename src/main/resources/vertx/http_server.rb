require 'vertx/http_server_request'
require 'vertx/server_web_socket'
require 'vertx/measured'
require 'vertx/http_server_request_stream'
require 'vertx/server_web_socket_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServer
module Vertx
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
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def metric_base_name
      @j_del.metricBaseName
    end
    # THE METHOD DOC
    #
    # @return [Hash{String => Hash{String => Object}}]: the return value (todo)
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::HttpServerRequestStream]: the return value (todo)
    def request_stream
      ::Vertx::HttpServerRequestStream.new(@j_del.requestStream)
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # @return [::Vertx::HttpServer]: the return value (todo)
    def request_handler(&handler)
      if handler.class == Proc
        return ::Vertx::HttpServer.new(@j_del.requestHandler((Proc.new { |event| handler.call(::Vertx::HttpServerRequest.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling request_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::ServerWebSocketStream]: the return value (todo)
    def websocket_stream
      ::Vertx::ServerWebSocketStream.new(@j_del.websocketStream)
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # @return [::Vertx::HttpServer]: the return value (todo)
    def websocket_handler(&handler)
      if handler.class == Proc
        return ::Vertx::HttpServer.new(@j_del.websocketHandler((Proc.new { |event| handler.call(::Vertx::ServerWebSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling websocket_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] listenHandler
    # return [self]
    def listen(&listenHandler)
      if listenHandler.class == Proc
        @j_del.listen((Proc.new { |ar| listenHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::HttpServer.new(ar.result) : nil) }))
        return self
      end
      @j_del.listen
      self
    end
    # THE METHOD DOC
    #
    # @param [Proc] completionHandler
    # return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.close((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
  end
end

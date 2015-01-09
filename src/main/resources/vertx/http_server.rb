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
      return HttpServerRequestStream.new(@j_del.requestStream())
    end
    def request_handler(handler)
      if handler != nil && handler.class == Proc
        return HttpServer.new(@j_del.requestHandler(nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def websocket_stream()
      return ServerWebSocketStream.new(@j_del.websocketStream())
    end
    def websocket_handler(handler)
      if handler != nil && handler.class == Proc
        return HttpServer.new(@j_del.websocketHandler(nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def listen(listen_handler=nil)
      if listen_handler != nil && listen_handler.class == Proc
        @j_del.listen(nil)
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

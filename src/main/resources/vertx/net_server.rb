include_class 'io.vertx.core.net.NetSocketStream'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.net.NetSocket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetServer
module Vertx
  class NetServer
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
    def connect_stream()
      return Vertx::NetSocketStream.new(@j_del.connectStream())
    end
    def connect_handler(handler)
      if handler != nil && handler.class == Proc
        return Vertx::NetServer.new(@j_del.connectHandler((Proc.new { |event| handler.call(Vertx::NetSocket.new(event)) })))
      end
      raise ArgumentError, 'dispatch error'
    end
    def listen(listen_handler=nil)
      if listen_handler != nil && listen_handler.class == Proc
        @j_del.listen((Proc.new { |ar| listen_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::NetServer.new(ar.result) : nil) }))
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
    def actual_port()
      return @j_del.actualPort()
    end
  end
end

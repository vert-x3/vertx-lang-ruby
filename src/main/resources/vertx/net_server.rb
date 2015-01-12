require 'vertx/net_socket_stream'
require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetServer
module Vertx
  class NetServer
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
    def connect_stream()
      Vertx::NetSocketStream.new(@j_del.connectStream)
    end
    def connect_handler(&handler)
      if handler != nil && handler.class == Proc
        return Vertx::NetServer.new(@j_del.connectHandler((Proc.new { |event| handler.call(Vertx::NetSocket.new(event)) })))
      end
      raise ArgumentError, 'dispatch error'
    end
    def listen(&listenHandler)
      if listenHandler != nil && listenHandler.class == Proc
        @j_del.listen((Proc.new { |ar| listenHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::NetServer.new(ar.result) : nil) }))
        return self
      end
      @j_del.listen
      self
    end
    def close(&completionHandler)
      if completionHandler != nil && completionHandler.class == Proc
        return @j_del.close((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
    def actual_port()
      @j_del.actualPort
    end
  end
end

require 'vertx/net_socket_stream'
require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetServer
module Vertx
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
    # @return [::Vertx::NetSocketStream]: the return value (todo)
    def connect_stream
      ::Vertx::NetSocketStream.new(@j_del.connectStream)
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # @return [::Vertx::NetServer]: the return value (todo)
    def connect_handler(&handler)
      if handler.class == Proc
        return ::Vertx::NetServer.new(@j_del.connectHandler((Proc.new { |event| handler.call(::Vertx::NetSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling connect_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] listenHandler
    # return [self]
    def listen(&listenHandler)
      if listenHandler.class == Proc
        @j_del.listen((Proc.new { |ar| listenHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
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
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def actual_port
      @j_del.actualPort
    end
  end
end

require 'vertx/read_stream'
require 'vertx/web_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketStream
module Vertx
  class WebSocketStream
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::WebSocketStream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WebSocketStream] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::WebSocket.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # THE METHOD DOC
    #
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # THE METHOD DOC
    #
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # THE METHOD DOC
    #
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
  end
end

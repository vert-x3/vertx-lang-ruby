require 'vertx/web_socket_base'
require 'vertx/buffer'
require 'vertx/web_socket_frame'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocket
module Vertx
  class WebSocket
    include ::Vertx::WebSocketBase
    # @private
    # @param j_del [::Vertx::WebSocket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WebSocket] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def write_queue_full
      @j_del.writeQueueFull
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def binary_handler_id
      @j_del.binaryHandlerID
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def text_handler_id
      @j_del.textHandlerID
    end
    # THE METHOD DOC
    #
    # return [void]
    def close
      @j_del.close
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::SocketAddress]: the return value (todo)
    def remote_address
      if @cached_remote_address != nil
        return @cached_remote_address
      end
      @cached_remote_address = ::Vertx::SocketAddress.new(@j_del.remoteAddress)
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::SocketAddress]: the return value (todo)
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new(@j_del.localAddress)
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
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
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
    # THE METHOD DOC
    #
    # @param [::Vertx::Buffer] data
    # return [self]
    def write(data)
      if data.class.method_defined?(:j_del)
        @j_del.write(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [::Vertx::WebSocketFrame] frame
    # return [self]
    def write_frame(frame)
      if frame.class.method_defined?(:j_del)
        @j_del.writeFrame(frame.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument frame=#{frame} when calling write_frame(frame)"
    end
    # THE METHOD DOC
    #
    # @param [::Vertx::Buffer] data
    # return [self]
    def write_message(data)
      if data.class.method_defined?(:j_del)
        @j_del.writeMessage(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write_message(data)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def close_handler(&handler)
      if handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def frame_handler(&handler)
      if handler.class == Proc
        @j_del.frameHandler((Proc.new { |event| handler.call(::Vertx::WebSocketFrame.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling frame_handler(handler)"
    end
  end
end

require 'vertx/web_socket_base'
require 'vertx/buffer'
require 'vertx/web_socket_frame'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocket
module Vertx
  class WebSocket
    include Vertx::WebSocketBase
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      @j_del.writeQueueFull
    end
    def binary_handler_id()
      @j_del.binaryHandlerID
    end
    def text_handler_id()
      @j_del.textHandlerID
    end
    def close()
      @j_del.close
    end
    def remote_address()
        if @cached_remote_address != nil
          return @cached_remote_address
        end
      @cached_remote_address = Vertx::SocketAddress.new(@j_del.remoteAddress)
    end
    def local_address()
        if @cached_local_address != nil
          return @cached_local_address
        end
      @cached_local_address = Vertx::SocketAddress.new(@j_del.localAddress)
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause
      self
    end
    def resume()
      @j_del.resume
      self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write(data)
      if data != nil && data.class.method_defined?(:j_del)
        @j_del.write(data.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(max_size)
      if max_size != nil && max_size.class == Fixnum
        @j_del.setWriteQueueMaxSize(max_size)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_frame(frame)
      if frame != nil && frame.class.method_defined?(:j_del)
        @j_del.writeFrame(frame.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_message(data)
      if data != nil && data.class.method_defined?(:j_del)
        @j_del.writeMessage(data.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def close_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def frame_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.frameHandler((Proc.new { |event| handler.call(Vertx::WebSocketFrame.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

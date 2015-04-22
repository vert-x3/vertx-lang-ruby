require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/web_socket_frame'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketBase
module Vertx
  module WebSocketBase
    include ::Vertx::ReadStream
    include ::Vertx::WriteStream
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::WebSocketBase#set_write_queue_max_size}
    # @return [true,false] true if write queue is full
    def write_queue_full
      if !block_given?
        return @j_del.java_method(:writeQueueFull, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling write_queue_full()"
    end
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    # @return [self]
    def pause
      if !block_given?
        @j_del.java_method(:pause, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    # @return [self]
    def resume
      if !block_given?
        @j_del.java_method(:resume, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    # @param [::Vertx::Buffer] data
    # @return [self]
    def write(data=nil)
      if data.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:write, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write(data)"
    end
    # @param [Fixnum] maxSize
    # @return [self]
    def set_write_queue_max_size(maxSize=nil)
      if maxSize.class == Fixnum && !block_given?
        @j_del.java_method(:setWriteQueueMaxSize, [Java::int.java_class]).call(maxSize)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_write_queue_max_size(maxSize)"
    end
    # @yield 
    # @return [self]
    def drain_handler
      if block_given?
        @j_del.java_method(:drainHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling drain_handler()"
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the event bus - the ID of that
    #  handler is given by this method.
    #  <p>
    #  Given this ID, a different event loop can send a binary frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other WebSockets which are owned by different event loops.
    # @return [String] the binary handler id
    def binary_handler_id
      if !block_given?
        return @j_del.java_method(:binaryHandlerID, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling binary_handler_id()"
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the eventbus, the ID of that
    #  handler is given by <code>textHandlerID</code>.
    #  <p>
    #  Given this ID, a different event loop can send a text frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other WebSockets which are owned by different event loops.
    # @return [String]
    def text_handler_id
      if !block_given?
        return @j_del.java_method(:textHandlerID, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling text_handler_id()"
    end
    #  Write a WebSocket frame to the connection
    # @param [::Vertx::WebSocketFrame] frame the frame to write
    # @return [self]
    def write_frame(frame=nil)
      if frame.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:writeFrame, [Java::IoVertxCoreHttp::WebSocketFrame.java_class]).call(frame.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write_frame(frame)"
    end
    #  Writes a (potentially large) piece of data to the connection. This data might be written as multiple frames
    #  if it exceeds the maximum WebSocket frame size.
    # @param [::Vertx::Buffer] data the data to write
    # @return [self]
    def write_message(data=nil)
      if data.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:writeMessage, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write_message(data)"
    end
    #  Set a close handler. This will be called when the WebSocket is closed.
    # @yield the handler
    # @return [self]
    def close_handler
      if block_given?
        @j_del.java_method(:closeHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling close_handler()"
    end
    #  Set a frame handler on the connection. This handler will be called when frames are read on the connection.
    # @yield the handler
    # @return [self]
    def frame_handler
      if block_given?
        @j_del.java_method(:frameHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::WebSocketFrame.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling frame_handler()"
    end
    #  Close the WebSocket.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  @return the remote address for this socket
    # @return [::Vertx::SocketAddress]
    def remote_address
      if !block_given?
        if @cached_remote_address != nil
          return @cached_remote_address
        end
        return @cached_remote_address = ::Vertx::SocketAddress.new(@j_del.java_method(:remoteAddress, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling remote_address()"
    end
    #  @return the local address for this socket
    # @return [::Vertx::SocketAddress]
    def local_address
      if !block_given?
        if @cached_local_address != nil
          return @cached_local_address
        end
        return @cached_local_address = ::Vertx::SocketAddress.new(@j_del.java_method(:localAddress, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling local_address()"
    end
  end
  class WebSocketBaseImpl
    include WebSocketBase
    # @private
    # @param j_del [::Vertx::WebSocketBase] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WebSocketBase] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

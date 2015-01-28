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
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeQueueFull))).invoke(@j_del)
    end
    # @param [Proc] handler
    # @return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # @return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # @return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # @return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    # @param [Proc] endHandler
    # @return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # @param [::Vertx::Buffer] data
    # @return [self]
    def write(data)
      if data.class.method_defined?(:j_del)
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    # @param [Fixnum] maxSize
    # @return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # @return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:drainHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the event bus - the ID of that
    #  handler is given by this method.
    #  <p>
    #  Given this ID, a different event loop can send a binary frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other WebSockets which are owned by different event loops.
    # @return [String] the binary handler id
    def binary_handler_id
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:binaryHandlerID))).invoke(@j_del)
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the eventbus, the ID of that
    #  handler is given by <code>textHandlerID</code>.
    #  <p>
    #  Given this ID, a different event loop can send a text frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other WebSockets which are owned by different event loops.
    # @return [String]
    def text_handler_id
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:textHandlerID))).invoke(@j_del)
    end
    #  Write a WebSocket frame to the connection
    # @param [::Vertx::WebSocketFrame] frame the frame to write
    # @return [self]
    def write_frame(frame)
      if frame.class.method_defined?(:j_del)
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeFrame,Java::IoVertxCoreHttp::WebSocketFrame.java_class))).invoke(@j_del,frame.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument frame=#{frame} when calling write_frame(frame)"
    end
    #  Writes a (potentially large) piece of data to the connection. This data might be written as multiple frames
    #  if it exceeds the maximum WebSocket frame size.
    # @param [::Vertx::Buffer] data the data to write
    # @return [self]
    def write_message(data)
      if data.class.method_defined?(:j_del)
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeMessage,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write_message(data)"
    end
    #  Set a close handler. This will be called when the WebSocket is closed.
    # @param [Proc] handler the handler
    # @return [self]
    def close_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:closeHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    #  Set a frame handler on the connection. This handler will be called when frames are read on the connection.
    # @param [Proc] handler the handler
    # @return [self]
    def frame_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:frameHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::WebSocketFrame.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling frame_handler(handler)"
    end
    #  Close the WebSocket.
    # @return [void]
    def close
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  @return the remote address for this socket
    # @return [::Vertx::SocketAddress]
    def remote_address
      if @cached_remote_address != nil
        return @cached_remote_address
      end
      @cached_remote_address = ::Vertx::SocketAddress.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:remoteAddress))).invoke(@j_del))
    end
    #  @return the local address for this socket
    # @return [::Vertx::SocketAddress]
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:localAddress))).invoke(@j_del))
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

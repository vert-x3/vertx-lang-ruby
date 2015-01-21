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
    # @return [true,false]
    def write_queue_full
      @j_del.writeQueueFull
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # @param [::Vertx::Buffer] data
    # return [self]
    def write(data)
      if data.class.method_defined?(:j_del)
        @j_del.write(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the eventbus, the ID of that
    #  handler is given by <code>binaryHandlerID</code>.<p>
    #  Given this ID, a different event loop can send a binary frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other websockets which are owned by different event loops.
    # @return [String]
    def binary_handler_id
      @j_del.binaryHandlerID
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the eventbus, the ID of that
    #  handler is given by <code>textHandlerID</code>.<p>
    #  Given this ID, a different event loop can send a text frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other websockets which are owned by different event loops.
    # @return [String]
    def text_handler_id
      @j_del.textHandlerID
    end
    # @param [::Vertx::WebSocketFrame] frame
    # return [self]
    def write_frame(frame)
      if frame.class.method_defined?(:j_del)
        @j_del.writeFrame(frame.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument frame=#{frame} when calling write_frame(frame)"
    end
    #  Writes a (potentially large) piece of data as a websocket message - this may be split into multiple frames
    #  if it is large.
    # @param [::Vertx::Buffer] data
    # return [self]
    def write_message(data)
      if data.class.method_defined?(:j_del)
        @j_del.writeMessage(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write_message(data)"
    end
    #  Set a closed handler on the connection
    # @param [Proc] handler
    # return [self]
    def close_handler(&handler)
      if handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    #  Set a frame handler on the connection
    # @param [Proc] handler
    # return [self]
    def frame_handler(&handler)
      if handler.class == Proc
        @j_del.frameHandler((Proc.new { |event| handler.call(::Vertx::WebSocketFrame.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling frame_handler(handler)"
    end
    #  Close the websocket
    # return [void]
    def close
      @j_del.close
    end
    #  Return the remote address for this socket
    # @return [::Vertx::SocketAddress]
    def remote_address
      if @cached_remote_address != nil
        return @cached_remote_address
      end
      @cached_remote_address = ::Vertx::SocketAddress.new(@j_del.remoteAddress)
    end
    #  Return the local address for this socket
    # @return [::Vertx::SocketAddress]
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new(@j_del.localAddress)
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

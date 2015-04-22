require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetSocket
module Vertx
  #  Represents a socket-like interface to a TCP connection on either the
  #  client or the server side.
  #  <p>
  #  Instances of this class are created on the client side by an {::Vertx::NetClient}
  #  when a connection to a server is made, or on the server side by a {::Vertx::NetServer}
  #  when a server accepts a connection.
  #  <p>
  #  It implements both  and  so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.
  class NetSocket
    include ::Vertx::ReadStream
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::NetSocket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::NetSocket] the underlying java delegate
    def j_del
      @j_del
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::NetSocket#set_write_queue_max_size}
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
    #  Write a  to the connection, encoded using the encoding <code>enc</code>.
    # @overload write(data)
    #   @param [::Vertx::Buffer] data
    # @overload write(str)
    #   @param [String] str the string to write
    # @overload write(str,enc)
    #   @param [String] str the string to write
    #   @param [String] enc the encoding to use
    # @return [self]
    def write(param_1=nil,param_2=nil)
      if param_1.class.method_defined?(:j_del) && !block_given? && param_2 == nil
        @j_del.java_method(:write, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(param_1.j_del)
        return self
      elsif param_1.class == String && !block_given? && param_2 == nil
        @j_del.java_method(:write, [Java::java.lang.String.java_class]).call(param_1)
        return self
      elsif param_1.class == String && param_2.class == String && !block_given?
        @j_del.java_method(:write, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write(param_1,param_2)"
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
    #  When a <code>NetSocket</code> is created it automatically registers an event handler with the event bus, the ID of that
    #  handler is given by <code>writeHandlerID</code>.
    #  <p>
    #  Given this ID, a different event loop can send a buffer to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other connections which are owned by different event loops.
    # @return [String] the write handler ID
    def write_handler_id
      if !block_given?
        return @j_del.java_method(:writeHandlerID, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling write_handler_id()"
    end
    #  Same as {::Vertx::NetSocket#send_file} but also takes a handler that will be called when the send has completed or
    #  a failure has occurred
    # @param [String] filename file name of the file to send
    # @yield handler
    # @return [self]
    def send_file(filename=nil)
      if filename.class == String && !block_given?
        @j_del.java_method(:sendFile, [Java::java.lang.String.java_class]).call(filename)
        return self
      elsif filename.class == String && block_given?
        @j_del.java_method(:sendFile, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(filename,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling send_file(filename)"
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
    #  Close the NetSocket
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  Set a handler that will be called when the NetSocket is closed
    # @yield the handler
    # @return [self]
    def close_handler
      if block_given?
        @j_del.java_method(:closeHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling close_handler()"
    end
    #  Upgrade channel to use SSL/TLS. Be aware that for this to work SSL must be configured.
    # @yield the handler will be notified when it's upgraded
    # @return [self]
    def upgrade_to_ssl
      if block_given?
        @j_del.java_method(:upgradeToSsl, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling upgrade_to_ssl()"
    end
    #  @return true if this {::Vertx::NetSocket} is encrypted via SSL/TLS.
    # @return [true,false]
    def is_ssl
      if !block_given?
        return @j_del.java_method(:isSsl, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_ssl()"
    end
  end
end

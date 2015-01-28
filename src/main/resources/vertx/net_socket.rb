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
    #  Write a  to the connection, encoded using the encoding <code>enc</code>.
    # @overload write(data)
    #   @param [::Vertx::Buffer] data
    # @overload write(str)
    #   @param [String] str the string to write
    # @overload write(str,enc)
    #   @param [String] str the string to write
    #   @param [String] enc the encoding to use
    # @return [self]
    def write(param_1,param_2=nil)
      if param_1.class.method_defined?(:j_del)
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,param_1.j_del)
        return self
      end
      if param_1.class == String
        if param_2.class == String
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,param_1,param_2)
          return self
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::java.lang.String.java_class))).invoke(@j_del,param_1)
        return self
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling write(param_1,param_2)"
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
    #  When a <code>NetSocket</code> is created it automatically registers an event handler with the event bus, the ID of that
    #  handler is given by <code>writeHandlerID</code>.
    #  <p>
    #  Given this ID, a different event loop can send a buffer to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other connections which are owned by different event loops.
    # @return [String] the write handler ID
    def write_handler_id
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeHandlerID))).invoke(@j_del)
    end
    #  Same as {::Vertx::NetSocket#send_file} but also takes a handler that will be called when the send has completed or
    #  a failure has occurred
    # @param [String] filename file name of the file to send
    # @param [Proc] resultHandler handler
    # @return [self]
    def send_file(filename,&resultHandler)
      if filename.class == String
        if resultHandler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sendFile,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,filename,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sendFile,Java::java.lang.String.java_class))).invoke(@j_del,filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling send_file(filename,resultHandler)"
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
    #  Close the NetSocket
    # @return [void]
    def close
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  Set a handler that will be called when the NetSocket is closed
    # @param [Proc] handler the handler
    # @return [self]
    def close_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:closeHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    #  Upgrade channel to use SSL/TLS. Be aware that for this to work SSL must be configured.
    # @param [Proc] handler the handler will be notified when it's upgraded
    # @return [self]
    def upgrade_to_ssl(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:upgradeToSsl,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling upgrade_to_ssl(handler)"
    end
    #  @return true if this {::Vertx::NetSocket} is encrypted via SSL/TLS.
    # @return [true,false]
    def is_ssl
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isSsl))).invoke(@j_del)
    end
  end
end

require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetSocket
module Vertx
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
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def write_queue_full
      @j_del.writeQueueFull
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
    # @overload write(data)
    #   @param [::Vertx::Buffer] data
    # @overload write(str)
    #   @param [String] str
    # @overload write(str,enc)
    #   @param [String] str
    #   @param [String] enc
    # return [self]
    def write(param_1,param_2=nil)
      if param_1.class.method_defined?(:j_del)
        @j_del.write(param_1.j_del)
        return self
      end
      if param_1.class == String
        if param_2.class == String
          @j_del.write(param_1,param_2)
          return self
        end
        @j_del.write(param_1)
        return self
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling write(param_1,param_2)"
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
    # @return [String]: the return value (todo)
    def write_handler_id
      @j_del.writeHandlerID
    end
    # THE METHOD DOC
    #
    # @param [String] filename
    # @param [Proc] resultHandler
    # return [self]
    def send_file(filename,&resultHandler)
      if filename.class == String
        if resultHandler.class == Proc
          @j_del.sendFile(filename,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        @j_del.sendFile(filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling send_file(filename,resultHandler)"
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
    # return [void]
    def close
      @j_del.close
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
    def upgrade_to_ssl(&handler)
      if handler.class == Proc
        @j_del.upgradeToSsl(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling upgrade_to_ssl(handler)"
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_ssl
      @j_del.isSsl
    end
  end
end

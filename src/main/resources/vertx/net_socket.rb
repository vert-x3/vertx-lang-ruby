require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetSocket
module Vertx
  class NetSocket
    include Vertx::ReadStream
    include Vertx::WriteStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      @j_del.writeQueueFull
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
    def write(param_1=nil,param_2=nil)
        if param_1 != nil && param_1.class.method_defined?(:j_del)
          @j_del.write(param_1.j_del)
          return self
        end
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
              @j_del.write(param_1,param_2)
              return self
            end
          @j_del.write(param_1)
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
    def write_handler_id()
      @j_del.writeHandlerID
    end
    def send_file(filename,result_handler=nil)
      if filename != nil && filename.class == String
        if result_handler != nil && result_handler.class == Proc
          @j_del.sendFile(filename,(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        @j_del.sendFile(filename)
        return self
      end
      raise ArgumentError, 'dispatch error'
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
    def close()
      @j_del.close
    end
    def close_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def upgrade_to_ssl(handler)
      if handler != nil && handler.class == Proc
        @j_del.upgradeToSsl(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_ssl()
      @j_del.isSsl
    end
  end
end

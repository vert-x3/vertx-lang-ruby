include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.WriteStream'
include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.net.SocketAddress'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetSocket
module Vertx
  class NetSocket
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      return @j_del.writeQueueFull()
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
      @j_del.pause()
      return self
    end
    def resume()
      @j_del.resume()
      return self
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
      return @j_del.writeHandlerID()
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
      return Vertx::SocketAddress.new(@j_del.remoteAddress())
    end
    def local_address()
      return Vertx::SocketAddress.new(@j_del.localAddress())
    end
    def close()
      return @j_del.close()
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
      return @j_del.isSsl()
    end
  end
end

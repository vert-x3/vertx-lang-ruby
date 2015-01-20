require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.AsyncFile
module Vertx
  class AsyncFile
    include ::Vertx::ReadStream
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::AsyncFile] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::AsyncFile] the underlying java delegate
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
    # @param [::Vertx::Buffer] buffer
    # @param [Fixnum] position
    # @param [Proc] handler
    # return [self]
    def write(buffer,position=nil,&handler)
      if buffer.class.method_defined?(:j_del)
        if position.class == Fixnum
          if handler.class == Proc
            @j_del.write(buffer.j_del,position,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling write(buffer,position,handler)"
        end
        @j_del.write(buffer.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument buffer=#{buffer} when calling write(buffer,position,handler)"
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
    # return [void]
    def close(&handler)
      if handler.class == Proc
        return @j_del.close((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
    # THE METHOD DOC
    #
    # @param [::Vertx::Buffer] buffer
    # @param [Fixnum] offset
    # @param [Fixnum] position
    # @param [Fixnum] length
    # @param [Proc] handler
    # return [self]
    def read(buffer,offset,position,length,&handler)
      if buffer.class.method_defined?(:j_del)
        if offset.class == Fixnum
          if position.class == Fixnum
            if length.class == Fixnum
              if handler.class == Proc
                @j_del.read(buffer.j_del,offset,position,length,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Buffer.new(ar.result) : nil) }))
                return self
              end
              raise ArgumentError, "Invalid argument handler=#{handler} when calling read(buffer,offset,position,length,handler)"
            end
            raise ArgumentError, "Invalid argument length=#{length} when calling read(buffer,offset,position,length,handler)"
          end
          raise ArgumentError, "Invalid argument position=#{position} when calling read(buffer,offset,position,length,handler)"
        end
        raise ArgumentError, "Invalid argument offset=#{offset} when calling read(buffer,offset,position,length,handler)"
      end
      raise ArgumentError, "Invalid argument buffer=#{buffer} when calling read(buffer,offset,position,length,handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def flush(&handler)
      if handler.class == Proc
        @j_del.flush((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
        return self
      end
      @j_del.flush
      self
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] readPos
    # return [self]
    def set_read_pos(readPos)
      if readPos.class == Fixnum
        @j_del.setReadPos(readPos)
        return self
      end
      raise ArgumentError, "Invalid argument readPos=#{readPos} when calling set_read_pos(readPos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] readPos
    # return [self]
    def set_write_pos(readPos)
      if readPos.class == Fixnum
        @j_del.setWritePos(readPos)
        return self
      end
      raise ArgumentError, "Invalid argument readPos=#{readPos} when calling set_write_pos(readPos)"
    end
  end
end

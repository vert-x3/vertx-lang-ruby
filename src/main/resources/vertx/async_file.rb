require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.AsyncFile
module Vertx
  #  Represents a file on the file-system which can be read from, or written to asynchronously.<p>
  #  This class also implements {::Vertx::ReadStream} and
  #  {::Vertx::WriteStream}. This allows the data to be pumped to and from
  #  other streams, e.g. an {::Vertx::HttpClientRequest} instance,
  #  using the {::Vertx::Pump} class<p>
  #  Instances of AsyncFile are not thread-safe<p>
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
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::AsyncFile#set_write_queue_max_size}
    # @return [true,false]
    def write_queue_full
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeQueueFull))).invoke(@j_del)
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    #  Write a {::Vertx::Buffer} to the file at position <code>position</code> in the file, asynchronously.
    #  If <code>position</code> lies outside of the current size
    #  of the file, the file will be enlarged to encompass it.<p>
    #  When multiple writes are invoked on the same file
    #  there are no guarantees as to order in which those writes actually occur.<p>
    #  The handler will be called when the write is complete, or if an error occurs.
    # @param [::Vertx::Buffer] buffer
    # @param [Fixnum] position
    # @param [Proc] handler
    # return [self]
    def write(buffer,position=nil,&handler)
      if buffer.class.method_defined?(:j_del)
        if position.class == Fixnum
          if handler.class == Proc
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::IoVertxCoreBuffer::Buffer.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,buffer.j_del,position,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling write(buffer,position,handler)"
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,buffer.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument buffer=#{buffer} when calling write(buffer,position,handler)"
    end
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:drainHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    #  Close the file. The actual close happens asynchronously.
    #  The handler will be called when the close is complete, or an error occurs.
    # @param [Proc] handler
    # return [void]
    def close(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  Reads <code>length</code> bytes of data from the file at position <code>position</code> in the file, asynchronously.
    #  The read data will be written into the specified <code>Buffer buffer</code> at position <code>offset</code>.<p>
    #  If data is read past the end of the file then zero bytes will be read.<p>
    #  When multiple reads are invoked on the same file there are no guarantees as to order in which those reads actually occur.<p>
    #  The handler will be called when the close is complete, or if an error occurs.
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
                (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:read,Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::long.java_class,Java::int.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,buffer.j_del,offset,position,length,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Buffer.new(ar.result) : nil) }))
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
    #  Same as {::Vertx::AsyncFile#flush} but the handler will be called when the flush is complete or if an error occurs
    # @param [Proc] handler
    # return [self]
    def flush(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:flush,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
        return self
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:flush))).invoke(@j_del)
      self
    end
    # @param [Fixnum] readPos
    # return [self]
    def set_read_pos(readPos)
      if readPos.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setReadPos,Java::long.java_class))).invoke(@j_del,readPos)
        return self
      end
      raise ArgumentError, "Invalid argument readPos=#{readPos} when calling set_read_pos(readPos)"
    end
    # @param [Fixnum] readPos
    # return [self]
    def set_write_pos(readPos)
      if readPos.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWritePos,Java::long.java_class))).invoke(@j_del,readPos)
        return self
      end
      raise ArgumentError, "Invalid argument readPos=#{readPos} when calling set_write_pos(readPos)"
    end
  end
end

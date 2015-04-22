require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.AsyncFile
module Vertx
  #  Represents a file on the file-system which can be read from, or written to asynchronously.
  #  <p>
  #  This class also implements {::Vertx::ReadStream} and
  #  {::Vertx::WriteStream}. This allows the data to be pumped to and from
  #  other streams, e.g. an {::Vertx::HttpClientRequest} instance,
  #  using the {::Vertx::Pump} class
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
    # @return [true,false] true if write queue is full
    def write_queue_full
      if !block_given?
        return @j_del.java_method(:writeQueueFull, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling write_queue_full()"
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
    #  Write a {::Vertx::Buffer} to the file at position <code>position</code> in the file, asynchronously.
    #  <p>
    #  If <code>position</code> lies outside of the current size
    #  of the file, the file will be enlarged to encompass it.
    #  <p>
    #  When multiple writes are invoked on the same file
    #  there are no guarantees as to order in which those writes actually occur
    #  <p>
    #  The handler will be called when the write is complete, or if an error occurs.
    # @param [::Vertx::Buffer] buffer the buffer to write
    # @param [Fixnum] position the position in the file to write it at
    # @yield the handler to call when the write is complete
    # @return [self]
    def write(buffer=nil,position=nil)
      if buffer.class.method_defined?(:j_del) && !block_given? && position == nil
        @j_del.java_method(:write, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(buffer.j_del)
        return self
      elsif buffer.class.method_defined?(:j_del) && position.class == Fixnum && block_given?
        @j_del.java_method(:write, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(buffer.j_del,position,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write(buffer,position)"
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
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    #  Close the file. The actual close happens asynchronously.
    #  The handler will be called when the close is complete, or an error occurs.
    # @yield the handler
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      elsif block_given?
        return @j_del.java_method(:close, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  Reads <code>length</code> bytes of data from the file at position <code>position</code> in the file, asynchronously.
    #  <p>
    #  The read data will be written into the specified <code>Buffer buffer</code> at position <code>offset</code>.
    #  <p>
    #  If data is read past the end of the file then zero bytes will be read.<p>
    #  When multiple reads are invoked on the same file there are no guarantees as to order in which those reads actually occur.
    #  <p>
    #  The handler will be called when the close is complete, or if an error occurs.
    # @param [::Vertx::Buffer] buffer the buffer to read into
    # @param [Fixnum] offset the offset into the buffer where the data will be read
    # @param [Fixnum] position the position in the file where to start reading
    # @param [Fixnum] length the number of bytes to read
    # @yield the handler to call when the write is complete
    # @return [self]
    def read(buffer=nil,offset=nil,position=nil,length=nil)
      if buffer.class.method_defined?(:j_del) && offset.class == Fixnum && position.class == Fixnum && length.class == Fixnum && block_given?
        @j_del.java_method(:read, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::long.java_class,Java::int.java_class,Java::IoVertxCore::Handler.java_class]).call(buffer.j_del,offset,position,length,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Buffer.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling read(buffer,offset,position,length)"
    end
    #  Same as {::Vertx::AsyncFile#flush} but the handler will be called when the flush is complete or if an error occurs
    # @yield 
    # @return [self]
    def flush
      if !block_given?
        @j_del.java_method(:flush, []).call()
        return self
      elsif block_given?
        @j_del.java_method(:flush, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling flush()"
    end
    #  Sets the position from which data will be read from when using the file as a {::Vertx::ReadStream}.
    # @param [Fixnum] readPos the position in the file
    # @return [self]
    def set_read_pos(readPos=nil)
      if readPos.class == Fixnum && !block_given?
        @j_del.java_method(:setReadPos, [Java::long.java_class]).call(readPos)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_read_pos(readPos)"
    end
    #  Sets the position from which data will be written when using the file as a {::Vertx::WriteStream}.
    # @param [Fixnum] writePos the position in the file
    # @return [self]
    def set_write_pos(writePos=nil)
      if writePos.class == Fixnum && !block_given?
        @j_del.java_method(:setWritePos, [Java::long.java_class]).call(writePos)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_write_pos(writePos)"
    end
  end
end

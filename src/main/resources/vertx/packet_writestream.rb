require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.PacketWritestream
module Vertx
  #  A {::Vertx::WriteStream} for sending packets to a {::Vertx::SocketAddress}.
  #  The stream  is called when the write fails.
  class PacketWritestream
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::PacketWritestream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::PacketWritestream] the underlying java delegate
    def j_del
      @j_del
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::PacketWritestream#set_write_queue_max_size}
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
    # @param [::Vertx::Buffer] data
    # @return [self]
    def write(data=nil)
      if data.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:write, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write(data)"
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
  end
end

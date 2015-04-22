require 'vertx/stream_base'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.ReadStream<T>
module Vertx
  module ReadStream
    include ::Vertx::StreamBase
    #  Set an exception handler on the read stream.
    # @yield the exception handler
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    #  Set a data handler. As data is read, the handler will be called with the data.
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_object(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    #  Pause the <code>ReadSupport</code>. While it's paused, no data will be sent to the <code>dataHandler</code>
    # @return [self]
    def pause
      if !block_given?
        @j_del.java_method(:pause, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    #  Resume reading. If the <code>ReadSupport</code> has been paused, reading will recommence on it.
    # @return [self]
    def resume
      if !block_given?
        @j_del.java_method(:resume, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    #  Set an end handler. Once the stream has ended, and there is no more data to be read, this handler will be called.
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
  end
  class ReadStreamImpl
    include ReadStream
    # @private
    # @param j_del [::Vertx::ReadStream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::ReadStream] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

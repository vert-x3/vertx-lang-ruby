require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.TimeoutStream
module Vertx
  #  A timeout stream is triggered by a timer, the {::Vertx::Handler} will be call when the timer is fired,
  #  it can be once or several times depending on the nature of the timer related to this stream. The
  #   will be called after the timer handler has been called.
  #  <p>
  #  Pausing the timer inhibits the timer shots until the stream is resumed. Setting a null handler callback cancels
  #  the timer.
  class TimeoutStream
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::TimeoutStream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::TimeoutStream] the underlying java delegate
    def j_del
      @j_del
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
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
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
    #  Cancels the timeout. Note this has the same effect as calling {::Vertx::TimeoutStream#handler} with a null
    #  argument.
    # @return [void]
    def cancel
      if !block_given?
        return @j_del.java_method(:cancel, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling cancel()"
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.StreamBase
module Vertx
  module StreamBase
    #  Set an exception handler.
    # @yield the handler
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
  end
  class StreamBaseImpl
    include StreamBase
    # @private
    # @param j_del [::Vertx::StreamBase] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::StreamBase] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

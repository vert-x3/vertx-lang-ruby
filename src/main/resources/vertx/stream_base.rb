require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.StreamBase
module Vertx
  module StreamBase
    #  Set an exception handler.
    # @yield the handler
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) }))
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      StreamBase.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreStreams::StreamBase.java_class
    end
  end
end

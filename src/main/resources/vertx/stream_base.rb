require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.StreamBase
module Vertx
  module StreamBase
    #  Set an exception handler.
    # @yield the handler
    # @return [self]
    def exception_handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(event) }))
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

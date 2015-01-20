require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.StreamBase
module Vertx
  module StreamBase
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

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.StreamBase
module Vertx
  module StreamBase
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

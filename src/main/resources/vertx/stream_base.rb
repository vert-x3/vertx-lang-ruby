require 'vertx/util/utils.rb'
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

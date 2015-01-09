include_class 'io.vertx.core.streams.StreamBase'
require 'vertx/util/utils.rb'
module Vertx
  module WriteStream
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write(data)
      if data != nil && (data.class == Hash || data.class == Array)
        @j_del.write(Vertx::Util::Utils.to_object(data))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(max_size)
      if max_size != nil && max_size.class == Fixnum
        @j_del.setWriteQueueMaxSize(max_size)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_queue_full()
      return @j_del.writeQueueFull()
    end
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

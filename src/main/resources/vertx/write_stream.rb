require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.WriteStream<T>
module Vertx
  module WriteStream
    include Vertx::StreamBase
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write(data)
      if data != nil && (data.class == String  ||data.class == Hash || data.class == Array)
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
      @j_del.writeQueueFull
    end
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
  class WriteStreamImpl
    include WriteStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
  end
end

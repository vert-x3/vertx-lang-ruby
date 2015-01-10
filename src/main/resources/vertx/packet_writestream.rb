include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.WriteStream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.PacketWritestream
module Vertx
  class PacketWritestream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      return @j_del.writeQueueFull()
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write(data)
      if data != nil && data.class.method_defined?(:j_del)
        @j_del.write(data.j_del)
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
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

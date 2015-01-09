include_class 'io.vertx.core.streams.WriteStream'
include_class 'io.vertx.core.streams.ReadStream'
require 'vertx/util/utils.rb'
module Vertx
  class Pump
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def pump(rs,ws,write_queue_max_size=nil)
      if rs != nil && rs.class.method_defined?(:j_del)
        if ws != nil && ws.class.method_defined?(:j_del)
          if write_queue_max_size != nil && write_queue_max_size.class == Fixnum
            return nil
          end
          return nil
        end
        raise ArgumentError, 'dispatch error'
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
    def start()
      @j_del.start()
      return self
    end
    def stop()
      @j_del.stop()
      return self
    end
    def number_pumped()
      return @j_del.numberPumped()
    end
  end
end

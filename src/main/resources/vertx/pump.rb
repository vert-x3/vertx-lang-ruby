require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.Pump
module Vertx
  class Pump
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def self.pump(rs,ws,write_queue_max_size=nil)
      if rs != nil && rs.class.method_defined?(:j_del)
        if ws != nil && ws.class.method_defined?(:j_del)
          if write_queue_max_size != nil && write_queue_max_size.class == Fixnum
            return Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.pump(rs.j_del,ws.j_del,write_queue_max_size))
          end
          return Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.pump(rs.j_del,ws.j_del))
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
      @j_del.start
      self
    end
    def stop()
      @j_del.stop
      self
    end
    def number_pumped()
      @j_del.numberPumped
    end
  end
end

require 'vertx/write_stream'
require 'vertx/read_stream'
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
    def self.pump(rs,ws,writeQueueMaxSize=nil)
      if rs.class.method_defined?(:j_del)
        if ws.class.method_defined?(:j_del)
          if writeQueueMaxSize.class == Fixnum
            return Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.pump(rs.j_del,ws.j_del,writeQueueMaxSize))
          end
          return Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.pump(rs.j_del,ws.j_del))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
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

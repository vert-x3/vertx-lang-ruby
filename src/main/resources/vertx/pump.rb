require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.Pump
module Vertx
  class Pump
    # @private
    # @param j_del [::Vertx::Pump] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Pump] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @param [::Vertx::ReadStream] rs
    # @param [::Vertx::WriteStream] ws
    # @param [Fixnum] writeQueueMaxSize
    # @return [::Vertx::Pump]: the return value (todo)
    def self.pump(rs,ws,writeQueueMaxSize=nil)
      if rs.class.method_defined?(:j_del)
        if ws.class.method_defined?(:j_del)
          if writeQueueMaxSize.class == Fixnum
            return ::Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.pump(rs.j_del,ws.j_del,writeQueueMaxSize))
          end
          return ::Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.pump(rs.j_del,ws.j_del))
        end
        raise ArgumentError, "Invalid argument ws=#{ws} when calling pump(rs,ws,writeQueueMaxSize)"
      end
      raise ArgumentError, "Invalid argument rs=#{rs} when calling pump(rs,ws,writeQueueMaxSize)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # THE METHOD DOC
    #
    # return [self]
    def start
      @j_del.start
      self
    end
    # THE METHOD DOC
    #
    # return [self]
    def stop
      @j_del.stop
      self
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def number_pumped
      @j_del.numberPumped
    end
  end
end

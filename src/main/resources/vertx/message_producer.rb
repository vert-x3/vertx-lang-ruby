require 'vertx/write_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageProducer<T>
module Vertx
  class MessageProducer
    include ::Vertx::WriteStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full
      @j_del.writeQueueFull
    end
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    def write(data)
      if data.class == String  ||data.class == Hash || data.class == Array
        @j_del.write(::Vertx::Util::Utils.to_object(data))
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    def delivery_options(options)
      if options.class == Hash
        @j_del.deliveryOptions(Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
        return self
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling delivery_options(options)"
    end
    def address
      @j_del.address
    end
  end
end

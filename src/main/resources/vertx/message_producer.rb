require 'vertx/write_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageProducer<T>
module Vertx
  #  Represents a stream of message that can be written to<p>
  class MessageProducer
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::MessageProducer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MessageProducer] the underlying java delegate
    def j_del
      @j_del
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::MessageProducer#set_write_queue_max_size}
    # @return [true,false]
    def write_queue_full
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeQueueFull))).invoke(@j_del)
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Object] data
    # return [self]
    def write(data)
      if data.class == String  ||data.class == Hash || data.class == Array
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(data))
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:drainHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    #  Update the delivery options of this producer.
    # @param [Hash] options
    # return [self]
    def delivery_options(options)
      if options.class == Hash
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deliveryOptions,Java::IoVertxCoreEventbus::DeliveryOptions.java_class))).invoke(@j_del,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
        return self
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling delivery_options(options)"
    end
    #  @return The address to which the producer produces messages.
    # @return [String]
    def address
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:address))).invoke(@j_del)
    end
  end
end

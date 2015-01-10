include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.eventbus.Message'
include_class 'io.vertx.core.eventbus.MessageConsumer'
include_class 'io.vertx.core.eventbus.MessageProducer'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.EventBus
module Vertx
  class EventBus
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return nil
    end
    def close(completion_handler)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.close((Proc.new { |ar| completion_handler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def send(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && (param_2.class == String  ||param_2.class == Hash || param_2.class == Array)
                if param_3 == nil || param_3.class == Hash
                    if param_4 != nil && param_4.class == Proc
                      @j_del.send(param_1,Vertx::Util::Utils.to_object(param_2),param_3 != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(param_3)) : nil,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Message.new(ar.result) : nil) }))
                      return self
                    end
                  @j_del.send(param_1,Vertx::Util::Utils.to_object(param_2),param_3 != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(param_3)) : nil)
                  return self
                end
                if param_3 != nil && param_3.class == Proc
                  @j_del.send(param_1,Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Message.new(ar.result) : nil) }))
                  return self
                end
              @j_del.send(param_1,Vertx::Util::Utils.to_object(param_2))
              return self
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def publish(address,message,options=nil)
      if address != nil && address.class == String
        if message != nil && (message.class == String  ||message.class == Hash || message.class == Array)
          if options == nil || options.class == Hash
            @j_del.publish(address,Vertx::Util::Utils.to_object(message),options != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil)
            return self
          end
          @j_del.publish(address,Vertx::Util::Utils.to_object(message))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def consumer(address,handler=nil)
      if address != nil && address.class == String
        if handler != nil && handler.class == Proc
          return Vertx::MessageConsumer.new(@j_del.consumer(address,(Proc.new { |event| handler.call(Vertx::Message.new(event)) })))
        end
        return Vertx::MessageConsumer.new(@j_del.consumer(address))
      end
      raise ArgumentError, 'dispatch error'
    end
    def local_consumer(address,handler=nil)
      if address != nil && address.class == String
        if handler != nil && handler.class == Proc
          return Vertx::MessageConsumer.new(@j_del.localConsumer(address,(Proc.new { |event| handler.call(Vertx::Message.new(event)) })))
        end
        return Vertx::MessageConsumer.new(@j_del.localConsumer(address))
      end
      raise ArgumentError, 'dispatch error'
    end
    def sender(address,options=nil)
      if address != nil && address.class == String
        if options == nil || options.class == Hash
          return Vertx::MessageProducer.new(@j_del.sender(address,options != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
        end
        return Vertx::MessageProducer.new(@j_del.sender(address))
      end
      raise ArgumentError, 'dispatch error'
    end
    def publisher(address,options=nil)
      if address != nil && address.class == String
        if options == nil || options.class == Hash
          return Vertx::MessageProducer.new(@j_del.publisher(address,options != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
        end
        return Vertx::MessageProducer.new(@j_del.publisher(address))
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

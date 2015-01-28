require 'vertx/measured'
require 'vertx/message'
require 'vertx/message_consumer'
require 'vertx/message_producer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.EventBus
module Vertx
  #  A Vert.x event-bus is a light-weight distributed messaging system which allows different parts of your application,
  #  or different applications and services to communicate with each in a loosely coupled way.
  #  <p>
  #  An event-bus supports publish-subscribe messaging, point-to-point messaging and request-response messaging.
  #  <p>
  #  Message delivery is best-effort and messages can be lost if failure of all or part of the event bus occurs.
  #  <p>
  #  Please refer to the documentation for more information on the event bus.
  class EventBus
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::EventBus] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::EventBus] the underlying java delegate
    def j_del
      @j_del
    end
    #  The metric base name
    # @return [String]
    def metric_base_name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metricBaseName))).invoke(@j_del)
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metrics))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Like {::Vertx::EventBus#send} but specifying a <code>replyHandler</code> that will be called if the recipient
    #  subsequently replies to the message.
    # @overload send(address,message)
    #   @param [String] address the address to send it to
    #   @param [Object] message the message, may be {@code null}
    # @overload send(address,message,replyHandler)
    #   @param [String] address the address to send it to
    #   @param [Object] message the message, may be {@code null}
    #   @param [Proc] replyHandler reply handler will be called when any reply from the recipient is received, may be {@code null}
    # @overload send(address,message,options)
    #   @param [String] address the address to send it to
    #   @param [Object] message the message, may be {@code null}
    #   @param [Hash] options delivery options
    # @overload send(address,message,options,replyHandler)
    #   @param [String] address the address to send it to
    #   @param [Object] message the message, may be {@code null}
    #   @param [Hash] options delivery options
    #   @param [Proc] replyHandler reply handler will be called when any reply from the recipient is received, may be {@code null}
    # @return [self]
    def send(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Hash
            if param_4.class == Proc
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,::Vertx::Util::Utils.to_object(param_2),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_3)),(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
              return self
            end
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class))).invoke(@j_del,param_1,::Vertx::Util::Utils.to_object(param_2),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_3)))
            return self
          end
          if param_3.class == Proc
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
            return self
          end
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::java.lang.String.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,param_1,::Vertx::Util::Utils.to_object(param_2))
          return self
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling send(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling send(param_1,param_2,param_3,param_4)"
    end
    #  Like {::Vertx::EventBus#publish} but specifying <code>options</code> that can be used to configure the delivery.
    # @param [String] address the address to publish it to
    # @param [Object] message the message, may be {@code null}
    # @param [Hash] options the delivery options
    # @return [self]
    def publish(address,message,options=nil)
      if address.class == String
        if message.class == String  ||message.class == Hash || message.class == Array
          if options.class == Hash
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:publish,Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class))).invoke(@j_del,address,::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
            return self
          end
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:publish,Java::java.lang.String.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,address,::Vertx::Util::Utils.to_object(message))
          return self
        end
        raise ArgumentError, "Invalid argument message=#{message} when calling publish(address,message,options)"
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling publish(address,message,options)"
    end
    #  Create a consumer and register it against the specified address.
    # @param [String] address the address that will register it at
    # @param [Proc] handler the handler that will process the received messages
    # @return [::Vertx::MessageConsumer]
    def consumer(address,&handler)
      if address.class == String
        if handler.class == Proc
          return ::Vertx::MessageConsumer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:consumer,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,address,(Proc.new { |event| handler.call(::Vertx::Message.new(event)) })))
        end
        return ::Vertx::MessageConsumer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:consumer,Java::java.lang.String.java_class))).invoke(@j_del,address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling consumer(address,handler)"
    end
    #  Like {::Vertx::EventBus#consumer} but the address won't be propagated across the cluster.
    # @param [String] address the address that will register it at
    # @param [Proc] handler the handler that will process the received messages
    # @return [::Vertx::MessageConsumer]
    def local_consumer(address,&handler)
      if address.class == String
        if handler.class == Proc
          return ::Vertx::MessageConsumer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:localConsumer,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,address,(Proc.new { |event| handler.call(::Vertx::Message.new(event)) })))
        end
        return ::Vertx::MessageConsumer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:localConsumer,Java::java.lang.String.java_class))).invoke(@j_del,address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling local_consumer(address,handler)"
    end
    #  Like {::Vertx::EventBus#sender} but specifying delivery options that will be used for configuring the delivery of
    #  the message.
    # @param [String] address the address to send it to
    # @param [Hash] options the delivery options
    # @return [::Vertx::MessageProducer]
    def sender(address,options=nil)
      if address.class == String
        if options.class == Hash
          return ::Vertx::MessageProducer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sender,Java::java.lang.String.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class))).invoke(@j_del,address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        return ::Vertx::MessageProducer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sender,Java::java.lang.String.java_class))).invoke(@j_del,address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling sender(address,options)"
    end
    #  Like {::Vertx::EventBus#publisher} but specifying delivery options that will be used for configuring the delivery of
    #  the message.
    # @param [String] address the address to publish it to
    # @param [Hash] options the delivery options
    # @return [::Vertx::MessageProducer]
    def publisher(address,options=nil)
      if address.class == String
        if options.class == Hash
          return ::Vertx::MessageProducer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:publisher,Java::java.lang.String.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class))).invoke(@j_del,address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        return ::Vertx::MessageProducer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:publisher,Java::java.lang.String.java_class))).invoke(@j_del,address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling publisher(address,options)"
    end
    #  Close the event bus and release any resources held
    # @param [Proc] completionHandler may be {@code null}
    # @return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument completionHandler=#{completionHandler} when calling close(completionHandler)"
    end
  end
end

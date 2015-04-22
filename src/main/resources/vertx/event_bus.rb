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
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Like {::Vertx::EventBus#send} but specifying a <code>replyHandler</code> that will be called if the recipient
    #  subsequently replies to the message.
    # @param [String] address the address to send it to
    # @param [Object] message the message, may be {@code null}
    # @param [Hash] options delivery options
    # @yield reply handler will be called when any reply from the recipient is received, may be {@code null}
    # @return [self]
    def send(address=nil,message=nil,options=nil)
      if address.class == String && (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && !block_given? && options == nil
        @j_del.java_method(:send, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(address,::Vertx::Util::Utils.to_object(message))
        return self
      elsif address.class == String && (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && block_given? && options == nil
        @j_del.java_method(:send, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(address,::Vertx::Util::Utils.to_object(message),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
        return self
      elsif address.class == String && (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && options.class == Hash && !block_given?
        @j_del.java_method(:send, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class]).call(address,::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
        return self
      elsif address.class == String && (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && options.class == Hash && block_given?
        @j_del.java_method(:send, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class,Java::IoVertxCore::Handler.java_class]).call(address,::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling send(address,message,options)"
    end
    #  Like {::Vertx::EventBus#publish} but specifying <code>options</code> that can be used to configure the delivery.
    # @param [String] address the address to publish it to
    # @param [Object] message the message, may be {@code null}
    # @param [Hash] options the delivery options
    # @return [self]
    def publish(address=nil,message=nil,options=nil)
      if address.class == String && (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && !block_given? && options == nil
        @j_del.java_method(:publish, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(address,::Vertx::Util::Utils.to_object(message))
        return self
      elsif address.class == String && (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && options.class == Hash && !block_given?
        @j_del.java_method(:publish, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class]).call(address,::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling publish(address,message,options)"
    end
    #  Create a consumer and register it against the specified address.
    # @param [String] address the address that will register it at
    # @yield the handler that will process the received messages
    # @return [::Vertx::MessageConsumer] the event bus message consumer
    def consumer(address=nil)
      if address.class == String && !block_given?
        return ::Vertx::MessageConsumer.new(@j_del.java_method(:consumer, [Java::java.lang.String.java_class]).call(address))
      elsif address.class == String && block_given?
        return ::Vertx::MessageConsumer.new(@j_del.java_method(:consumer, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(address,(Proc.new { |event| yield(::Vertx::Message.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling consumer(address)"
    end
    #  Like {::Vertx::EventBus#consumer} but the address won't be propagated across the cluster.
    # @param [String] address the address that will register it at
    # @yield the handler that will process the received messages
    # @return [::Vertx::MessageConsumer] the event bus message consumer
    def local_consumer(address=nil)
      if address.class == String && !block_given?
        return ::Vertx::MessageConsumer.new(@j_del.java_method(:localConsumer, [Java::java.lang.String.java_class]).call(address))
      elsif address.class == String && block_given?
        return ::Vertx::MessageConsumer.new(@j_del.java_method(:localConsumer, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(address,(Proc.new { |event| yield(::Vertx::Message.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling local_consumer(address)"
    end
    #  Like {::Vertx::EventBus#sender} but specifying delivery options that will be used for configuring the delivery of
    #  the message.
    # @param [String] address the address to send it to
    # @param [Hash] options the delivery options
    # @return [::Vertx::MessageProducer] The sender
    def sender(address=nil,options=nil)
      if address.class == String && !block_given? && options == nil
        return ::Vertx::MessageProducer.new(@j_del.java_method(:sender, [Java::java.lang.String.java_class]).call(address))
      elsif address.class == String && options.class == Hash && !block_given?
        return ::Vertx::MessageProducer.new(@j_del.java_method(:sender, [Java::java.lang.String.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class]).call(address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling sender(address,options)"
    end
    #  Like {::Vertx::EventBus#publisher} but specifying delivery options that will be used for configuring the delivery of
    #  the message.
    # @param [String] address the address to publish it to
    # @param [Hash] options the delivery options
    # @return [::Vertx::MessageProducer] The publisher
    def publisher(address=nil,options=nil)
      if address.class == String && !block_given? && options == nil
        return ::Vertx::MessageProducer.new(@j_del.java_method(:publisher, [Java::java.lang.String.java_class]).call(address))
      elsif address.class == String && options.class == Hash && !block_given?
        return ::Vertx::MessageProducer.new(@j_del.java_method(:publisher, [Java::java.lang.String.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class]).call(address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling publisher(address,options)"
    end
    #  Close the event bus and release any resources held
    # @yield may be {@code null}
    # @return [void]
    def close
      if block_given?
        return @j_del.java_method(:close, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end

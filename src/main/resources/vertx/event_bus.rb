require 'vertx/measured'
require 'vertx/message'
require 'vertx/message_consumer'
require 'vertx/message_producer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.EventBus
module Vertx
  #  A distributed lightweight event bus which can encompass multiple vert.x instances.
  #  The event bus implements publish / subscribe, point to point messaging and request-response messaging.<p>
  #  Messages sent over the event bus are represented by instances of the {::Vertx::Message} class.<p>
  #  For publish / subscribe, messages can be published to an address using one of the {::Vertx::EventBus#publish} methods. An
  #  address is a simple <code>String</code> instance.<p>
  #  Handlers are registered against an address. There can be multiple handlers registered against each address, and a particular handler can
  #  be registered against multiple addresses. The event bus will route a sent message to all handlers which are
  #  registered against that address.<p>
  #  For point to point messaging, messages can be sent to an address using one of the {::Vertx::EventBus#send} methods.
  #  The messages will be delivered to a single handler, if one is registered on that address. If more than one
  #  handler is registered on the same address, Vert.x will choose one and deliver the message to that. Vert.x will
  #  aim to fairly distribute messages in a round-robin way, but does not guarantee strict round-robin under all
  #  circumstances.<p>
  #  All messages sent over the bus are transient. On event of failure of all or part of the event bus messages
  #  may be lost. Applications should be coded to cope with lost messages, e.g. by resending them, and making application
  #  services idempotent.<p>
  #  The order of messages received by any specific handler from a specific sender should match the order of messages
  #  sent from that sender.<p>
  #  When sending a message, a reply handler can be provided. If so, it will be called when the reply from the receiver
  #  has been received. Reply messages can also be replied to, etc, ad infinitum<p>
  #  Different event bus instances can be clustered together over a network, to give a single logical event bus.<p>
  #  Instances of EventBus are thread-safe.<p>
  #  If handlers are registered from an event loop, they will be executed using that same event loop. If they are
  #  registered from outside an event loop (i.e. when using Vert.x embedded) then Vert.x will assign an event loop
  #  to the handler and use it to deliver messages to that handler.
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
      @j_del.metricBaseName
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Close the EventBus and release all resources. 
    # @param [Proc] completionHandler
    # return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.close((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument completionHandler=#{completionHandler} when calling close(completionHandler)"
    end
    # @overload send(address,message)
    #   @param [String] address
    #   @param [Object] message
    # @overload send(address,message,replyHandler)
    #   @param [String] address
    #   @param [Object] message
    #   @param [Proc] replyHandler
    # @overload send(address,message,options)
    #   @param [String] address
    #   @param [Object] message
    #   @param [Hash] options
    # @overload send(address,message,options,replyHandler)
    #   @param [String] address
    #   @param [Object] message
    #   @param [Hash] options
    #   @param [Proc] replyHandler
    # return [self]
    def send(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Hash
            if param_4.class == Proc
              @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_3)),(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
              return self
            end
            @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_3)))
            return self
          end
          if param_3.class == Proc
            @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
            return self
          end
          @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2))
          return self
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling send(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling send(param_1,param_2,param_3,param_4)"
    end
    # @param [String] address
    # @param [Object] message
    # @param [Hash] options
    # return [self]
    def publish(address,message,options=nil)
      if address.class == String
        if message.class == String  ||message.class == Hash || message.class == Array
          if options.class == Hash
            @j_del.publish(address,::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
            return self
          end
          @j_del.publish(address,::Vertx::Util::Utils.to_object(message))
          return self
        end
        raise ArgumentError, "Invalid argument message=#{message} when calling publish(address,message,options)"
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling publish(address,message,options)"
    end
    #  Register a message consumer against the specified address.
    # @param [String] address
    # @param [Proc] handler
    # @return [::Vertx::MessageConsumer]
    def consumer(address,&handler)
      if address.class == String
        if handler.class == Proc
          return ::Vertx::MessageConsumer.new(@j_del.consumer(address,(Proc.new { |event| handler.call(::Vertx::Message.new(event)) })))
        end
        return ::Vertx::MessageConsumer.new(@j_del.consumer(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling consumer(address,handler)"
    end
    #  Register a local message consumer against the specified address. The handler info won't be propagated
    #  across the cluster.
    # @param [String] address
    # @param [Proc] handler
    # @return [::Vertx::MessageConsumer]
    def local_consumer(address,&handler)
      if address.class == String
        if handler.class == Proc
          return ::Vertx::MessageConsumer.new(@j_del.localConsumer(address,(Proc.new { |event| handler.call(::Vertx::Message.new(event)) })))
        end
        return ::Vertx::MessageConsumer.new(@j_del.localConsumer(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling local_consumer(address,handler)"
    end
    #  Create a message sender against the specified address. The returned sender will invoke the {::Vertx::EventBus#send}
    #  method when the stream {::Vertx::WriteStream#write} method is called with the sender
    #  address, the provided data and the sender delivery options.
    # @param [String] address
    # @param [Hash] options
    # @return [::Vertx::MessageProducer]
    def sender(address,options=nil)
      if address.class == String
        if options.class == Hash
          return ::Vertx::MessageProducer.new(@j_del.sender(address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        return ::Vertx::MessageProducer.new(@j_del.sender(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling sender(address,options)"
    end
    #  Create a message publisher against the specified address. The returned publisher will invoke the {::Vertx::EventBus#publish}
    #  method when the stream {::Vertx::WriteStream#write} method is called with the publisher
    #  address, the provided data and the publisher delivery options.
    # @param [String] address
    # @param [Hash] options
    # @return [::Vertx::MessageProducer]
    def publisher(address,options=nil)
      if address.class == String
        if options.class == Hash
          return ::Vertx::MessageProducer.new(@j_del.publisher(address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        return ::Vertx::MessageProducer.new(@j_del.publisher(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling publisher(address,options)"
    end
  end
end

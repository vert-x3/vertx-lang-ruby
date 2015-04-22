require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.Message<T>
module Vertx
  #  Represents a message that is received from the event bus in a handler.
  #  <p>
  #  Messages have a {::Vertx::Message#body}, which can be null, and also {::Vertx::Message#headers}, which can be empty.
  #  <p>
  #  If the message was sent specifying a reply handler it will also have a {::Vertx::Message#reply_address}. In that case the message
  #  can be replied to using that reply address, or, more simply by just using {::Vertx::Message#reply}.
  #  <p>
  #  If you want to notify the sender that processing failed, then {::Vertx::Message#fail} can be called.
  class Message
    # @private
    # @param j_del [::Vertx::Message] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Message] the underlying java delegate
    def j_del
      @j_del
    end
    #  The address the message was sent to
    # @return [String]
    def address
      if !block_given?
        return @j_del.java_method(:address, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling address()"
    end
    #  Multi-map of message headers. Can be empty
    # @return [::Vertx::MultiMap] the headers
    def headers
      if !block_given?
        return ::Vertx::MultiMap.new(@j_del.java_method(:headers, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling headers()"
    end
    #  The body of the message. Can be null.
    # @return [Object] the body, or null.
    def body
      if !block_given?
        if @cached_body != nil
          return @cached_body
        end
        return @cached_body = ::Vertx::Util::Utils.from_object(@j_del.java_method(:body, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling body()"
    end
    #  The reply address. Can be null.
    # @return [String] the reply address, or null, if message was sent without a reply handler.
    def reply_address
      if !block_given?
        return @j_del.java_method(:replyAddress, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling reply_address()"
    end
    #  The same as <code>reply(R message, DeliveryOptions)</code> but you can specify handler for the reply - i.e.
    #  to receive the reply to the reply.
    # @param [Object] message the reply message
    # @param [Hash] options the delivery options
    # @yield the reply handler for the reply.
    # @return [void]
    def reply(message=nil,options=nil)
      if (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && !block_given? && options == nil
        return @j_del.java_method(:reply, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(message))
      elsif (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && block_given? && options == nil
        return @j_del.java_method(:reply, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(message),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
      elsif (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && options.class == Hash && !block_given?
        return @j_del.java_method(:reply, [Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class]).call(::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
      elsif (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && options.class == Hash && block_given?
        return @j_del.java_method(:reply, [Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling reply(message,options)"
    end
    #  Signal to the sender that processing of this message failed.
    #  <p>
    #  If the message was sent specifying a result handler
    #  the handler will be called with a failure corresponding to the failure code and message specified here.
    # @param [Fixnum] failureCode A failure code to pass back to the sender
    # @param [String] message A message to pass back to the sender
    # @return [void]
    def fail(failureCode=nil,message=nil)
      if failureCode.class == Fixnum && message.class == String && !block_given?
        return @j_del.java_method(:fail, [Java::int.java_class,Java::java.lang.String.java_class]).call(failureCode,message)
      end
      raise ArgumentError, "Invalid arguments when calling fail(failureCode,message)"
    end
  end
end

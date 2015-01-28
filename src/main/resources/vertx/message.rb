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
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:address))).invoke(@j_del)
    end
    #  Multi-map of message headers. Can be empty
    # @return [::Vertx::MultiMap]
    def headers
      ::Vertx::MultiMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:headers))).invoke(@j_del))
    end
    #  The body of the message. Can be null.
    # @return [Object]
    def body
      if @cached_body != nil
        return @cached_body
      end
      @cached_body = ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:body))).invoke(@j_del))
    end
    #  The reply address. Can be null.
    # @return [String]
    def reply_address
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replyAddress))).invoke(@j_del)
    end
    #  The same as <code>reply(R message, DeliveryOptions)</code> but you can specify handler for the reply - i.e.
    #  to receive the reply to the reply.
    # @overload reply(message)
    #   @param [Object] message the message to reply with.
    # @overload reply(message,replyHandler)
    #   @param [Object] message the message to reply with.
    #   @param [Proc] replyHandler the reply handler for the reply.
    # @overload reply(message,options)
    #   @param [Object] message the reply message
    #   @param [Hash] options the delivery options
    # @overload reply(message,options,replyHandler)
    #   @param [Object] message the reply message
    #   @param [Hash] options the delivery options
    #   @param [Proc] replyHandler the reply handler for the reply.
    # @return [void]
    def reply(param_1,param_2=nil,&param_3)
      if param_1.class == String  ||param_1.class == Hash || param_1.class == Array
        if param_2.class == Hash
          if param_3.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:reply,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_2)),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
          end
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:reply,Java::java.lang.Object.java_class,Java::IoVertxCoreEventbus::DeliveryOptions.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_2)))
        end
        if param_2.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:reply,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:reply,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1))
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling reply(param_1,param_2,param_3)"
    end
    #  Signal to the sender that processing of this message failed.
    #  <p>
    #  If the message was sent specifying a result handler
    #  the handler will be called with a failure corresponding to the failure code and message specified here.
    # @param [Fixnum] failureCode A failure code to pass back to the sender
    # @param [String] message A message to pass back to the sender
    # @return [void]
    def fail(failureCode,message)
      if failureCode.class == Fixnum
        if message.class == String
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:fail,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,failureCode,message)
        end
        raise ArgumentError, "Invalid argument message=#{message} when calling fail(failureCode,message)"
      end
      raise ArgumentError, "Invalid argument failureCode=#{failureCode} when calling fail(failureCode,message)"
    end
  end
end

require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.Message<T>
module Vertx
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
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def address
      @j_del.address
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::MultiMap]: the return value (todo)
    def headers
      ::Vertx::MultiMap.new(@j_del.headers)
    end
    # THE METHOD DOC
    #
    # @return [Object]: the return value (todo)
    def body
      if @cached_body != nil
        return @cached_body
      end
      @cached_body = ::Vertx::Util::Utils.from_object(@j_del.body)
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def reply_address
      @j_del.replyAddress
    end
    # THE METHOD DOC
    #
    # @overload reply(message)
    #   @param [Object] message
    # @overload reply(message,replyHandler)
    #   @param [Object] message
    #   @param [Proc] replyHandler
    # @overload reply(message,options)
    #   @param [Object] message
    #   @param [Hash] options
    # @overload reply(message,options,replyHandler)
    #   @param [Object] message
    #   @param [Hash] options
    #   @param [Proc] replyHandler
    # return [void]
    def reply(param_1,param_2=nil,&param_3)
      if param_1.class == String  ||param_1.class == Hash || param_1.class == Array
        if param_2.class == Hash
          if param_3.class == Proc
            return @j_del.reply(::Vertx::Util::Utils.to_object(param_1),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_2)),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
          end
          return @j_del.reply(::Vertx::Util::Utils.to_object(param_1),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_2)))
        end
        if param_2.class == Proc
          return @j_del.reply(::Vertx::Util::Utils.to_object(param_1),(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
        end
        return @j_del.reply(::Vertx::Util::Utils.to_object(param_1))
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling reply(param_1,param_2,param_3)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] failureCode
    # @param [String] message
    # return [void]
    def fail(failureCode,message)
      if failureCode.class == Fixnum
        if message.class == String
          return @j_del.fail(failureCode,message)
        end
        raise ArgumentError, "Invalid argument message=#{message} when calling fail(failureCode,message)"
      end
      raise ArgumentError, "Invalid argument failureCode=#{failureCode} when calling fail(failureCode,message)"
    end
  end
end

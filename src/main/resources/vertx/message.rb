include_class 'io.vertx.core.MultiMap'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
include_class 'io.vertx.core.eventbus.DeliveryOptions'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.Message<T>
module Vertx
  class Message
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def address()
      @j_del.address
    end
    def headers()
      Vertx::MultiMap.new(@j_del.headers)
    end
    def body()
        if @cached_body != nil
          return @cached_body
        end
      @cached_body = Vertx::Util::Utils.from_object(@j_del.body)
    end
    def reply_address()
      @j_del.replyAddress
    end
    def reply(param_1=nil,param_2=nil,param_3=nil)
        if param_1 != nil && (param_1.class == String  ||param_1.class == Hash || param_1.class == Array)
            if param_2 == nil || param_2.class == Hash
                if param_3 != nil && param_3.class == Proc
                  return @j_del.reply(Vertx::Util::Utils.to_object(param_1),param_2 != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(param_2)) : nil,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Message.new(ar.result) : nil) }))
                end
              return @j_del.reply(Vertx::Util::Utils.to_object(param_1),param_2 != nil ? DeliveryOptions.new(Vertx::Util::Utils.to_json_object(param_2)) : nil)
            end
            if param_2 != nil && param_2.class == Proc
              return @j_del.reply(Vertx::Util::Utils.to_object(param_1),(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Message.new(ar.result) : nil) }))
            end
          return @j_del.reply(Vertx::Util::Utils.to_object(param_1))
        end
      raise ArgumentError, 'dispatch error'
    end
    def fail(failure_code,message)
      if failure_code != nil && failure_code.class == Fixnum
        if message != nil && message.class == String
          return @j_del.fail(failure_code,message)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.eventbus.Message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageConsumer<T>
module Vertx
  class MessageConsumer
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause()
      return self
    end
    def resume()
      @j_del.resume()
      return self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def body_stream()
      return ReadStream.new(@j_del.bodyStream())
    end
    def is_registered()
      return @j_del.isRegistered()
    end
    def address()
      return @j_del.address()
    end
    def set_max_buffered_messages(max_buffered_messages)
      if max_buffered_messages != nil && max_buffered_messages.class == Fixnum
        return MessageConsumer.new(@j_del.setMaxBufferedMessages(max_buffered_messages))
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_max_buffered_messages()
      return @j_del.getMaxBufferedMessages()
    end
    def completion_handler(completion_handler)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.completionHandler(nil)
      end
      raise ArgumentError, 'dispatch error'
    end
    def unregister(completion_handler=nil)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.unregister(nil)
      end
      return @j_del.unregister()
    end
  end
end

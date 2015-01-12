require 'vertx/read_stream'
require 'vertx/message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageConsumer<T>
module Vertx
  class MessageConsumer
    include Vertx::ReadStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Message.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause
      self
    end
    def resume()
      @j_del.resume
      self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def body_stream()
      Vertx::ReadStreamImpl.new(@j_del.bodyStream)
    end
    def is_registered()
      @j_del.isRegistered
    end
    def address()
      @j_del.address
    end
    def set_max_buffered_messages(max_buffered_messages)
      if max_buffered_messages != nil && max_buffered_messages.class == Fixnum
        return Vertx::MessageConsumer.new(@j_del.setMaxBufferedMessages(max_buffered_messages))
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_max_buffered_messages()
      @j_del.getMaxBufferedMessages
    end
    def completion_handler(completion_handler)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.completionHandler((Proc.new { |ar| completion_handler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def unregister(completion_handler=nil)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.unregister((Proc.new { |ar| completion_handler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.unregister
    end
  end
end

require 'vertx/read_stream'
require 'vertx/message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageConsumer<T>
module Vertx
  class MessageConsumer
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::MessageConsumer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MessageConsumer] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Message.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # THE METHOD DOC
    #
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # THE METHOD DOC
    #
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # THE METHOD DOC
    #
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::ReadStream]: the return value (todo)
    def body_stream
      ::Vertx::ReadStreamImpl.new(@j_del.bodyStream)
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_registered
      @j_del.isRegistered
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def address
      @j_del.address
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] maxBufferedMessages
    # @return [::Vertx::MessageConsumer]: the return value (todo)
    def set_max_buffered_messages(maxBufferedMessages)
      if maxBufferedMessages.class == Fixnum
        return ::Vertx::MessageConsumer.new(@j_del.setMaxBufferedMessages(maxBufferedMessages))
      end
      raise ArgumentError, "Invalid argument maxBufferedMessages=#{maxBufferedMessages} when calling set_max_buffered_messages(maxBufferedMessages)"
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def get_max_buffered_messages
      @j_del.getMaxBufferedMessages
    end
    # THE METHOD DOC
    #
    # @param [Proc] completionHandler
    # return [void]
    def completion_handler(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.completionHandler((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument completionHandler=#{completionHandler} when calling completion_handler(completionHandler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] completionHandler
    # return [void]
    def unregister(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.unregister((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.unregister
    end
  end
end

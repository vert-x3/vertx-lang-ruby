require 'vertx/read_stream'
require 'vertx/message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageConsumer<T>
module Vertx
  #  An event bus consumer object representing a stream of message to an {::Vertx::EventBus} address that can
  #  be read from.<p>
  # 
  #  The {::Vertx::EventBus#consumer} or {::Vertx::EventBus#local_consumer}
  #  create a new consumer, the returned consumer is not yet registered against the event bus. Registration
  #  is effective after the {::Vertx::MessageConsumer#handler} method is invoked.<p>
  # 
  #  The consumer is unregistered from the event bus using the {::Vertx::MessageConsumer#unregister} method or by calling the
  #  {::Vertx::MessageConsumer#handler} with a null value..
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
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Message.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    #  @return a read stream for the body of the message stream.
    # @return [::Vertx::ReadStream]
    def body_stream
      ::Vertx::ReadStreamImpl.new(@j_del.bodyStream)
    end
    #  @return true if the current consumer is registered
    # @return [true,false]
    def is_registered
      @j_del.isRegistered
    end
    #  @return The address the handler was registered with.
    # @return [String]
    def address
      @j_del.address
    end
    #  Set the number of messages this registration will buffer when this stream is paused. The default
    #  value is <code>0</code>. When a new value is set, buffered messages may be discarded to reach
    #  the new value.
    # @param [Fixnum] maxBufferedMessages
    # @return [::Vertx::MessageConsumer]
    def set_max_buffered_messages(maxBufferedMessages)
      if maxBufferedMessages.class == Fixnum
        return ::Vertx::MessageConsumer.new(@j_del.setMaxBufferedMessages(maxBufferedMessages))
      end
      raise ArgumentError, "Invalid argument maxBufferedMessages=#{maxBufferedMessages} when calling set_max_buffered_messages(maxBufferedMessages)"
    end
    #  @return the maximum number of messages that can be buffered when this stream is paused
    # @return [Fixnum]
    def get_max_buffered_messages
      @j_del.getMaxBufferedMessages
    end
    #  Optional method which can be called to indicate when the registration has been propagated across the cluster.
    # @param [Proc] completionHandler
    # return [void]
    def completion_handler(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.completionHandler((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument completionHandler=#{completionHandler} when calling completion_handler(completionHandler)"
    end
    #  Unregisters the handler which created this registration
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

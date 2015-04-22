require 'vertx/read_stream'
require 'vertx/message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageConsumer<T>
module Vertx
  #  An event bus consumer object representing a stream of message to an {::Vertx::EventBus} address that can
  #  be read from.
  #  <p>
  #  The {::Vertx::EventBus#consumer} or {::Vertx::EventBus#local_consumer}
  #  creates a new consumer, the returned consumer is not yet registered against the event bus. Registration
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
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Message.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    # @return [self]
    def pause
      if !block_given?
        @j_del.java_method(:pause, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    # @return [self]
    def resume
      if !block_given?
        @j_del.java_method(:resume, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    #  @return a read stream for the body of the message stream.
    # @return [::Vertx::ReadStream]
    def body_stream
      if !block_given?
        return ::Vertx::ReadStreamImpl.new(@j_del.java_method(:bodyStream, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling body_stream()"
    end
    #  @return true if the current consumer is registered
    # @return [true,false]
    def is_registered
      if !block_given?
        return @j_del.java_method(:isRegistered, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_registered()"
    end
    #  @return The address the handler was registered with.
    # @return [String]
    def address
      if !block_given?
        return @j_del.java_method(:address, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling address()"
    end
    #  Set the number of messages this registration will buffer when this stream is paused. The default
    #  value is <code>0</code>. When a new value is set, buffered messages may be discarded to reach
    #  the new value.
    # @param [Fixnum] maxBufferedMessages the maximum number of messages that can be buffered
    # @return [::Vertx::MessageConsumer] this registration
    def set_max_buffered_messages(maxBufferedMessages=nil)
      if maxBufferedMessages.class == Fixnum && !block_given?
        return ::Vertx::MessageConsumer.new(@j_del.java_method(:setMaxBufferedMessages, [Java::int.java_class]).call(maxBufferedMessages))
      end
      raise ArgumentError, "Invalid arguments when calling set_max_buffered_messages(maxBufferedMessages)"
    end
    #  @return the maximum number of messages that can be buffered when this stream is paused
    # @return [Fixnum]
    def get_max_buffered_messages
      if !block_given?
        return @j_del.java_method(:getMaxBufferedMessages, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_max_buffered_messages()"
    end
    #  Optional method which can be called to indicate when the registration has been propagated across the cluster.
    # @yield the completion handler
    # @return [void]
    def completion_handler
      if block_given?
        return @j_del.java_method(:completionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling completion_handler()"
    end
    #  Unregisters the handler which created this registration
    # @yield the handler called when the unregister is done. For example in a cluster when all nodes of the event bus have been unregistered.
    # @return [void]
    def unregister
      if !block_given?
        return @j_del.java_method(:unregister, []).call()
      elsif block_given?
        return @j_del.java_method(:unregister, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling unregister()"
    end
  end
end

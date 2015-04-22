require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Future<T>
module Vertx
  #  Represents the result of an action that may, or may not, have occurred yet.
  #  <p>
  class Future
    # @private
    # @param j_del [::Vertx::Future] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Future] the underlying java delegate
    def j_del
      @j_del
    end
    #  Create a future that hasn't completed yet
    # @return [::Vertx::Future] the future
    def self.future
      if !block_given?
        return ::Vertx::Future.new(Java::IoVertxCore::Future.java_method(:future, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling future()"
    end
    #  Created a succeeded future with the specified result.
    # @param [Object] result the result
    # @return [::Vertx::Future] the future
    def self.succeeded_future(result=nil)
      if !block_given? && result == nil
        return ::Vertx::Future.new(Java::IoVertxCore::Future.java_method(:succeededFuture, []).call())
      elsif (result.class == String  || result.class == Hash || result.class == Array || result.class == NilClass || result.class == TrueClass || result.class == FalseClass || result.class == Fixnum || result.class == Float) && !block_given?
        return ::Vertx::Future.new(Java::IoVertxCore::Future.java_method(:succeededFuture, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(result)))
      end
      raise ArgumentError, "Invalid arguments when calling succeeded_future(result)"
    end
    #  Create a failed future with the specified failure message.
    # @param [String] failureMessage the failure message
    # @return [::Vertx::Future] the future
    def self.failed_future(failureMessage=nil)
      if failureMessage.class == String && !block_given?
        return ::Vertx::Future.new(Java::IoVertxCore::Future.java_method(:failedFuture, [Java::java.lang.String.java_class]).call(failureMessage))
      end
      raise ArgumentError, "Invalid arguments when calling failed_future(failureMessage)"
    end
    #  Has the future completed?
    #  <p>
    #  It's completed if it's either succeeded or failed.
    # @return [true,false] true if completed, false if not
    def is_complete
      if !block_given?
        return @j_del.java_method(:isComplete, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_complete()"
    end
    #  Set a handler for the result.
    #  <p>
    #  If the future has already been completed it will be called immediately. Otherwise it will be called when the
    #  future is completed.
    # @yield the Handler that will be called with the result
    # @return [void]
    def set_handler
      if block_given?
        return @j_del.java_method(:setHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling set_handler()"
    end
    #  Set the result. Any handler will be called, if there is one, and the future will be marked as completed.
    # @param [Object] result the result
    # @return [void]
    def complete(result=nil)
      if !block_given? && result == nil
        return @j_del.java_method(:complete, []).call()
      elsif (result.class == String  || result.class == Hash || result.class == Array || result.class == NilClass || result.class == TrueClass || result.class == FalseClass || result.class == Fixnum || result.class == Float) && !block_given?
        return @j_del.java_method(:complete, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(result))
      end
      raise ArgumentError, "Invalid arguments when calling complete(result)"
    end
    #  Set the failure. Any handler will be called, if there is one, and the future will be marked as completed.
    # @param [String] failureMessage the failure message
    # @return [void]
    def fail(failureMessage=nil)
      if failureMessage.class == String && !block_given?
        return @j_del.java_method(:fail, [Java::java.lang.String.java_class]).call(failureMessage)
      end
      raise ArgumentError, "Invalid arguments when calling fail(failureMessage)"
    end
  end
end

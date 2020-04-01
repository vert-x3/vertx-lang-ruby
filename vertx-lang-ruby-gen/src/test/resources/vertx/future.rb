#
# This code was copied from generated code from vertx-lang-rb module
#
require 'vertx/promise'
require 'vertx/future'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Future
module Vertx
  #  Represents the result of an action that may, or may not, have occurred yet.
  #  <p>
  class Future
    # @private
    # @param j_del [::Vertx::Future] the java delegate
    def initialize(j_del, j_arg_T=nil)
      @j_del = j_del
      @j_arg_T = j_arg_T != nil ? j_arg_T : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Vertx::Future] the underlying java delegate
    def j_del
      @j_del
    end
    #  Map the failure of a future to a specific <code>value</code>.<p>
    #
    #  When this future fails, this <code>value</code> will complete the future returned by this method call.<p>
    #
    #  When this future succeeds, the result will be propagated to the returned future.
    # @overload otherwise(mapper)
    #   @yield the mapper function
    # @overload otherwise(value)
    #   @param [Object] value the value that eventually completes the mapped future
    # @return [::Vertx::Future] the mapped future
    def otherwise(*args)
      if block_given? && args[0] == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:otherwise, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| @j_arg_T.unwrap(yield(::Vertx::Util::Utils.from_throwable(event))) unless !block_given? })),::Vertx::Future, nil)
      elsif @j_arg_T.accept?(args[0]) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:otherwise, [Java::java.lang.Object.java_class]).call(@j_arg_T.unwrap(args[0])),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling otherwise(#{args[0]})"
      end
    end
    #  Handles a failure of this Future by returning the result of another Future.
    #  If the mapper fails, then the returned future will be failed with this failure.
    # @overload recover(mapper)
    #   @yield A function which takes the exception of a failure and returns a new future.
    # @return [::Vertx::Future] A recovered future
    def recover(*args)
      if block_given? && args[0] == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:recover, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)).j_del unless !block_given? })),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling recover(#{args[0]})"
      end
    end
    #  Add a handler to be notified of the result.
    #  <br/>
    # @overload onComplete(handler)
    #   @yield the handler that will be called with the result
    # @return [self]
    def on_complete
      if true
        if (block_given?)
          @j_del.java_method(:onComplete, [Java::IoVertxCore::Handler.java_class]).call(block_given? ? Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_T.wrap(ar.result) : nil) } : promise)
          return self
        else
          promise = ::Vertx::Util::Utils.promise
          @j_del.java_method(:onComplete, [Java::IoVertxCore::Handler.java_class]).call(block_given? ? Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_T.wrap(ar.result) : nil) } : promise)
          return ::Vertx::Util::Utils.safe_create(promise.future(),::Vertx::Future, nil)
        end
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling on_complete()"
      end
    end
    #  A Throwable describing failure. This will be null if the operation succeeded.
    # @overload cause()
    # @return [Exception] the cause or null if the operation succeeded.
    def cause
      if !block_given?
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:cause, []).call())
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling cause()"
      end
    end
    #  Add a handler to be notified of the failed result.
    #  <br/>
    # @overload onFailure(handler)
    #   @yield the handler that will be called with the failed result
    # @return [self]
    def on_failure
      if true
        @j_del.java_method(:onFailure, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) unless !block_given? }))
        return self
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling on_failure()"
      end
    end
    #  Map the result of a future to <code>null</code>.<p>
    #
    #  This is a conveniency for <code>future.map((T) null)</code> or <code>future.map((Void) null)</code>.<p>
    #
    #  When this future succeeds, <code>null</code> will complete the future returned by this method call.<p>
    #
    #  When this future fails, the failure will be propagated to the returned future.
    # @overload mapEmpty()
    # @return [::Vertx::Future] the mapped future
    def map_empty
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:mapEmpty, []).call(),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling map_empty()"
      end
    end
    #  Did it fail?
    # @overload failed()
    # @return [true,false] true if it failed or false otherwise
    def failed?
      if !block_given?
        return @j_del.java_method(:failed, []).call()
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling failed?()"
      end
    end
    # @overload getHandler()
    # @return [Proc] the handler for the result
    def get_handler
      if !block_given?
        return ::Vertx::Util::Utils.to_async_result_handler_proc(@j_del.java_method(:getHandler, []).call()) { |val| @j_arg_T.unwrap(val) }
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling get_handler()"
      end
    end
    #  Map the failure of a future to <code>null</code>.<p>
    #
    #  This is a convenience for <code>future.otherwise((T) null)</code>.<p>
    #
    #  When this future fails, the <code>null</code> value will complete the future returned by this method call.<p>
    #
    #  When this future succeeds, the result will be propagated to the returned future.
    # @overload otherwiseEmpty()
    # @return [::Vertx::Future] the mapped future
    def otherwise_empty
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:otherwiseEmpty, []).call(),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling otherwise_empty()"
      end
    end
    #  Create a failed future with the specified failure message.
    # @overload failedFuture(t)
    #   @param [Exception] t the failure cause as a Throwable
    # @overload failedFuture(failureMessage)
    #   @param [String] failureMessage the failure message
    # @return [::Vertx::Future] the future
    def self.failed_future(*args)
      if args[0].is_a?(Exception) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:failedFuture, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(args[0])),::Vertx::Future, nil)
      elsif args[0].class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:failedFuture, [Java::java.lang.String.java_class]).call(args[0]),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling failed_future(#{args[0]})"
      end
    end
    #  Alias for {::Vertx::Future#compose}.
    # @overload flatMap(mapper)
    #   @yield
    # @return [::Vertx::Future]
    def flat_map(*args)
      if block_given? && args[0] == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:flatMap, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(@j_arg_T.wrap(event)).j_del unless !block_given? })),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling flat_map(#{args[0]})"
      end
    end
    #  The result of the operation. This will be null if the operation failed.
    # @overload result()
    # @return [Object] the result or null if the operation failed.
    def result
      if !block_given?
        return @j_arg_T.wrap(@j_del.java_method(:result, []).call())
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling result()"
      end
    end
    #  Compose this future with a <code>successMapper</code> and <code>failureMapper</code> functions.<p>
    #
    #  When this future (the one on which <code>compose</code> is called) succeeds, the <code>successMapper</code> will be called with
    #  the completed value and this mapper returns another future object. This returned future completion will complete
    #  the future returned by this method call.<p>
    #
    #  When this future (the one on which <code>compose</code> is called) fails, the <code>failureMapper</code> will be called with
    #  the failure and this mapper returns another future object. This returned future completion will complete
    #  the future returned by this method call.<p>
    #
    #  If any mapper function throws an exception, the returned future will be failed with this exception.<p>
    # @overload compose(mapper)
    #   @yield the mapper function
    # @overload compose(successMapper,failureMapper)
    #   @param [Proc] successMapper the function mapping the success
    #   @yield the function mapping the failure
    # @return [::Vertx::Future] the composed future
    def compose(*args)
      if block_given? && args[0] == nil && args[1] == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:compose, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(@j_arg_T.wrap(event)).j_del unless !block_given? })),::Vertx::Future, nil)
      elsif args[0].class == Proc && block_given? && args[1] == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:compose, [Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| args[0].call(@j_arg_T.wrap(event)).j_del unless args[0] == nil }),(Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)).j_del unless !block_given? })),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling compose(#{args[0]},#{args[1]})"
      end
    end
    #  Create a future that hasn't completed yet and that is passed to the <code>handler</code> before it is returned.
    # @overload future(handler)
    #   @yield the handler
    # @return [::Vertx::Future] the future.
    def self.future
      if true
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:future, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Promise, nil)) unless !block_given? })),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling future()"
      end
    end
    #  Created a succeeded future with the specified result.
    # @overload succeededFuture()
    # @overload succeededFuture(result)
    #   @param [Object] result the result
    # @return [::Vertx::Future] the future
    def self.succeeded_future(*args)
      if !block_given? && args[0] == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:succeededFuture, []).call(),::Vertx::Future, nil)
      elsif ::Vertx::Util::unknown_type.accept?(args[0]) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:succeededFuture, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(args[0])),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling succeeded_future(#{args[0]})"
      end
    end
    #  Map the result of a future to a specific <code>value</code>.<p>
    #
    #  When this future succeeds, this <code>value</code> will complete the future returned by this method call.<p>
    #
    #  When this future fails, the failure will be propagated to the returned future.
    # @overload map(mapper)
    #   @yield the mapper function
    # @overload map(value)
    #   @param [Object] value the value that eventually completes the mapped future
    # @return [::Vertx::Future] the mapped future
    def map(*args)
      if block_given? && args[0] == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:map, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| ::Vertx::Util::Utils.to_object(yield(@j_arg_T.wrap(event))) unless !block_given? })),::Vertx::Future, nil)
      elsif ::Vertx::Util::unknown_type.accept?(args[0]) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:map, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(args[0])),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling map(#{args[0]})"
      end
    end
    #  Did it succeed?
    # @overload succeeded()
    # @return [true,false] true if it succeded or false otherwise
    def succeeded?
      if !block_given?
        return @j_del.java_method(:succeeded, []).call()
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling succeeded?()"
      end
    end
    #  Add a handler to be notified of the succeeded result.
    #  <br/>
    # @overload onSuccess(handler)
    #   @yield the handler that will be called with the succeeded result
    # @return [self]
    def on_success
      if true
        @j_del.java_method(:onSuccess, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(@j_arg_T.wrap(event)) unless !block_given? }))
        return self
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling on_success()"
      end
    end
    #  Has the future completed?
    #  <p>
    #  It's completed if it's either succeeded or failed.
    # @overload isComplete()
    # @return [true,false] true if completed, false if not
    def complete?
      if !block_given?
        return @j_del.java_method(:isComplete, []).call()
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling complete?()"
      end
    end
  end
end

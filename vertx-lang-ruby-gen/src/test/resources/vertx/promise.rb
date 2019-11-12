#
# This code was copied from generated code from vertx-lang-rb module
#
require 'vertx/future'
require 'vertx/future'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Promise
module Vertx
  #  Represents the writable side of an action that may, or may not, have occurred yet.
  #  <p>
  #  The {::Vertx::Promise#future} method returns the {::Vertx::Future} associated with a promise, the future
  #  can be used for getting notified of the promise completion and retrieve its value.
  #  <p>
  #  A promise extends <code>Handler<AsyncResult<T>></code> so it can be used as a callback.
  class Promise
    # @private
    # @param j_del [::Vertx::Promise] the java delegate
    def initialize(j_del, j_arg_T=nil)
      @j_del = j_del
      @j_arg_T = j_arg_T != nil ? j_arg_T : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Vertx::Promise] the underlying java delegate
    def j_del
      @j_del
    end
    #  Calls {::Vertx::Promise#fail} with the <code>message</code>.
    # @overload fail(cause)
    #   @param [Exception] cause the failure cause
    # @overload fail(message)
    #   @param [String] message the failure message
    # @return [void]
    def fail(*args)
      if args[0].is_a?(Exception) && !block_given?
        return @j_del.java_method(:fail, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(args[0]))
      elsif args[0].class == String && !block_given?
        return @j_del.java_method(:fail, [Java::java.lang.String.java_class]).call(args[0])
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling fail(#{args[0]})"
      end
    end
    #  Create a failed promise with the specified <code>failureMessage</code>.
    # @overload failedPromise(cause)
    #   @param [Exception] cause the failure cause as a Throwable
    # @overload failedPromise(failureMessage)
    #   @param [String] failureMessage the failure message
    # @return [::Vertx::Promise] the promise
    def self.failed_promise(*args)
      if args[0].is_a?(Exception) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Promise.java_method(:failedPromise, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(args[0])),::Vertx::Promise, nil)
      elsif args[0].class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Promise.java_method(:failedPromise, [Java::java.lang.String.java_class]).call(args[0]),::Vertx::Promise, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling failed_promise(#{args[0]})"
      end
    end
    #  Created a succeeded promise with the specified <code>result</code>.
    # @overload succeededPromise()
    # @overload succeededPromise(result)
    #   @param [Object] result the result
    # @return [::Vertx::Promise] the promise
    def self.succeeded_promise(*args)
      if !block_given? && args[0] == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Promise.java_method(:succeededPromise, []).call(),::Vertx::Promise, nil)
      elsif ::Vertx::Util::unknown_type.accept?(args[0]) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Promise.java_method(:succeededPromise, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(args[0])),::Vertx::Promise, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling succeeded_promise(#{args[0]})"
      end
    end
    # @overload future()
    # @return [::Vertx::Future] the {::Vertx::Future} associated with this promise, it can be used to be aware of the promise completion
    def future
      if !block_given?
        if @cached_future != nil
          return @cached_future
        end
        return @cached_future = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:future, []).call(),::Vertx::Future, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling future()"
      end
    end
    #  Like {::Vertx::Promise#complete} but returns <code>false</code> when the promise is already completed instead of throwing
    #  an IllegalStateException, it returns <code>true</code> otherwise.
    # @overload tryComplete()
    # @overload tryComplete(result)
    #   @param [Object] result the result
    # @return [true,false] <code>false</code> when the future is already completed
    def try_complete?(*args)
      if !block_given? && args[0] == nil
        return @j_del.java_method(:tryComplete, []).call()
      elsif @j_arg_T.accept?(args[0]) && !block_given?
        return @j_del.java_method(:tryComplete, [Java::java.lang.Object.java_class]).call(@j_arg_T.unwrap(args[0]))
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling try_complete?(#{args[0]})"
      end
    end
    #  Create a promise that hasn't completed yet
    # @overload promise()
    # @return [::Vertx::Promise] the promise
    def self.promise
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Promise.java_method(:promise, []).call(),::Vertx::Promise, nil)
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling promise()"
      end
    end
    #  Calls {::Vertx::Promise#fail} with the <code>message</code>.
    # @overload tryFail(cause)
    #   @param [Exception] cause the failure cause
    # @overload tryFail(message)
    #   @param [String] message the failure message
    # @return [true,false] false when the future is already completed
    def try_fail?(*args)
      if args[0].is_a?(Exception) && !block_given?
        return @j_del.java_method(:tryFail, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(args[0]))
      elsif args[0].class == String && !block_given?
        return @j_del.java_method(:tryFail, [Java::java.lang.String.java_class]).call(args[0])
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling try_fail?(#{args[0]})"
      end
    end
    #  Set the result. Any handler will be called, if there is one, and the promise will be marked as completed.
    #  <p/>
    #  Any handler set on the associated promise will be called.
    # @overload complete()
    # @overload complete(result)
    #   @param [Object] result the result
    # @return [void]
    def complete(*args)
      if !block_given? && args[0] == nil
        return @j_del.java_method(:complete, []).call()
      elsif @j_arg_T.accept?(args[0]) && !block_given?
        return @j_del.java_method(:complete, [Java::java.lang.Object.java_class]).call(@j_arg_T.unwrap(args[0]))
      end
      if defined?(super)
        super
      else
        raise ArgumentError, "Invalid arguments when calling complete(#{args[0]})"
      end
    end
  end
end

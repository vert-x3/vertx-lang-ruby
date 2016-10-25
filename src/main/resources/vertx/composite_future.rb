require 'vertx/future'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.CompositeFuture
module Vertx
  #  The composite future wraps a list of {::Vertx::Futurefutures}, it is useful when several futures
  #  needs to be coordinated.
  class CompositeFuture < ::Vertx::Future
    # @private
    # @param j_del [::Vertx::CompositeFuture] the java delegate
    def initialize(j_del)
      super(j_del, ::Vertx::CompositeFuture.j_api_type)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::CompositeFuture] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      CompositeFuture.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCore::CompositeFuture.java_class
    end
    #  Returns true if a wrapped future is completed
    # @param [Fixnum] index the wrapped future index
    # @return [true,false]
    def complete?(index=nil)
      if !block_given? && index == nil
        return @j_del.java_method(:isComplete, []).call()
      elsif index.class == Fixnum && !block_given?
        return @j_del.java_method(:isComplete, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling complete?(index)"
    end
    #  Set the result. Any handler will be called, if there is one, and the future will be marked as completed.
    # @param [::Vertx::CompositeFuture] result the result
    # @return [void]
    def complete(result=nil)
      if !block_given? && result == nil
        return @j_del.java_method(:complete, []).call()
      elsif result.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:complete, [Java::IoVertxCore::CompositeFuture.java_class]).call(result.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling complete(result)"
    end
    #  Set the failure. Any handler will be called, if there is one, and the future will be marked as completed.
    # @overload fail(throwable)
    #   @param [Exception] throwable the failure cause
    # @overload fail(failureMessage)
    #   @param [String] failureMessage the failure message
    # @return [void]
    def fail(param_1=nil)
      if param_1.is_a?(Exception) && !block_given?
        return @j_del.java_method(:fail, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(param_1))
      elsif param_1.class == String && !block_given?
        return @j_del.java_method(:fail, [Java::java.lang.String.java_class]).call(param_1)
      end
      raise ArgumentError, "Invalid arguments when calling fail(param_1)"
    end
    #  The result of the operation. This will be null if the operation failed.
    # @return [::Vertx::CompositeFuture] the result or null if the operation failed.
    def result
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:result, []).call(),::Vertx::CompositeFuture)
      end
      raise ArgumentError, "Invalid arguments when calling result()"
    end
    #  Returns a cause of a wrapped future
    # @param [Fixnum] index the wrapped future index
    # @return [Exception]
    def cause(index=nil)
      if !block_given? && index == nil
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:cause, []).call())
      elsif index.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:cause, [Java::int.java_class]).call(index))
      end
      raise ArgumentError, "Invalid arguments when calling cause(index)"
    end
    #  Returns true if a wrapped future is succeeded
    # @param [Fixnum] index the wrapped future index
    # @return [true,false]
    def succeeded?(index=nil)
      if !block_given? && index == nil
        return @j_del.java_method(:succeeded, []).call()
      elsif index.class == Fixnum && !block_given?
        return @j_del.java_method(:succeeded, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling succeeded?(index)"
    end
    #  Returns true if a wrapped future is failed
    # @param [Fixnum] index the wrapped future index
    # @return [true,false]
    def failed?(index=nil)
      if !block_given? && index == nil
        return @j_del.java_method(:failed, []).call()
      elsif index.class == Fixnum && !block_given?
        return @j_del.java_method(:failed, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling failed?(index)"
    end
    #  Compose this future with a provided <code>next</code> future.<p>
    # 
    #  When this (the one on which <code>compose</code> is called) future succeeds, the <code>handler</code> will be called with
    #  the completed value, this handler should complete the next future.<p>
    # 
    #  If the <code>handler</code> throws an exception, the returned future will be failed with this exception.<p>
    # 
    #  When this future fails, the failure will be propagated to the <code>next</code> future and the <code>handler</code>
    #  will not be called.
    # @overload compose(mapper)
    #   @yield the mapper function
    # @overload compose(handler,next)
    #   @param [Proc] handler the handler
    #   @param [::Vertx::Future] _next the next future
    # @return [::Vertx::Future] the next future, used for chaining
    def compose(param_1=nil,param_2=nil)
      if block_given? && param_1 == nil && param_2 == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:compose, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::CompositeFuture)).j_del })),::Vertx::Future, nil)
      elsif param_1.class == Proc && param_2.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:compose, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Future.java_class]).call((Proc.new { |event| param_1.call(::Vertx::Util::Utils.safe_create(event,::Vertx::CompositeFuture)) }),param_2.j_del),::Vertx::Future, nil)
      end
      raise ArgumentError, "Invalid arguments when calling compose(param_1,param_2)"
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
    def map(param_1=nil)
      if block_given? && param_1 == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:map, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| ::Vertx::Util::Utils.to_object(yield(::Vertx::Util::Utils.safe_create(event,::Vertx::CompositeFuture))) })),::Vertx::Future, nil)
      elsif ::Vertx::Util::unknown_type.accept?(param_1) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:map, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(param_1)),::Vertx::Future, nil)
      end
      raise ArgumentError, "Invalid arguments when calling map(param_1)"
    end
    # @return [Proc] an handler completing this future
    def completer
      if !block_given?
        if @cached_completer != nil
          return @cached_completer
        end
        return @cached_completer = ::Vertx::Util::Utils.to_async_result_handler_proc(@j_del.java_method(:completer, []).call()) { |val| val.j_del }
      end
      raise ArgumentError, "Invalid arguments when calling completer()"
    end
    #  Like {::Vertx::CompositeFuture#all} but with 6 futures.
    # @overload all(futures)
    #   @param [Array<::Vertx::Future>] futures 
    # @overload all(f1,f2)
    #   @param [::Vertx::Future] f1 future
    #   @param [::Vertx::Future] f2 future
    # @overload all(f1,f2,f3)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    # @overload all(f1,f2,f3,f4)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    # @overload all(f1,f2,f3,f4,f5)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    #   @param [::Vertx::Future] f5 
    # @overload all(f1,f2,f3,f4,f5,f6)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    #   @param [::Vertx::Future] f5 
    #   @param [::Vertx::Future] f6 
    # @return [::Vertx::CompositeFuture]
    def self.all(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil,param_6=nil)
      if param_1.class == Array && !block_given? && param_2 == nil && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::JavaUtil::List.java_class]).call(param_1.map { |element| element.j_del }),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && !block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && !block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && !block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && param_5.class.method_defined?(:j_del) && !block_given? && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del,param_5.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && param_5.class.method_defined?(:j_del) && param_6.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del,param_5.j_del,param_6.j_del),::Vertx::CompositeFuture)
      end
      raise ArgumentError, "Invalid arguments when calling all(param_1,param_2,param_3,param_4,param_5,param_6)"
    end
    #  Like {::Vertx::CompositeFuture#any} but with 6 futures.
    # @overload any(futures)
    #   @param [Array<::Vertx::Future>] futures 
    # @overload any(f1,f2)
    #   @param [::Vertx::Future] f1 future
    #   @param [::Vertx::Future] f2 future
    # @overload any(f1,f2,f3)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    # @overload any(f1,f2,f3,f4)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    # @overload any(f1,f2,f3,f4,f5)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    #   @param [::Vertx::Future] f5 
    # @overload any(f1,f2,f3,f4,f5,f6)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    #   @param [::Vertx::Future] f5 
    #   @param [::Vertx::Future] f6 
    # @return [::Vertx::CompositeFuture]
    def self.any(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil,param_6=nil)
      if param_1.class == Array && !block_given? && param_2 == nil && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::JavaUtil::List.java_class]).call(param_1.map { |element| element.j_del }),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && !block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && !block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && !block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && param_5.class.method_defined?(:j_del) && !block_given? && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del,param_5.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && param_5.class.method_defined?(:j_del) && param_6.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del,param_5.j_del,param_6.j_del),::Vertx::CompositeFuture)
      end
      raise ArgumentError, "Invalid arguments when calling any(param_1,param_2,param_3,param_4,param_5,param_6)"
    end
    #  Like {::Vertx::CompositeFuture#join} but with 6 futures.
    # @overload join(futures)
    #   @param [Array<::Vertx::Future>] futures 
    # @overload join(f1,f2)
    #   @param [::Vertx::Future] f1 future
    #   @param [::Vertx::Future] f2 future
    # @overload join(f1,f2,f3)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    # @overload join(f1,f2,f3,f4)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    # @overload join(f1,f2,f3,f4,f5)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    #   @param [::Vertx::Future] f5 
    # @overload join(f1,f2,f3,f4,f5,f6)
    #   @param [::Vertx::Future] f1 
    #   @param [::Vertx::Future] f2 
    #   @param [::Vertx::Future] f3 
    #   @param [::Vertx::Future] f4 
    #   @param [::Vertx::Future] f5 
    #   @param [::Vertx::Future] f6 
    # @return [::Vertx::CompositeFuture]
    def self.join(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil,param_6=nil)
      if param_1.class == Array && !block_given? && param_2 == nil && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:join, [Java::JavaUtil::List.java_class]).call(param_1.map { |element| element.j_del }),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && !block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:join, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && !block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:join, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && !block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:join, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && param_5.class.method_defined?(:j_del) && !block_given? && param_6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:join, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del,param_5.j_del),::Vertx::CompositeFuture)
      elsif param_1.class.method_defined?(:j_del) && param_2.class.method_defined?(:j_del) && param_3.class.method_defined?(:j_del) && param_4.class.method_defined?(:j_del) && param_5.class.method_defined?(:j_del) && param_6.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:join, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(param_1.j_del,param_2.j_del,param_3.j_del,param_4.j_del,param_5.j_del,param_6.j_del),::Vertx::CompositeFuture)
      end
      raise ArgumentError, "Invalid arguments when calling join(param_1,param_2,param_3,param_4,param_5,param_6)"
    end
    # @yield 
    # @return [self]
    def set_handler
      if block_given?
        @j_del.java_method(:setHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::CompositeFuture) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_handler()"
    end
    #  Returns the result of a wrapped future
    # @param [Fixnum] index the wrapped future index
    # @return [Object]
    def result_at(index=nil)
      if index.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:resultAt, [Java::int.java_class]).call(index))
      end
      raise ArgumentError, "Invalid arguments when calling result_at(index)"
    end
    # @return [Fixnum] the number of wrapped future
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

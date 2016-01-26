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
      super(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::CompositeFuture] the underlying java delegate
    def j_del
      @j_del
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
    # @yield 
    # @return [self]
    def set_handler
      if block_given?
        @j_del.java_method(:setHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::CompositeFuture) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_handler()"
    end
    #  Returns a cause of a wrapped future
    # @param [Fixnum] index the wrapped future index
    # @return [Exception]
    def cause(index=nil)
      if index.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:cause, [Java::int.java_class]).call(index))
      end
      raise ArgumentError, "Invalid arguments when calling cause(index)"
    end
    #  Returns true if a wrapped future is succeeded
    # @param [Fixnum] index the wrapped future index
    # @return [true,false]
    def succeeded?(index=nil)
      if index.class == Fixnum && !block_given?
        return @j_del.java_method(:succeeded, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling succeeded?(index)"
    end
    #  Returns true if a wrapped future is failed
    # @param [Fixnum] index the wrapped future index
    # @return [true,false]
    def failed?(index=nil)
      if index.class == Fixnum && !block_given?
        return @j_del.java_method(:failed, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling failed?(index)"
    end
    #  Returns true if a wrapped future is completed
    # @param [Fixnum] index the wrapped future index
    # @return [true,false]
    def complete?(index=nil)
      if index.class == Fixnum && !block_given?
        return @j_del.java_method(:isComplete, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling complete?(index)"
    end
    #  Returns the result of a wrapped future
    # @param [Fixnum] index the wrapped future index
    # @return [Object]
    def result(index=nil)
      if index.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:result, [Java::int.java_class]).call(index))
      end
      raise ArgumentError, "Invalid arguments when calling result(index)"
    end
    #  @return the number of wrapped future
    # @return [Fixnum]
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

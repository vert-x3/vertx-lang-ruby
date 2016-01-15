require 'vertx/future'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.CompositeFuture
module Vertx
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
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
    # @param [::Vertx::Future] f1 
    # @param [::Vertx::Future] f2 
    # @param [::Vertx::Future] f3 
    # @param [::Vertx::Future] f4 
    # @param [::Vertx::Future] f5 
    # @param [::Vertx::Future] f6 
    # @return [::Vertx::CompositeFuture]
    def self.all(f1=nil,f2=nil,f3=nil,f4=nil,f5=nil,f6=nil)
      if f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && !block_given? && f3 == nil && f4 == nil && f5 == nil && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && !block_given? && f4 == nil && f5 == nil && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && f4.class.method_defined?(:j_del) && !block_given? && f5 == nil && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del,f4.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && f4.class.method_defined?(:j_del) && f5.class.method_defined?(:j_del) && !block_given? && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del,f4.j_del,f5.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && f4.class.method_defined?(:j_del) && f5.class.method_defined?(:j_del) && f6.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:all, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del,f4.j_del,f5.j_del,f6.j_del),::Vertx::CompositeFuture)
      end
      raise ArgumentError, "Invalid arguments when calling all(f1,f2,f3,f4,f5,f6)"
    end
    # @param [::Vertx::Future] f1 
    # @param [::Vertx::Future] f2 
    # @param [::Vertx::Future] f3 
    # @param [::Vertx::Future] f4 
    # @param [::Vertx::Future] f5 
    # @param [::Vertx::Future] f6 
    # @return [::Vertx::CompositeFuture]
    def self.any(f1=nil,f2=nil,f3=nil,f4=nil,f5=nil,f6=nil)
      if f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && !block_given? && f3 == nil && f4 == nil && f5 == nil && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && !block_given? && f4 == nil && f5 == nil && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && f4.class.method_defined?(:j_del) && !block_given? && f5 == nil && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del,f4.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && f4.class.method_defined?(:j_del) && f5.class.method_defined?(:j_del) && !block_given? && f6 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del,f4.j_del,f5.j_del),::Vertx::CompositeFuture)
      elsif f1.class.method_defined?(:j_del) && f2.class.method_defined?(:j_del) && f3.class.method_defined?(:j_del) && f4.class.method_defined?(:j_del) && f5.class.method_defined?(:j_del) && f6.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::CompositeFuture.java_method(:any, [Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class,Java::IoVertxCore::Future.java_class]).call(f1.j_del,f2.j_del,f3.j_del,f4.j_del,f5.j_del,f6.j_del),::Vertx::CompositeFuture)
      end
      raise ArgumentError, "Invalid arguments when calling any(f1,f2,f3,f4,f5,f6)"
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
    # @param [Fixnum] index 
    # @return [Exception]
    def cause(index=nil)
      if index.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:cause, [Java::int.java_class]).call(index))
      end
      raise ArgumentError, "Invalid arguments when calling cause(index)"
    end
    # @param [Fixnum] index 
    # @return [true,false]
    def succeeded?(index=nil)
      if index.class == Fixnum && !block_given?
        return @j_del.java_method(:succeeded, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling succeeded?(index)"
    end
    # @param [Fixnum] index 
    # @return [true,false]
    def failed?(index=nil)
      if index.class == Fixnum && !block_given?
        return @j_del.java_method(:failed, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling failed?(index)"
    end
    # @param [Fixnum] index 
    # @return [true,false]
    def complete?(index=nil)
      if index.class == Fixnum && !block_given?
        return @j_del.java_method(:isComplete, [Java::int.java_class]).call(index)
      end
      raise ArgumentError, "Invalid arguments when calling complete?(index)"
    end
    # @param [Fixnum] index 
    # @return [Object]
    def result(index=nil)
      if index.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:result, [Java::int.java_class]).call(index))
      end
      raise ArgumentError, "Invalid arguments when calling result(index)"
    end
    # @return [Fixnum]
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

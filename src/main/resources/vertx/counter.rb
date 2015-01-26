require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.Counter
module Vertx
  #  @author <a href="http://tfox.org">Tim Fox</a>
  class Counter
    # @private
    # @param j_del [::Vertx::Counter] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Counter] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Proc] resultHandler
    # return [void]
    def get(&resultHandler)
      if resultHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:get,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get(resultHandler)"
    end
    # @param [Proc] resultHandler
    # return [void]
    def increment_and_get(&resultHandler)
      if resultHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:incrementAndGet,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling increment_and_get(resultHandler)"
    end
    # @param [Proc] resultHandler
    # return [void]
    def get_and_increment(&resultHandler)
      if resultHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getAndIncrement,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_and_increment(resultHandler)"
    end
    # @param [Proc] resultHandler
    # return [void]
    def decrement_and_get(&resultHandler)
      if resultHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:decrementAndGet,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling decrement_and_get(resultHandler)"
    end
    # @param [Fixnum] value
    # @param [Proc] resultHandler
    # return [void]
    def add_and_get(value,&resultHandler)
      if value.class == Fixnum
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:addAndGet,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,value,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling add_and_get(value,resultHandler)"
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling add_and_get(value,resultHandler)"
    end
    # @param [Fixnum] value
    # @param [Proc] resultHandler
    # return [void]
    def get_and_add(value,&resultHandler)
      if value.class == Fixnum
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getAndAdd,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,value,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_and_add(value,resultHandler)"
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling get_and_add(value,resultHandler)"
    end
    # @param [Fixnum] expected
    # @param [Fixnum] value
    # @param [Proc] resultHandler
    # return [void]
    def compare_and_set(expected,value,&resultHandler)
      if expected.class == Fixnum
        if value.class == Fixnum
          if resultHandler.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:compareAndSet,Java::long.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,expected,value,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling compare_and_set(expected,value,resultHandler)"
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling compare_and_set(expected,value,resultHandler)"
      end
      raise ArgumentError, "Invalid argument expected=#{expected} when calling compare_and_set(expected,value,resultHandler)"
    end
  end
end

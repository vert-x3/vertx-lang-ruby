require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.Counter
module Vertx
  class Counter
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get(&resultHandler)
      if resultHandler.class == Proc
        return @j_del.get((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def increment_and_get(&resultHandler)
      if resultHandler.class == Proc
        return @j_del.incrementAndGet((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_and_increment(&resultHandler)
      if resultHandler.class == Proc
        return @j_del.getAndIncrement((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def decrement_and_get(&resultHandler)
      if resultHandler.class == Proc
        return @j_del.decrementAndGet((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def add_and_get(value,&resultHandler)
      if value.class == Fixnum
        if resultHandler.class == Proc
          return @j_del.addAndGet(value,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_and_add(value,&resultHandler)
      if value.class == Fixnum
        if resultHandler.class == Proc
          return @j_del.getAndAdd(value,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def compare_and_set(expected,value,&resultHandler)
      if expected.class == Fixnum
        if value.class == Fixnum
          if resultHandler.class == Proc
            return @j_del.compareAndSet(expected,value,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

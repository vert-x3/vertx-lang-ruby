require 'vertx/util/utils.rb'
module Vertx
  class Counter
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get(result_handler)
      if result_handler != nil && result_handler.class == Proc
        return @j_del.get((Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def increment_and_get(result_handler)
      if result_handler != nil && result_handler.class == Proc
        return @j_del.incrementAndGet((Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_and_increment(result_handler)
      if result_handler != nil && result_handler.class == Proc
        return @j_del.getAndIncrement((Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def decrement_and_get(result_handler)
      if result_handler != nil && result_handler.class == Proc
        return @j_del.decrementAndGet((Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def add_and_get(value,result_handler)
      if value != nil && value.class == Fixnum
        if result_handler != nil && result_handler.class == Proc
          return @j_del.addAndGet(value,(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_and_add(value,result_handler)
      if value != nil && value.class == Fixnum
        if result_handler != nil && result_handler.class == Proc
          return @j_del.getAndAdd(value,(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def compare_and_set(expected,value,result_handler)
      if expected != nil && expected.class == Fixnum
        if value != nil && value.class == Fixnum
          if result_handler != nil && result_handler.class == Proc
            return @j_del.compareAndSet(expected,value,(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

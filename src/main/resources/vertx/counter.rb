require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.Counter
module Vertx
  #  An asynchronous counter that can be used to across the cluster to maintain a consistent count.
  #  <p>
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
    #  Get the current value of the counter
    # @yield handler which will be passed the value
    # @return [void]
    def get
      if block_given?
        return @j_del.java_method(:get, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get()"
    end
    #  Increment the counter atomically and return the new count
    # @yield handler which will be passed the value
    # @return [void]
    def increment_and_get
      if block_given?
        return @j_del.java_method(:incrementAndGet, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling increment_and_get()"
    end
    #  Increment the counter atomically and return the value before the increment.
    # @yield handler which will be passed the value
    # @return [void]
    def get_and_increment
      if block_given?
        return @j_del.java_method(:getAndIncrement, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get_and_increment()"
    end
    #  Decrement the counter atomically and return the new count
    # @yield handler which will be passed the value
    # @return [void]
    def decrement_and_get
      if block_given?
        return @j_del.java_method(:decrementAndGet, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling decrement_and_get()"
    end
    #  Add the value to the counter atomically and return the new count
    # @param [Fixnum] value the value to add
    # @yield handler which will be passed the value
    # @return [void]
    def add_and_get(value=nil)
      if value.class == Fixnum && block_given?
        return @j_del.java_method(:addAndGet, [Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(value,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling add_and_get(value)"
    end
    #  Add the value to the counter atomically and return the value before the add
    # @param [Fixnum] value the value to add
    # @yield handler which will be passed the value
    # @return [void]
    def get_and_add(value=nil)
      if value.class == Fixnum && block_given?
        return @j_del.java_method(:getAndAdd, [Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(value,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get_and_add(value)"
    end
    #  Set the counter to the specified value only if the current value is the expectec value. This happens
    #  atomically.
    # @param [Fixnum] expected the expected value
    # @param [Fixnum] value the new value
    # @yield the handler will be passed true on success
    # @return [void]
    def compare_and_set(expected=nil,value=nil)
      if expected.class == Fixnum && value.class == Fixnum && block_given?
        return @j_del.java_method(:compareAndSet, [Java::long.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(expected,value,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling compare_and_set(expected,value)"
    end
  end
end

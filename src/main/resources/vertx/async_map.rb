require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.AsyncMap
module Vertx
  # 
  #  An asynchronous map.
  class AsyncMap
    # @private
    # @param j_del [::Vertx::AsyncMap] the java delegate
    def initialize(j_del, j_arg_K=nil, j_arg_V=nil)
      @j_del = j_del
      @j_arg_K = j_arg_K != nil ? j_arg_K : ::Vertx::Util::unknown_type
      @j_arg_V = j_arg_V != nil ? j_arg_V : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Vertx::AsyncMap] the underlying java delegate
    def j_del
      @j_del
    end
    #  Get a value from the map, asynchronously.
    # @param [Object] k the key
    # @yield - this will be called some time later with the async result.
    # @return [void]
    def get(k=nil)
      if @j_arg_K.accept?(k) && block_given?
        return @j_del.java_method(:get, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_V.wrap(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get(k)"
    end
    #  Like {::Vertx::AsyncMap#put} but specifying a time to live for the entry. Entry will expire and get evicted after the
    #  ttl.
    # @param [Object] k the key
    # @param [Object] v the value
    # @param [Fixnum] ttl The time to live (in ms) for the entry
    # @yield the handler
    # @return [void]
    def put(k=nil,v=nil,ttl=nil)
      if @j_arg_K.accept?(k) && @j_arg_V.accept?(v) && block_given? && ttl == nil
        return @j_del.java_method(:put, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      elsif @j_arg_K.accept?(k) && @j_arg_V.accept?(v) && ttl.class == Fixnum && block_given?
        return @j_del.java_method(:put, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(v),ttl,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling put(k,v,ttl)"
    end
    #  Link {::Vertx::AsyncMap#put_if_absent} but specifying a time to live for the entry. Entry will expire and get evicted
    #  after the ttl.
    # @param [Object] k the key
    # @param [Object] v the value
    # @param [Fixnum] ttl The time to live (in ms) for the entry
    # @yield the handler
    # @return [void]
    def put_if_absent(k=nil,v=nil,ttl=nil)
      if @j_arg_K.accept?(k) && @j_arg_V.accept?(v) && block_given? && ttl == nil
        return @j_del.java_method(:putIfAbsent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_V.wrap(ar.result) : nil) }))
      elsif @j_arg_K.accept?(k) && @j_arg_V.accept?(v) && ttl.class == Fixnum && block_given?
        return @j_del.java_method(:putIfAbsent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(v),ttl,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_V.wrap(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling put_if_absent(k,v,ttl)"
    end
    #  Remove a value from the map, asynchronously.
    # @param [Object] k the key
    # @yield - this will be called some time later to signify the value has been removed
    # @return [void]
    def remove(k=nil)
      if @j_arg_K.accept?(k) && block_given?
        return @j_del.java_method(:remove, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_V.wrap(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling remove(k)"
    end
    #  Remove a value from the map, only if entry already exists with same value.
    # @param [Object] k the key
    # @param [Object] v the value
    # @yield - this will be called some time later to signify the value has been removed
    # @return [void]
    def remove_if_present(k=nil,v=nil)
      if @j_arg_K.accept?(k) && @j_arg_V.accept?(v) && block_given?
        return @j_del.java_method(:removeIfPresent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling remove_if_present(k,v)"
    end
    #  Replace the entry only if it is currently mapped to some value
    # @param [Object] k the key
    # @param [Object] v the new value
    # @yield the result handler will be passed the previous value
    # @return [void]
    def replace(k=nil,v=nil)
      if @j_arg_K.accept?(k) && @j_arg_V.accept?(v) && block_given?
        return @j_del.java_method(:replace, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? @j_arg_V.wrap(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling replace(k,v)"
    end
    #  Replace the entry only if it is currently mapped to a specific value
    # @param [Object] k the key
    # @param [Object] oldValue the existing value
    # @param [Object] newValue the new value
    # @yield the result handler
    # @return [void]
    def replace_if_present(k=nil,oldValue=nil,newValue=nil)
      if @j_arg_K.accept?(k) && @j_arg_V.accept?(oldValue) && @j_arg_V.accept?(newValue) && block_given?
        return @j_del.java_method(:replaceIfPresent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(@j_arg_K.unwrap(k),@j_arg_V.unwrap(oldValue),@j_arg_V.unwrap(newValue),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling replace_if_present(k,oldValue,newValue)"
    end
    #  Clear all entries in the map
    # @yield called on completion
    # @return [void]
    def clear
      if block_given?
        return @j_del.java_method(:clear, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling clear()"
    end
    #  Provide the number of entries in the map
    # @yield handler which will receive the number of entries
    # @return [void]
    def size
      if block_given?
        return @j_del.java_method(:size, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

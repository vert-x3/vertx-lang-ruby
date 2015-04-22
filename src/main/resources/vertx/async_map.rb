require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.AsyncMap<K,V>
module Vertx
  # 
  #  An asynchronous map.
  class AsyncMap
    # @private
    # @param j_del [::Vertx::AsyncMap] the java delegate
    def initialize(j_del)
      @j_del = j_del
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
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && block_given?
        return @j_del.java_method(:get, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get(k)"
    end
    #  Like {::Vertx::AsyncMap#put} but specifying a timeout. If the value cannot be put within the timeout a
    #  failure will be passed to the handler
    # @param [Object] k the key
    # @param [Object] v the value
    # @param [Fixnum] timeout the timoeout, in ms
    # @yield the handler
    # @return [void]
    def put(k=nil,v=nil,timeout=nil)
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (v.class == String  || v.class == Hash || v.class == Array || v.class == NilClass || v.class == TrueClass || v.class == FalseClass || v.class == Fixnum || v.class == Float) && block_given? && timeout == nil
        return @j_del.java_method(:put, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      elsif (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (v.class == String  || v.class == Hash || v.class == Array || v.class == NilClass || v.class == TrueClass || v.class == FalseClass || v.class == Fixnum || v.class == Float) && timeout.class == Fixnum && block_given?
        return @j_del.java_method(:put, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),timeout,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling put(k,v,timeout)"
    end
    #  Link {::Vertx::AsyncMap#put_if_absent} but specifying a timeout. If the value cannot be put within the timeout a
    #  failure will be passed to the handler
    # @param [Object] k the key
    # @param [Object] v the value
    # @param [Fixnum] timeout the timeout, in ms
    # @yield the handler
    # @return [void]
    def put_if_absent(k=nil,v=nil,timeout=nil)
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (v.class == String  || v.class == Hash || v.class == Array || v.class == NilClass || v.class == TrueClass || v.class == FalseClass || v.class == Fixnum || v.class == Float) && block_given? && timeout == nil
        return @j_del.java_method(:putIfAbsent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      elsif (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (v.class == String  || v.class == Hash || v.class == Array || v.class == NilClass || v.class == TrueClass || v.class == FalseClass || v.class == Fixnum || v.class == Float) && timeout.class == Fixnum && block_given?
        return @j_del.java_method(:putIfAbsent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),timeout,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling put_if_absent(k,v,timeout)"
    end
    #  Remove a value from the map, asynchronously.
    # @param [Object] k the key
    # @yield - this will be called some time later to signify the value has been removed
    # @return [void]
    def remove(k=nil)
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && block_given?
        return @j_del.java_method(:remove, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling remove(k)"
    end
    #  Remove a value from the map, only if entry already exists with same value.
    # @param [Object] k the key
    # @param [Object] v the value
    # @yield - this will be called some time later to signify the value has been removed
    # @return [void]
    def remove_if_present(k=nil,v=nil)
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (v.class == String  || v.class == Hash || v.class == Array || v.class == NilClass || v.class == TrueClass || v.class == FalseClass || v.class == Fixnum || v.class == Float) && block_given?
        return @j_del.java_method(:removeIfPresent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling remove_if_present(k,v)"
    end
    #  Replace the entry only if it is currently mapped to some value
    # @param [Object] k the key
    # @param [Object] v the new value
    # @yield the result handler will be passed the previous value
    # @return [void]
    def replace(k=nil,v=nil)
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (v.class == String  || v.class == Hash || v.class == Array || v.class == NilClass || v.class == TrueClass || v.class == FalseClass || v.class == Fixnum || v.class == Float) && block_given?
        return @j_del.java_method(:replace, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
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
      if (k.class == String  || k.class == Hash || k.class == Array || k.class == NilClass || k.class == TrueClass || k.class == FalseClass || k.class == Fixnum || k.class == Float) && (oldValue.class == String  || oldValue.class == Hash || oldValue.class == Array || oldValue.class == NilClass || oldValue.class == TrueClass || oldValue.class == FalseClass || oldValue.class == Fixnum || oldValue.class == Float) && (newValue.class == String  || newValue.class == Hash || newValue.class == Array || newValue.class == NilClass || newValue.class == TrueClass || newValue.class == FalseClass || newValue.class == Fixnum || newValue.class == Float) && block_given?
        return @j_del.java_method(:replaceIfPresent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(oldValue),::Vertx::Util::Utils.to_object(newValue),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
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

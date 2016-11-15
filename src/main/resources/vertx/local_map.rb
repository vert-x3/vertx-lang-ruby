require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.LocalMap
module Vertx
  #  Local maps can be used to share data safely in a single Vert.x instance.
  #  <p>
  #  The map only allows immutable keys and values in the map, OR certain mutable objects such as {::Vertx::Buffer}
  #  instances which will be copied when they are added to the map.
  #  <p>
  #  This ensures there is no shared access to mutable state from different threads (e.g. different event loops) in the
  #  Vert.x instance, and means you don't have to protect access to that state using synchronization or locks.
  class LocalMap
    # @private
    # @param j_del [::Vertx::LocalMap] the java delegate
    def initialize(j_del, j_arg_K=nil, j_arg_V=nil)
      @j_del = j_del
      @j_arg_K = j_arg_K != nil ? j_arg_K : ::Vertx::Util::unknown_type
      @j_arg_V = j_arg_V != nil ? j_arg_V : ::Vertx::Util::unknown_type
    end
    # @private
    # @return [::Vertx::LocalMap] the underlying java delegate
    def j_del
      @j_del
    end
    #  Get a value from the map
    # @param [Object] key the key
    # @return [Object] the value, or null if none
    def get(key=nil)
      if @j_arg_K.accept?(key) && !block_given?
        return @j_arg_V.wrap(@j_del.java_method(:get, [Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key)))
      end
      raise ArgumentError, "Invalid arguments when calling get(#{key})"
    end
    #  Put an entry in the map
    # @param [Object] key the key
    # @param [Object] value the value
    # @return [Object] return the old value, or null if none
    def put(key=nil,value=nil)
      if @j_arg_K.accept?(key) && @j_arg_V.accept?(value) && !block_given?
        return @j_arg_V.wrap(@j_del.java_method(:put, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key),@j_arg_V.unwrap(value)))
      end
      raise ArgumentError, "Invalid arguments when calling put(#{key},#{value})"
    end
    #  Remove an entry from the map
    # @param [Object] key the key
    # @return [Object] the old value
    def remove(key=nil)
      if @j_arg_K.accept?(key) && !block_given?
        return @j_arg_V.wrap(@j_del.java_method(:remove, [Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key)))
      end
      raise ArgumentError, "Invalid arguments when calling remove(#{key})"
    end
    #  Clear all entries in the map
    # @return [void]
    def clear
      if !block_given?
        return @j_del.java_method(:clear, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling clear()"
    end
    #  Get the size of the map
    # @return [Fixnum] the number of entries in the map
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
    # @return [true,false] true if there are zero entries in the map
    def empty?
      if !block_given?
        return @j_del.java_method(:isEmpty, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling empty?()"
    end
    #  Put the entry only if there is no existing entry for that key
    # @param [Object] key the key
    # @param [Object] value the value
    # @return [Object] the old value or null, if none
    def put_if_absent(key=nil,value=nil)
      if @j_arg_K.accept?(key) && @j_arg_V.accept?(value) && !block_given?
        return @j_arg_V.wrap(@j_del.java_method(:putIfAbsent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key),@j_arg_V.unwrap(value)))
      end
      raise ArgumentError, "Invalid arguments when calling put_if_absent(#{key},#{value})"
    end
    #  Remove the entry only if there is an entry with the specified key and value
    # @param [Object] key the key
    # @param [Object] value the value
    # @return [true,false] true if removed
    def remove_if_present?(key=nil,value=nil)
      if @j_arg_K.accept?(key) && @j_arg_V.accept?(value) && !block_given?
        return @j_del.java_method(:removeIfPresent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key),@j_arg_V.unwrap(value))
      end
      raise ArgumentError, "Invalid arguments when calling remove_if_present?(#{key},#{value})"
    end
    #  Replace the entry only if there is an existing entry with the specified key and value
    # @param [Object] key the key
    # @param [Object] oldValue the old value
    # @param [Object] newValue the new value
    # @return [true,false] true if removed
    def replace_if_present?(key=nil,oldValue=nil,newValue=nil)
      if @j_arg_K.accept?(key) && @j_arg_V.accept?(oldValue) && @j_arg_V.accept?(newValue) && !block_given?
        return @j_del.java_method(:replaceIfPresent, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key),@j_arg_V.unwrap(oldValue),@j_arg_V.unwrap(newValue))
      end
      raise ArgumentError, "Invalid arguments when calling replace_if_present?(#{key},#{oldValue},#{newValue})"
    end
    #  Replace the entry only if there is an existing entry with the key
    # @param [Object] key the key
    # @param [Object] value the new value
    # @return [Object] the old value
    def replace(key=nil,value=nil)
      if @j_arg_K.accept?(key) && @j_arg_V.accept?(value) && !block_given?
        return @j_arg_V.wrap(@j_del.java_method(:replace, [Java::java.lang.Object.java_class,Java::java.lang.Object.java_class]).call(@j_arg_K.unwrap(key),@j_arg_V.unwrap(value)))
      end
      raise ArgumentError, "Invalid arguments when calling replace(#{key},#{value})"
    end
    #  Close and release the map
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.MultiMap
module Vertx
  #  This class represents a MultiMap of String keys to a List of String values.
  #  <p>
  #  It's useful in Vert.x to represent things in Vert.x like HTTP headers and HTTP parameters which allow
  #  multiple values for keys.
  class MultiMap
    # @private
    # @param j_del [::Vertx::MultiMap] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MultiMap] the underlying java delegate
    def j_del
      @j_del
    end
    #  Returns the value of with the specified name.  If there are
    #  more than one values for the specified name, the first value is returned.
    # @param [String] name The name of the header to search
    # @return [String] The first header value or {@code null} if there is no such entry
    def get(name=nil)
      if name.class == String && !block_given?
        return @j_del.java_method(:get, [Java::java.lang.String.java_class]).call(name)
      end
      raise ArgumentError, "Invalid arguments when calling get(name)"
    end
    #  Returns the values with the specified name
    # @param [String] name The name to search
    # @return [Array<String>] A immutable {@link java.util.List} of values which will be empty if no values are found
    def get_all(name=nil)
      if name.class == String && !block_given?
        return @j_del.java_method(:getAll, [Java::java.lang.String.java_class]).call(name).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling get_all(name)"
    end
    #  Checks to see if there is a value with the specified name
    # @param [String] name The name to search for
    # @return [true,false] true if at least one entry is found
    def contains(name=nil)
      if name.class == String && !block_given?
        return @j_del.java_method(:contains, [Java::java.lang.String.java_class]).call(name)
      end
      raise ArgumentError, "Invalid arguments when calling contains(name)"
    end
    #  Return true if empty
    # @return [true,false]
    def is_empty
      if !block_given?
        return @j_del.java_method(:isEmpty, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_empty()"
    end
    #  Gets a immutable Set of all names
    # @return [Set<String>] A {@link java.util.Set} of all names
    def names
      if !block_given?
        return @j_del.java_method(:names, []).call().to_set.map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling names()"
    end
    #  Adds a new value with the specified name and value.
    # @param [String] name The name
    # @param [String] value The value being added
    # @return [self]
    def add(name=nil,value=nil)
      if name.class == String && value.class == String && !block_given?
        @j_del.java_method(:add, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(name,value)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add(name,value)"
    end
    #  Adds all the entries from another MultiMap to this one
    # @param [::Vertx::MultiMap] map
    # @return [self]
    def add_all(map=nil)
      if map.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:addAll, [Java::IoVertxCore::MultiMap.java_class]).call(map.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_all(map)"
    end
    #  Sets a value under the specified name.
    #  <p>
    #  If there is an existing header with the same name, it is removed.
    # @param [String] name The name
    # @param [String] value The value
    # @return [self]
    def set(name=nil,value=nil)
      if name.class == String && value.class == String && !block_given?
        @j_del.java_method(:set, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(name,value)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set(name,value)"
    end
    #  Cleans this instance.
    # @param [::Vertx::MultiMap] map
    # @return [self]
    def set_all(map=nil)
      if map.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:setAll, [Java::IoVertxCore::MultiMap.java_class]).call(map.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_all(map)"
    end
    #  Removes the value with the given name
    # @param [String] name The name of the value to remove
    # @return [self]
    def remove(name=nil)
      if name.class == String && !block_given?
        @j_del.java_method(:remove, [Java::java.lang.String.java_class]).call(name)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling remove(name)"
    end
    #  Removes all
    # @return [self]
    def clear
      if !block_given?
        @j_del.java_method(:clear, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling clear()"
    end
    #  Return the number of keys.
    # @return [Fixnum]
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

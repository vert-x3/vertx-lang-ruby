require 'vertx/util/utils.rb'
# Generated from io.vertx.core.MultiMap
module Vertx
  #  @author <a href="mailto:nmaurer@redhat.com">Norman Maurer</a>
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
    # @param [String] name
    # @return [String]
    def get(name)
      if name.class == String
        return @j_del.get(name)
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get(name)"
    end
    #  Returns the values with the specified name
    # @param [String] name
    # @return [Array<String>]
    def get_all(name)
      if name.class == String
        return @j_del.getAll(name).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_all(name)"
    end
    #  Checks to see if there is a value with the specified name
    # @param [String] name
    # @return [true,false]
    def contains(name)
      if name.class == String
        return @j_del.contains(name)
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling contains(name)"
    end
    #  Return true if empty
    # @return [true,false]
    def is_empty
      @j_del.isEmpty
    end
    #  Gets a immutable null of all names
    # @return [Set<String>]
    def names
      @j_del.names.to_set.map! { |elt| elt }
    end
    #  Adds a new value with the specified name and value.
    # @param [String] name
    # @param [String] value
    # return [self]
    def add(name,value)
      if name.class == String
        if value.class == String
          @j_del.add(name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling add(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling add(name,value)"
    end
    #  Adds all the entries from another MultiMap to this one
    # @param [::Vertx::MultiMap] map
    # return [self]
    def add_all(map)
      if map.class.method_defined?(:j_del)
        @j_del.addAll(map.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument map=#{map} when calling add_all(map)"
    end
    #  Sets a value under the specified name.
    # 
    #  If there is an existing header with the same name, it is removed.
    # @param [String] name
    # @param [String] value
    # return [self]
    def set(name,value)
      if name.class == String
        if value.class == String
          @j_del.set(name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling set(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling set(name,value)"
    end
    #  Cleans this instance.
    # @param [::Vertx::MultiMap] map
    # return [self]
    def set_all(map)
      if map.class.method_defined?(:j_del)
        @j_del.setAll(map.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument map=#{map} when calling set_all(map)"
    end
    #  Removes the value with the given name
    # @param [String] name
    # return [self]
    def remove(name)
      if name.class == String
        @j_del.remove(name)
        return self
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling remove(name)"
    end
    #  Removes all
    # return [self]
    def clear
      @j_del.clear
      self
    end
    #  Return the number of names.
    # @return [Fixnum]
    def size
      @j_del.size
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.MultiMap
module Vertx
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
    # THE METHOD DOC
    #
    # @param [String] name
    # @return [String]: the return value (todo)
    def get(name)
      if name.class == String
        return @j_del.get(name)
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get(name)"
    end
    # THE METHOD DOC
    #
    # @param [String] name
    # @return [Array<String>]: the return value (todo)
    def get_all(name)
      if name.class == String
        return @j_del.getAll(name).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_all(name)"
    end
    # THE METHOD DOC
    #
    # @param [String] name
    # @return [true,false]: the return value (todo)
    def contains(name)
      if name.class == String
        return @j_del.contains(name)
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling contains(name)"
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_empty
      @j_del.isEmpty
    end
    # THE METHOD DOC
    #
    # @return [Set<String>]: the return value (todo)
    def names
      @j_del.names.to_set.map! { |elt| elt }
    end
    # THE METHOD DOC
    #
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
    # THE METHOD DOC
    #
    # @param [::Vertx::MultiMap] map
    # return [self]
    def add_all(map)
      if map.class.method_defined?(:j_del)
        @j_del.addAll(map.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument map=#{map} when calling add_all(map)"
    end
    # THE METHOD DOC
    #
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
    # THE METHOD DOC
    #
    # @param [::Vertx::MultiMap] map
    # return [self]
    def set_all(map)
      if map.class.method_defined?(:j_del)
        @j_del.setAll(map.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument map=#{map} when calling set_all(map)"
    end
    # THE METHOD DOC
    #
    # @param [String] name
    # return [self]
    def remove(name)
      if name.class == String
        @j_del.remove(name)
        return self
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling remove(name)"
    end
    # THE METHOD DOC
    #
    # return [self]
    def clear
      @j_del.clear
      self
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def size
      @j_del.size
    end
  end
end

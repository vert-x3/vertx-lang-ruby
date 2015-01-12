require 'vertx/util/utils.rb'
# Generated from io.vertx.core.MultiMap
module Vertx
  class MultiMap
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get(name)
      if name.class == String
        return @j_del.get(name)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_all(name)
      if name.class == String
        return @j_del.getAll(name).to_a.map { |elt| elt }
      end
      raise ArgumentError, 'dispatch error'
    end
    def contains(name)
      if name.class == String
        return @j_del.contains(name)
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_empty()
      @j_del.isEmpty
    end
    def names()
      @j_del.names.to_set.map! { |elt| elt }
    end
    def add(name,value)
      if name.class == String
        if value.class == String
          @j_del.add(name,value)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def add_all(map)
      if map.class.method_defined?(:j_del)
        @j_del.addAll(map.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set(name,value)
      if name.class == String
        if value.class == String
          @j_del.set(name,value)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_all(map)
      if map.class.method_defined?(:j_del)
        @j_del.setAll(map.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove(name)
      if name.class == String
        @j_del.remove(name)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def clear()
      @j_del.clear
      self
    end
    def size()
      @j_del.size
    end
  end
end

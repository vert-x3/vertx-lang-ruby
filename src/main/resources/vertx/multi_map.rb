require 'vertx/util/utils.rb'
module Vertx
  class MultiMap
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get(name)
      if name != nil && name.class == String
        return @j_del.get(name)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_all(name)
      if name != nil && name.class == String
        return nil
      end
      raise ArgumentError, 'dispatch error'
    end
    def contains(name)
      if name != nil && name.class == String
        return @j_del.contains(name)
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_empty()
      return @j_del.isEmpty()
    end
    def names()
      return nil
    end
    def add(name,value)
      if name != nil && name.class == String
        if value != nil && value.class == String
          @j_del.add(name,value)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def add_all(map)
      if map != nil && map.class.method_defined?(:j_del)
        @j_del.addAll(map.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set(name,value)
      if name != nil && name.class == String
        if value != nil && value.class == String
          @j_del.set(name,value)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_all(map)
      if map != nil && map.class.method_defined?(:j_del)
        @j_del.setAll(map.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove(name)
      if name != nil && name.class == String
        @j_del.remove(name)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def clear()
      @j_del.clear()
      return self
    end
    def size()
      return @j_del.size()
    end
  end
end

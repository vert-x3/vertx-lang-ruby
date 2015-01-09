require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.LocalMap<K,V>
module Vertx
  class LocalMap
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get(key)
      if key != nil && (key.class == Hash || key.class == Array)
        return nil
      end
      raise ArgumentError, 'dispatch error'
    end
    def put(key,value)
      if key != nil && (key.class == Hash || key.class == Array)
        if value != nil && (value.class == Hash || value.class == Array)
          return nil
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove(key)
      if key != nil && (key.class == Hash || key.class == Array)
        return nil
      end
      raise ArgumentError, 'dispatch error'
    end
    def clear()
      return @j_del.clear()
    end
    def size()
      return @j_del.size()
    end
    def is_empty()
      return @j_del.isEmpty()
    end
    def put_if_absent(key,value)
      if key != nil && (key.class == Hash || key.class == Array)
        if value != nil && (value.class == Hash || value.class == Array)
          return nil
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove_if_present(key,value)
      if key != nil && (key.class == Hash || key.class == Array)
        if value != nil && (value.class == Hash || value.class == Array)
          return @j_del.removeIfPresent(Vertx::Util::Utils.to_object(key),Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def replace_if_present(key,old_value,new_value)
      if key != nil && (key.class == Hash || key.class == Array)
        if old_value != nil && (old_value.class == Hash || old_value.class == Array)
          if new_value != nil && (new_value.class == Hash || new_value.class == Array)
            return @j_del.replaceIfPresent(Vertx::Util::Utils.to_object(key),Vertx::Util::Utils.to_object(old_value),Vertx::Util::Utils.to_object(new_value))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def replace(key,value)
      if key != nil && (key.class == Hash || key.class == Array)
        if value != nil && (value.class == Hash || value.class == Array)
          return nil
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def close()
      return @j_del.close()
    end
  end
end

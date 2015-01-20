require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.LocalMap<K,V>
module Vertx
  class LocalMap
    # @private
    # @param j_del [::Vertx::LocalMap] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::LocalMap] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @return [Object]: the return value (todo)
    def get(key)
      if key.class == String  ||key.class == Hash || key.class == Array
        return ::Vertx::Util::Utils.from_object(@j_del.get(::Vertx::Util::Utils.to_object(key)))
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling get(key)"
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @param [Object] value
    # @return [Object]: the return value (todo)
    def put(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return ::Vertx::Util::Utils.from_object(@j_del.put(::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling put(key,value)"
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @return [Object]: the return value (todo)
    def remove(key)
      if key.class == String  ||key.class == Hash || key.class == Array
        return ::Vertx::Util::Utils.from_object(@j_del.remove(::Vertx::Util::Utils.to_object(key)))
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling remove(key)"
    end
    # THE METHOD DOC
    #
    # return [void]
    def clear
      @j_del.clear
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def size
      @j_del.size
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_empty
      @j_del.isEmpty
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @param [Object] value
    # @return [Object]: the return value (todo)
    def put_if_absent(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return ::Vertx::Util::Utils.from_object(@j_del.putIfAbsent(::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_if_absent(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling put_if_absent(key,value)"
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @param [Object] value
    # @return [true,false]: the return value (todo)
    def remove_if_present(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return @j_del.removeIfPresent(::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling remove_if_present(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling remove_if_present(key,value)"
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @param [Object] oldValue
    # @param [Object] newValue
    # @return [true,false]: the return value (todo)
    def replace_if_present(key,oldValue,newValue)
      if key.class == String  ||key.class == Hash || key.class == Array
        if oldValue.class == String  ||oldValue.class == Hash || oldValue.class == Array
          if newValue.class == String  ||newValue.class == Hash || newValue.class == Array
            return @j_del.replaceIfPresent(::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(oldValue),::Vertx::Util::Utils.to_object(newValue))
          end
          raise ArgumentError, "Invalid argument newValue=#{newValue} when calling replace_if_present(key,oldValue,newValue)"
        end
        raise ArgumentError, "Invalid argument oldValue=#{oldValue} when calling replace_if_present(key,oldValue,newValue)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling replace_if_present(key,oldValue,newValue)"
    end
    # THE METHOD DOC
    #
    # @param [Object] key
    # @param [Object] value
    # @return [Object]: the return value (todo)
    def replace(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return ::Vertx::Util::Utils.from_object(@j_del.replace(::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling replace(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling replace(key,value)"
    end
    # THE METHOD DOC
    #
    # return [void]
    def close
      @j_del.close
    end
  end
end

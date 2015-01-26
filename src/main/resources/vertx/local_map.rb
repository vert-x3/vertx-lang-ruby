require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.LocalMap<K,V>
module Vertx
  #  @author <a href="http://tfox.org">Tim Fox</a>
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
    # @param [Object] key
    # @return [Object]
    def get(key)
      if key.class == String  ||key.class == Hash || key.class == Array
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:get,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key)))
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling get(key)"
    end
    # @param [Object] key
    # @param [Object] value
    # @return [Object]
    def put(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:put,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling put(key,value)"
    end
    # @param [Object] key
    # @return [Object]
    def remove(key)
      if key.class == String  ||key.class == Hash || key.class == Array
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:remove,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key)))
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling remove(key)"
    end
    # return [void]
    def clear
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:clear))).invoke(@j_del)
    end
    # @return [Fixnum]
    def size
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:size))).invoke(@j_del)
    end
    # @return [true,false]
    def is_empty
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isEmpty))).invoke(@j_del)
    end
    # @param [Object] key
    # @param [Object] value
    # @return [Object]
    def put_if_absent(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:putIfAbsent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_if_absent(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling put_if_absent(key,value)"
    end
    # @param [Object] key
    # @param [Object] value
    # @return [true,false]
    def remove_if_present(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:removeIfPresent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling remove_if_present(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling remove_if_present(key,value)"
    end
    # @param [Object] key
    # @param [Object] oldValue
    # @param [Object] newValue
    # @return [true,false]
    def replace_if_present(key,oldValue,newValue)
      if key.class == String  ||key.class == Hash || key.class == Array
        if oldValue.class == String  ||oldValue.class == Hash || oldValue.class == Array
          if newValue.class == String  ||newValue.class == Hash || newValue.class == Array
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replaceIfPresent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(oldValue),::Vertx::Util::Utils.to_object(newValue))
          end
          raise ArgumentError, "Invalid argument newValue=#{newValue} when calling replace_if_present(key,oldValue,newValue)"
        end
        raise ArgumentError, "Invalid argument oldValue=#{oldValue} when calling replace_if_present(key,oldValue,newValue)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling replace_if_present(key,oldValue,newValue)"
    end
    # @param [Object] key
    # @param [Object] value
    # @return [Object]
    def replace(key,value)
      if key.class == String  ||key.class == Hash || key.class == Array
        if value.class == String  ||value.class == Hash || value.class == Array
          return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replace,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling replace(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling replace(key,value)"
    end
    # return [void]
    def close
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
  end
end

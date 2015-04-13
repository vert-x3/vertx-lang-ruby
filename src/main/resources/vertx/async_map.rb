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
    # @param [Proc] resultHandler - this will be called some time later with the async result.
    # @return [void]
    def get(k,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:get,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(k),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get(k,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling get(k,resultHandler)"
    end
    #  Like {::Vertx::AsyncMap#put} but specifying a timeout. If the value cannot be put within the timeout a
    #  failure will be passed to the handler
    # @overload put(k,v,completionHandler)
    #   @param [Object] k the key
    #   @param [Object] v the value
    #   @param [Proc] completionHandler - this will be called some time later to signify the value has been put
    # @overload put(k,v,timeout,completionHandler)
    #   @param [Object] k the key
    #   @param [Object] v the value
    #   @param [Fixnum] timeout the timoeout, in ms
    #   @param [Proc] completionHandler the handler
    # @return [void]
    def put(param_1,param_2,param_3,&param_4)
      if param_1.class == String  ||param_1.class == Hash || param_1.class == Array
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:put,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
          end
          if param_3.class == Fixnum
            if param_4.class == Proc
              return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:put,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil) }))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling put(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling put(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling put(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling put(param_1,param_2,param_3,param_4)"
    end
    #  Link {::Vertx::AsyncMap#put_if_absent} but specifying a timeout. If the value cannot be put within the timeout a
    #  failure will be passed to the handler
    # @overload putIfAbsent(k,v,completionHandler)
    #   @param [Object] k the key
    #   @param [Object] v the value
    #   @param [Proc] completionHandler the handler
    # @overload putIfAbsent(k,v,timeout,completionHandler)
    #   @param [Object] k the key
    #   @param [Object] v the value
    #   @param [Fixnum] timeout the timeout, in ms
    #   @param [Proc] completionHandler the handler
    # @return [void]
    def put_if_absent(param_1,param_2,param_3,&param_4)
      if param_1.class == String  ||param_1.class == Hash || param_1.class == Array
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:putIfAbsent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
          end
          if param_3.class == Fixnum
            if param_4.class == Proc
              return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:putIfAbsent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling put_if_absent(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling put_if_absent(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling put_if_absent(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling put_if_absent(param_1,param_2,param_3,param_4)"
    end
    #  Remove a value from the map, asynchronously.
    # @param [Object] k the key
    # @param [Proc] resultHandler - this will be called some time later to signify the value has been removed
    # @return [void]
    def remove(k,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:remove,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(k),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling remove(k,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling remove(k,resultHandler)"
    end
    #  Remove a value from the map, only if entry already exists with same value.
    # @param [Object] k the key
    # @param [Object] v the value
    # @param [Proc] resultHandler - this will be called some time later to signify the value has been removed
    # @return [void]
    def remove_if_present(k,v,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if v.class == String  ||v.class == Hash || v.class == Array
          if resultHandler.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:removeIfPresent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling remove_if_present(k,v,resultHandler)"
        end
        raise ArgumentError, "Invalid argument v=#{v} when calling remove_if_present(k,v,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling remove_if_present(k,v,resultHandler)"
    end
    #  Replace the entry only if it is currently mapped to some value
    # @param [Object] k the key
    # @param [Object] v the new value
    # @param [Proc] resultHandler the result handler will be passed the previous value
    # @return [void]
    def replace(k,v,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if v.class == String  ||v.class == Hash || v.class == Array
          if resultHandler.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replace,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling replace(k,v,resultHandler)"
        end
        raise ArgumentError, "Invalid argument v=#{v} when calling replace(k,v,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling replace(k,v,resultHandler)"
    end
    #  Replace the entry only if it is currently mapped to a specific value
    # @param [Object] k the key
    # @param [Object] oldValue the existing value
    # @param [Object] newValue the new value
    # @param [Proc] resultHandler the result handler
    # @return [void]
    def replace_if_present(k,oldValue,newValue,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if oldValue.class == String  ||oldValue.class == Hash || oldValue.class == Array
          if newValue.class == String  ||newValue.class == Hash || newValue.class == Array
            if resultHandler.class == Proc
              return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replaceIfPresent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(oldValue),::Vertx::Util::Utils.to_object(newValue),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
            end
            raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
          end
          raise ArgumentError, "Invalid argument newValue=#{newValue} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
        end
        raise ArgumentError, "Invalid argument oldValue=#{oldValue} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
    end
    #  Clear all entries in the map
    # @param [Proc] resultHandler called on completion
    # @return [void]
    def clear(&resultHandler)
      if resultHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:clear,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling clear(resultHandler)"
    end
    #  Provide the number of entries in the map
    # @param [Proc] resultHandler handler which will receive the number of entries
    # @return [void]
    def size(&resultHandler)
      if resultHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:size,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling size(resultHandler)"
    end
  end
end

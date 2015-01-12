require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.AsyncMap<K,V>
module Vertx
  class AsyncMap
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get(k,&resultHandler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if resultHandler != nil && resultHandler.class == Proc
          return @j_del.get(Vertx::Util::Utils.to_object(k),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def put(param_1,param_2,param_3,&param_4)
      if param_1 != nil && (param_1.class == String  ||param_1.class == Hash || param_1.class == Array)
        if param_2 != nil && (param_2.class == String  ||param_2.class == Hash || param_2.class == Array)
          if param_3 != nil && param_3.class == Proc
            return @j_del.put(Vertx::Util::Utils.to_object(param_1),Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
          end
          if param_3 != nil && param_3.class == Fixnum
            if param_4 != nil && param_4.class == Proc
              return @j_del.put(Vertx::Util::Utils.to_object(param_1),Vertx::Util::Utils.to_object(param_2),param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil) }))
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def put_if_absent(param_1,param_2,param_3,&param_4)
      if param_1 != nil && (param_1.class == String  ||param_1.class == Hash || param_1.class == Array)
        if param_2 != nil && (param_2.class == String  ||param_2.class == Hash || param_2.class == Array)
          if param_3 != nil && param_3.class == Proc
            return @j_del.putIfAbsent(Vertx::Util::Utils.to_object(param_1),Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
          end
          if param_3 != nil && param_3.class == Fixnum
            if param_4 != nil && param_4.class == Proc
              return @j_del.putIfAbsent(Vertx::Util::Utils.to_object(param_1),Vertx::Util::Utils.to_object(param_2),param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove(k,&resultHandler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if resultHandler != nil && resultHandler.class == Proc
          return @j_del.remove(Vertx::Util::Utils.to_object(k),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove_if_present(k,v,&resultHandler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if v != nil && (v.class == String  ||v.class == Hash || v.class == Array)
          if resultHandler != nil && resultHandler.class == Proc
            return @j_del.removeIfPresent(Vertx::Util::Utils.to_object(k),Vertx::Util::Utils.to_object(v),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def replace(k,v,&resultHandler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if v != nil && (v.class == String  ||v.class == Hash || v.class == Array)
          if resultHandler != nil && resultHandler.class == Proc
            return @j_del.replace(Vertx::Util::Utils.to_object(k),Vertx::Util::Utils.to_object(v),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def replace_if_present(k,oldValue,newValue,&resultHandler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if oldValue != nil && (oldValue.class == String  ||oldValue.class == Hash || oldValue.class == Array)
          if newValue != nil && (newValue.class == String  ||newValue.class == Hash || newValue.class == Array)
            if resultHandler != nil && resultHandler.class == Proc
              return @j_del.replaceIfPresent(Vertx::Util::Utils.to_object(k),Vertx::Util::Utils.to_object(oldValue),Vertx::Util::Utils.to_object(newValue),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def clear(&resultHandler)
      if resultHandler != nil && resultHandler.class == Proc
        return @j_del.clear((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def size(&resultHandler)
      if resultHandler != nil && resultHandler.class == Proc
        return @j_del.size((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

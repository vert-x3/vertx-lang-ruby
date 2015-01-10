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
    def get(k,result_handler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if result_handler != nil && result_handler.class == Proc
          return @j_del.get(Vertx::Util::Utils.to_object(k),nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def put(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
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
    def put_if_absent(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && (param_1.class == String  ||param_1.class == Hash || param_1.class == Array)
            if param_2 != nil && (param_2.class == String  ||param_2.class == Hash || param_2.class == Array)
                if param_3 != nil && param_3.class == Proc
                  return @j_del.putIfAbsent(Vertx::Util::Utils.to_object(param_1),Vertx::Util::Utils.to_object(param_2),nil)
                end
                if param_3 != nil && param_3.class == Fixnum
                    if param_4 != nil && param_4.class == Proc
                      return @j_del.putIfAbsent(Vertx::Util::Utils.to_object(param_1),Vertx::Util::Utils.to_object(param_2),param_3,nil)
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def remove(k,result_handler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if result_handler != nil && result_handler.class == Proc
          return @j_del.remove(Vertx::Util::Utils.to_object(k),nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove_if_present(k,v,result_handler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if v != nil && (v.class == String  ||v.class == Hash || v.class == Array)
          if result_handler != nil && result_handler.class == Proc
            return @j_del.removeIfPresent(Vertx::Util::Utils.to_object(k),Vertx::Util::Utils.to_object(v),(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def replace(k,v,result_handler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if v != nil && (v.class == String  ||v.class == Hash || v.class == Array)
          if result_handler != nil && result_handler.class == Proc
            return @j_del.replace(Vertx::Util::Utils.to_object(k),Vertx::Util::Utils.to_object(v),nil)
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def replace_if_present(k,old_value,new_value,result_handler)
      if k != nil && (k.class == String  ||k.class == Hash || k.class == Array)
        if old_value != nil && (old_value.class == String  ||old_value.class == Hash || old_value.class == Array)
          if new_value != nil && (new_value.class == String  ||new_value.class == Hash || new_value.class == Array)
            if result_handler != nil && result_handler.class == Proc
              return @j_del.replaceIfPresent(Vertx::Util::Utils.to_object(k),Vertx::Util::Utils.to_object(old_value),Vertx::Util::Utils.to_object(new_value),(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def clear(result_handler)
      if result_handler != nil && result_handler.class == Proc
        return @j_del.clear((Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def size(result_handler)
      if result_handler != nil && result_handler.class == Proc
        return @j_del.size((Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

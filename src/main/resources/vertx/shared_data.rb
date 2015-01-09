include_class 'io.vertx.core.shareddata.AsyncMap'
include_class 'io.vertx.core.shareddata.Lock'
include_class 'io.vertx.core.shareddata.LocalMap'
include_class 'io.vertx.core.shareddata.Counter'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.SharedData
module Vertx
  class SharedData
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def get_cluster_wide_map(name,result_handler)
      if name != nil && name.class == String
        if result_handler != nil && result_handler.class == Proc
          return @j_del.getClusterWideMap(name,nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_lock(name,result_handler)
      if name != nil && name.class == String
        if result_handler != nil && result_handler.class == Proc
          return @j_del.getLock(name,nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_lock_with_timeout(name,timeout,result_handler)
      if name != nil && name.class == String
        if timeout != nil && timeout.class == Fixnum
          if result_handler != nil && result_handler.class == Proc
            return @j_del.getLockWithTimeout(name,timeout,nil)
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_counter(name,result_handler)
      if name != nil && name.class == String
        if result_handler != nil && result_handler.class == Proc
          return @j_del.getCounter(name,nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_local_map(name)
      if name != nil && name.class == String
        return LocalMap.new(@j_del.getLocalMap(name))
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

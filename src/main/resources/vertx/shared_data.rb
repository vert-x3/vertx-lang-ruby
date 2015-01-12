require 'vertx/async_map'
require 'vertx/lock'
require 'vertx/local_map'
require 'vertx/counter'
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
    def get_cluster_wide_map(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return @j_del.getClusterWideMap(name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::AsyncMap.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_cluster_wide_map(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_cluster_wide_map(name,resultHandler)"
    end
    def get_lock(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return @j_del.getLock(name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_lock(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_lock(name,resultHandler)"
    end
    def get_lock_with_timeout(name,timeout,&resultHandler)
      if name.class == String
        if timeout.class == Fixnum
          if resultHandler.class == Proc
            return @j_del.getLockWithTimeout(name,timeout,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_lock_with_timeout(name,timeout,resultHandler)"
        end
        raise ArgumentError, "Invalid argument timeout=#{timeout} when calling get_lock_with_timeout(name,timeout,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_lock_with_timeout(name,timeout,resultHandler)"
    end
    def get_counter(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return @j_del.getCounter(name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Counter.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_counter(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_counter(name,resultHandler)"
    end
    def get_local_map(name)
      if name.class == String
        return ::Vertx::LocalMap.new(@j_del.getLocalMap(name))
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_local_map(name)"
    end
  end
end

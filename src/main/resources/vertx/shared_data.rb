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
    def get_cluster_wide_map(name,resultHandler)
      if name != nil && name.class == String
        if resultHandler != nil && resultHandler.class == Proc
          return @j_del.getClusterWideMap(name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::AsyncMap.new(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_lock(name,resultHandler)
      if name != nil && name.class == String
        if resultHandler != nil && resultHandler.class == Proc
          return @j_del.getLock(name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Lock.new(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_lock_with_timeout(name,timeout,resultHandler)
      if name != nil && name.class == String
        if timeout != nil && timeout.class == Fixnum
          if resultHandler != nil && resultHandler.class == Proc
            return @j_del.getLockWithTimeout(name,timeout,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Lock.new(ar.result) : nil) }))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_counter(name,resultHandler)
      if name != nil && name.class == String
        if resultHandler != nil && resultHandler.class == Proc
          return @j_del.getCounter(name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Counter.new(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_local_map(name)
      if name != nil && name.class == String
        return Vertx::LocalMap.new(@j_del.getLocalMap(name))
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

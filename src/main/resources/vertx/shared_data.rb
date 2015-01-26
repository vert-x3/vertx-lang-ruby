require 'vertx/async_map'
require 'vertx/lock'
require 'vertx/local_map'
require 'vertx/counter'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.SharedData
module Vertx
  #  @author <a href="http://tfox.org">Tim Fox</a>
  class SharedData
    # @private
    # @param j_del [::Vertx::SharedData] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::SharedData] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [String] name
    # @param [Proc] resultHandler
    # return [void]
    def get_cluster_wide_map(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getClusterWideMap,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::AsyncMap.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_cluster_wide_map(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_cluster_wide_map(name,resultHandler)"
    end
    # @param [String] name
    # @param [Proc] resultHandler
    # return [void]
    def get_lock(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getLock,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_lock(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_lock(name,resultHandler)"
    end
    # @param [String] name
    # @param [Fixnum] timeout
    # @param [Proc] resultHandler
    # return [void]
    def get_lock_with_timeout(name,timeout,&resultHandler)
      if name.class == String
        if timeout.class == Fixnum
          if resultHandler.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getLockWithTimeout,Java::java.lang.String.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,timeout,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_lock_with_timeout(name,timeout,resultHandler)"
        end
        raise ArgumentError, "Invalid argument timeout=#{timeout} when calling get_lock_with_timeout(name,timeout,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_lock_with_timeout(name,timeout,resultHandler)"
    end
    # @param [String] name
    # @param [Proc] resultHandler
    # return [void]
    def get_counter(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getCounter,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Counter.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_counter(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_counter(name,resultHandler)"
    end
    #  Return a <code>Map</code> with the specific <code>name</code>. All invocations of this method with the same value of <code>name</code>
    #  are guaranteed to return the same <code>Map</code> instance. <p>
    # @param [String] name
    # @return [::Vertx::LocalMap]
    def get_local_map(name)
      if name.class == String
        return ::Vertx::LocalMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getLocalMap,Java::java.lang.String.java_class))).invoke(@j_del,name))
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_local_map(name)"
    end
  end
end

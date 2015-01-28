require 'vertx/async_map'
require 'vertx/lock'
require 'vertx/local_map'
require 'vertx/counter'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.SharedData
module Vertx
  #  Shared data allows you to share data safely between different parts of your application in a safe way.
  #  <p>
  #  Shared data provides:
  #  <ul>
  #    <li>Cluster wide maps which can be accessed from any node of the cluster</li>
  #    <li>Cluster wide locks which can be used to give exclusive access to resources across the cluster</li>
  #    <li>Cluster wide counters used to maintain counts consistently across the cluster</li>
  #    <li>Local maps for sharing data safely in the same Vert.x instance</li>
  #  </ul>
  #  <p>
  #  Please see the documentation for more information.
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
    #  Get the cluster wide map with the specified name. The map is accessible to all nodes in the cluster and data
    #  put into the map from any node is visible to to any other node.
    # @param [String] name the name of the map
    # @param [Proc] resultHandler the map will be returned asynchronously in this handler
    # @return [void]
    def get_cluster_wide_map(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getClusterWideMap,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::AsyncMap.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_cluster_wide_map(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_cluster_wide_map(name,resultHandler)"
    end
    #  Get a cluster wide lock with the specified name. The lock will be passed to the handler when it is available.
    # @param [String] name the name of the lock
    # @param [Proc] resultHandler the handler
    # @return [void]
    def get_lock(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getLock,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_lock(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_lock(name,resultHandler)"
    end
    #  Like {::Vertx::SharedData#get_lock} but specifying a timeout. If the lock is not obtained within the timeout
    #  a failure will be sent to the handler
    # @param [String] name the name of the lock
    # @param [Fixnum] timeout the timeout in ms
    # @param [Proc] resultHandler the handler
    # @return [void]
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
    #  Get a cluster wide counter. The counter will be passed to the handler.
    # @param [String] name the name of the counter.
    # @param [Proc] resultHandler the handler
    # @return [void]
    def get_counter(name,&resultHandler)
      if name.class == String
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getCounter,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Counter.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get_counter(name,resultHandler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_counter(name,resultHandler)"
    end
    #  Return a <code>LocalMap</code> with the specific <code>name</code>.
    # @param [String] name the name of the map
    # @return [::Vertx::LocalMap] the msp
    def get_local_map(name)
      if name.class == String
        return ::Vertx::LocalMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getLocalMap,Java::java.lang.String.java_class))).invoke(@j_del,name))
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling get_local_map(name)"
    end
  end
end

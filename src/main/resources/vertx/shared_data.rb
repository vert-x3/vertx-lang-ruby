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
    # @yield the map will be returned asynchronously in this handler
    # @return [void]
    def get_cluster_wide_map(name=nil)
      if name.class == String && block_given?
        return @j_del.java_method(:getClusterWideMap, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::AsyncMap.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get_cluster_wide_map(name)"
    end
    #  Get a cluster wide lock with the specified name. The lock will be passed to the handler when it is available.
    # @param [String] name the name of the lock
    # @yield the handler
    # @return [void]
    def get_lock(name=nil)
      if name.class == String && block_given?
        return @j_del.java_method(:getLock, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get_lock(name)"
    end
    #  Like {::Vertx::SharedData#get_lock} but specifying a timeout. If the lock is not obtained within the timeout
    #  a failure will be sent to the handler
    # @param [String] name the name of the lock
    # @param [Fixnum] timeout the timeout in ms
    # @yield the handler
    # @return [void]
    def get_lock_with_timeout(name=nil,timeout=nil)
      if name.class == String && timeout.class == Fixnum && block_given?
        return @j_del.java_method(:getLockWithTimeout, [Java::java.lang.String.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(name,timeout,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Lock.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get_lock_with_timeout(name,timeout)"
    end
    #  Get a cluster wide counter. The counter will be passed to the handler.
    # @param [String] name the name of the counter.
    # @yield the handler
    # @return [void]
    def get_counter(name=nil)
      if name.class == String && block_given?
        return @j_del.java_method(:getCounter, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Counter.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get_counter(name)"
    end
    #  Return a <code>LocalMap</code> with the specific <code>name</code>.
    # @param [String] name the name of the map
    # @return [::Vertx::LocalMap] the msp
    def get_local_map(name=nil)
      if name.class == String && !block_given?
        return ::Vertx::LocalMap.new(@j_del.java_method(:getLocalMap, [Java::java.lang.String.java_class]).call(name))
      end
      raise ArgumentError, "Invalid arguments when calling get_local_map(name)"
    end
  end
end

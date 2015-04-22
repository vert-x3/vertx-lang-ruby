require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.Lock
module Vertx
  #  An asynchronous exclusive lock which can be obtained from any node in the cluster.
  #  <p>
  #  When the lock is obtained, no-one else in the cluster can obtain the lock with the same name until the lock
  #  is released.
  class Lock
    # @private
    # @param j_del [::Vertx::Lock] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Lock] the underlying java delegate
    def j_del
      @j_del
    end
    #  Release the lock. Once the lock is released another will be able to obtain the lock.
    # @return [void]
    def release
      if !block_given?
        return @j_del.java_method(:release, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling release()"
    end
  end
end

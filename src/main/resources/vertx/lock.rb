require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.Lock
module Vertx
  #  @author <a href="http://tfox.org">Tim Fox</a>
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
    # return [void]
    def release
      @j_del.release
    end
  end
end

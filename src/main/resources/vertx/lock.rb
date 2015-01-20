require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.Lock
module Vertx
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
    # THE METHOD DOC
    #
    # return [void]
    def release
      @j_del.release
    end
  end
end

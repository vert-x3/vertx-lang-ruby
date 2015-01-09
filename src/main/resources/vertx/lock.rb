require 'vertx/util/utils.rb'
module Vertx
  class Lock
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def release()
      return @j_del.release()
    end
  end
end

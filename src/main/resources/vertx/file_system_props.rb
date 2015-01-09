require 'vertx/util/utils.rb'
module Vertx
  class FileSystemProps
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def total_space()
      return @j_del.totalSpace()
    end
    def unallocated_space()
      return @j_del.unallocatedSpace()
    end
    def usable_space()
      return @j_del.usableSpace()
    end
  end
end

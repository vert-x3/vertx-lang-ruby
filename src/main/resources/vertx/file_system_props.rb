require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystemProps
module Vertx
  class FileSystemProps
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def total_space()
      @j_del.totalSpace
    end
    def unallocated_space()
      @j_del.unallocatedSpace
    end
    def usable_space()
      @j_del.usableSpace
    end
  end
end

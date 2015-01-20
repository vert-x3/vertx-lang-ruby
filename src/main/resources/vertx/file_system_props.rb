require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystemProps
module Vertx
  class FileSystemProps
    # @private
    # @param j_del [::Vertx::FileSystemProps] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::FileSystemProps] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def total_space
      @j_del.totalSpace
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def unallocated_space
      @j_del.unallocatedSpace
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def usable_space
      @j_del.usableSpace
    end
  end
end

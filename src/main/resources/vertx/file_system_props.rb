require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystemProps
module Vertx
  #  Represents properties of the file system.
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
    #  @return The total space on the file system, in bytes
    # @return [Fixnum]
    def total_space
      if !block_given?
        return @j_del.java_method(:totalSpace, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling total_space()"
    end
    #  @return The total un-allocated space on the file system, in bytes
    # @return [Fixnum]
    def unallocated_space
      if !block_given?
        return @j_del.java_method(:unallocatedSpace, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling unallocated_space()"
    end
    #  @return The total usable space on the file system, in bytes
    # @return [Fixnum]
    def usable_space
      if !block_given?
        return @j_del.java_method(:usableSpace, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling usable_space()"
    end
  end
end

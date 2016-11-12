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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == FileSystemProps
    end
    def @@j_api_type.wrap(obj)
      FileSystemProps.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreFile::FileSystemProps.java_class
    end
    # @return [Fixnum] The total space on the file system, in bytes
    def total_space
      if !block_given?
        return @j_del.java_method(:totalSpace, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling total_space()"
    end
    # @return [Fixnum] The total un-allocated space on the file system, in bytes
    def unallocated_space
      if !block_given?
        return @j_del.java_method(:unallocatedSpace, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling unallocated_space()"
    end
    # @return [Fixnum] The total usable space on the file system, in bytes
    def usable_space
      if !block_given?
        return @j_del.java_method(:usableSpace, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling usable_space()"
    end
  end
end

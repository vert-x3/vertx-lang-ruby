require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystemProps
module Vertx
  #  Represents properties of the file system.<p>
  #  Instances of FileSystemProps are thread-safe.<p>
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
    #  The total space on the file system, in bytes
    # @return [Fixnum]
    def total_space
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:totalSpace))).invoke(@j_del)
    end
    #  The total un-allocated space on the file system, in bytes
    # @return [Fixnum]
    def unallocated_space
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:unallocatedSpace))).invoke(@j_del)
    end
    #  The total usable space on the file system, in bytes
    # @return [Fixnum]
    def usable_space
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:usableSpace))).invoke(@j_del)
    end
  end
end

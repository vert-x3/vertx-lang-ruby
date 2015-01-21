require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileProps
module Vertx
  #  Represents properties of a file on the file system<p>
  #  Instances of FileProps are thread-safe<p>
  class FileProps
    # @private
    # @param j_del [::Vertx::FileProps] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::FileProps] the underlying java delegate
    def j_del
      @j_del
    end
    #  The date the file was created
    # @return [Fixnum]
    def creation_time
      @j_del.creationTime
    end
    #  The date the file was last accessed
    # @return [Fixnum]
    def last_access_time
      @j_del.lastAccessTime
    end
    #  The date the file was last modified
    # @return [Fixnum]
    def last_modified_time
      @j_del.lastModifiedTime
    end
    #  Is the file a directory?
    # @return [true,false]
    def is_directory
      @j_del.isDirectory
    end
    #  Is the file some other type? (I.e. not a directory, regular file or symbolic link)
    # @return [true,false]
    def is_other
      @j_del.isOther
    end
    #  Is the file a regular file?
    # @return [true,false]
    def is_regular_file
      @j_del.isRegularFile
    end
    #  Is the file a symbolic link?
    # @return [true,false]
    def is_symbolic_link
      @j_del.isSymbolicLink
    end
    #  The size of the file, in bytes
    # @return [Fixnum]
    def size
      @j_del.size
    end
  end
end

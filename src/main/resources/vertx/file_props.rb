require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileProps
module Vertx
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
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def creation_time
      @j_del.creationTime
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def last_access_time
      @j_del.lastAccessTime
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def last_modified_time
      @j_del.lastModifiedTime
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_directory
      @j_del.isDirectory
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_other
      @j_del.isOther
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_regular_file
      @j_del.isRegularFile
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_symbolic_link
      @j_del.isSymbolicLink
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def size
      @j_del.size
    end
  end
end

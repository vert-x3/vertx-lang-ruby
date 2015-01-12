require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileProps
module Vertx
  class FileProps
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def creation_time()
      @j_del.creationTime
    end
    def last_access_time()
      @j_del.lastAccessTime
    end
    def last_modified_time()
      @j_del.lastModifiedTime
    end
    def is_directory()
      @j_del.isDirectory
    end
    def is_other()
      @j_del.isOther
    end
    def is_regular_file()
      @j_del.isRegularFile
    end
    def is_symbolic_link()
      @j_del.isSymbolicLink
    end
    def size()
      @j_del.size
    end
  end
end

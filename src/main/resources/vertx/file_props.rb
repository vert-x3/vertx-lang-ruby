require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileProps
module Vertx
  #  Represents properties of a file on the file system.
  #  <p>
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
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:creationTime))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling creation_time()"
    end
    #  The date the file was last accessed
    # @return [Fixnum]
    def last_access_time
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:lastAccessTime))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling last_access_time()"
    end
    #  The date the file was last modified
    # @return [Fixnum]
    def last_modified_time
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:lastModifiedTime))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling last_modified_time()"
    end
    #  Is the file a directory?
    # @return [true,false]
    def is_directory
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isDirectory))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_directory()"
    end
    #  Is the file some other type? (I.e. not a directory, regular file or symbolic link)
    # @return [true,false]
    def is_other
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isOther))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_other()"
    end
    #  Is the file a regular file?
    # @return [true,false]
    def is_regular_file
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isRegularFile))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_regular_file()"
    end
    #  Is the file a symbolic link?
    # @return [true,false]
    def is_symbolic_link
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isSymbolicLink))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_symbolic_link()"
    end
    #  The size of the file, in bytes
    # @return [Fixnum]
    def size
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:size))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

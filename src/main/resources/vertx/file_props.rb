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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == FileProps
    end
    def @@j_api_type.wrap(obj)
      FileProps.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreFile::FileProps.java_class
    end
    #  The date the file was created
    # @return [Fixnum]
    def creation_time
      if !block_given?
        return @j_del.java_method(:creationTime, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling creation_time()"
    end
    #  The date the file was last accessed
    # @return [Fixnum]
    def last_access_time
      if !block_given?
        return @j_del.java_method(:lastAccessTime, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling last_access_time()"
    end
    #  The date the file was last modified
    # @return [Fixnum]
    def last_modified_time
      if !block_given?
        return @j_del.java_method(:lastModifiedTime, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling last_modified_time()"
    end
    #  Is the file a directory?
    # @return [true,false]
    def directory?
      if !block_given?
        return @j_del.java_method(:isDirectory, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling directory?()"
    end
    #  Is the file some other type? (I.e. not a directory, regular file or symbolic link)
    # @return [true,false]
    def other?
      if !block_given?
        return @j_del.java_method(:isOther, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling other?()"
    end
    #  Is the file a regular file?
    # @return [true,false]
    def regular_file?
      if !block_given?
        return @j_del.java_method(:isRegularFile, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling regular_file?()"
    end
    #  Is the file a symbolic link?
    # @return [true,false]
    def symbolic_link?
      if !block_given?
        return @j_del.java_method(:isSymbolicLink, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling symbolic_link?()"
    end
    #  The size of the file, in bytes
    # @return [Fixnum]
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
  end
end

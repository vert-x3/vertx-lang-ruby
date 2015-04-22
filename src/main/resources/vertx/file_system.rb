require 'vertx/async_file'
require 'vertx/buffer'
require 'vertx/file_system_props'
require 'vertx/file_props'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystem
module Vertx
  #  Contains a broad set of operations for manipulating files on the file system.
  #  <p>
  #  A (potential) blocking and non blocking version of each operation is provided.
  #  <p>
  #  The non blocking versions take a handler which is called when the operation completes or an error occurs.
  #  <p>
  #  The blocking versions are named <code>xxxBlocking</code> and return the results, or throw exceptions directly.
  #  In many cases, depending on the operating system and file system some of the potentially blocking operations
  #  can return quickly, which is why we provide them, but it's highly recommended that you test how long they take to
  #  return in your particular application before using them on an event loop.
  #  <p>
  #  Please consult the documentation for more information on file system support.
  class FileSystem
    # @private
    # @param j_del [::Vertx::FileSystem] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::FileSystem] the underlying java delegate
    def j_del
      @j_del
    end
    #  Copy a file from the path <code>from</code> to path <code>to</code>, asynchronously.
    #  <p>
    #  The copy will fail if the destination already exists.
    # @param [String] from the path to copy from
    # @param [String] to the path to copy to
    # @yield the handler that will be called on completion
    # @return [self]
    def copy(from=nil,to=nil)
      if from.class == String && to.class == String && block_given?
        @j_del.java_method(:copy, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(from,to,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling copy(from,to)"
    end
    #  Blocking version of {::Vertx::FileSystem#copy}
    # @param [String] from
    # @param [String] to
    # @return [self]
    def copy_blocking(from=nil,to=nil)
      if from.class == String && to.class == String && !block_given?
        @j_del.java_method(:copyBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(from,to)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling copy_blocking(from,to)"
    end
    #  Copy a file from the path <code>from</code> to path <code>to</code>, asynchronously.
    #  <p>
    #  If <code>recursive</code> is <code>true</code> and <code>from</code> represents a directory, then the directory and its contents
    #  will be copied recursively to the destination <code>to</code>.
    #  <p>
    #  The copy will fail if the destination if the destination already exists.
    # @param [String] from the path to copy from
    # @param [String] to the path to copy to
    # @param [true,false] recursive
    # @yield the handler that will be called on completion
    # @return [self]
    def copy_recursive(from=nil,to=nil,recursive=nil)
      if from.class == String && to.class == String && (recursive.class == TrueClass || recursive.class == FalseClass) && block_given?
        @j_del.java_method(:copyRecursive, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(from,to,recursive,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling copy_recursive(from,to,recursive)"
    end
    #  Blocking version of {::Vertx::FileSystem#copy_recursive}
    # @param [String] from
    # @param [String] to
    # @param [true,false] recursive
    # @return [self]
    def copy_recursive_blocking(from=nil,to=nil,recursive=nil)
      if from.class == String && to.class == String && (recursive.class == TrueClass || recursive.class == FalseClass) && !block_given?
        @j_del.java_method(:copyRecursiveBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::boolean.java_class]).call(from,to,recursive)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling copy_recursive_blocking(from,to,recursive)"
    end
    #  Move a file from the path <code>from</code> to path <code>to</code>, asynchronously.
    #  <p>
    #  The move will fail if the destination already exists.
    # @param [String] from the path to copy from
    # @param [String] to the path to copy to
    # @yield the handler that will be called on completion
    # @return [self]
    def move(from=nil,to=nil)
      if from.class == String && to.class == String && block_given?
        @j_del.java_method(:move, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(from,to,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling move(from,to)"
    end
    #  Blocking version of {::Vertx::FileSystem#move}
    # @param [String] from
    # @param [String] to
    # @return [self]
    def move_blocking(from=nil,to=nil)
      if from.class == String && to.class == String && !block_given?
        @j_del.java_method(:moveBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(from,to)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling move_blocking(from,to)"
    end
    #  Truncate the file represented by <code>path</code> to length <code>len</code> in bytes, asynchronously.
    #  <p>
    #  The operation will fail if the file does not exist or <code>len</code> is less than <code>zero</code>.
    # @param [String] path the path to the file
    # @param [Fixnum] len the length to truncate it to
    # @yield the handler that will be called on completion
    # @return [self]
    def truncate(path=nil,len=nil)
      if path.class == String && len.class == Fixnum && block_given?
        @j_del.java_method(:truncate, [Java::java.lang.String.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(path,len,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling truncate(path,len)"
    end
    #  Blocking version of {::Vertx::FileSystem#truncate}
    # @param [String] path
    # @param [Fixnum] len
    # @return [self]
    def truncate_blocking(path=nil,len=nil)
      if path.class == String && len.class == Fixnum && !block_given?
        @j_del.java_method(:truncateBlocking, [Java::java.lang.String.java_class,Java::long.java_class]).call(path,len)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling truncate_blocking(path,len)"
    end
    #  Change the permissions on the file represented by <code>path</code> to <code>perms</code>, asynchronously.
    #  <p>
    #  The permission String takes the form rwxr-x--- as
    #  specified <a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>.
    # @param [String] path the path to the file
    # @param [String] perms the permissions string
    # @yield the handler that will be called on completion
    # @return [self]
    def chmod(path=nil,perms=nil)
      if path.class == String && perms.class == String && block_given?
        @j_del.java_method(:chmod, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,perms,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling chmod(path,perms)"
    end
    #  Blocking version of {::Vertx::FileSystem #chmod(String, String, Handler)}
    # @param [String] path
    # @param [String] perms
    # @return [self]
    def chmod_blocking(path=nil,perms=nil)
      if path.class == String && perms.class == String && !block_given?
        @j_del.java_method(:chmodBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,perms)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling chmod_blocking(path,perms)"
    end
    #  Change the permissions on the file represented by <code>path</code> to <code>perms</code>, asynchronously.<p>
    #  The permission String takes the form rwxr-x--- as
    #  specified in {<a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>}.
    #  <p>
    #  If the file is directory then all contents will also have their permissions changed recursively. Any directory permissions will
    #  be set to <code>dirPerms</code>, whilst any normal file permissions will be set to <code>perms</code>.
    # @param [String] path the path to the file
    # @param [String] perms the permissions string
    # @param [String] dirPerms the directory permissions
    # @yield the handler that will be called on completion
    # @return [self]
    def chmod_recursive(path=nil,perms=nil,dirPerms=nil)
      if path.class == String && perms.class == String && dirPerms.class == String && block_given?
        @j_del.java_method(:chmodRecursive, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,perms,dirPerms,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling chmod_recursive(path,perms,dirPerms)"
    end
    #  Blocking version of {::Vertx::FileSystem#chmod_recursive}
    # @param [String] path
    # @param [String] perms
    # @param [String] dirPerms
    # @return [self]
    def chmod_recursive_blocking(path=nil,perms=nil,dirPerms=nil)
      if path.class == String && perms.class == String && dirPerms.class == String && !block_given?
        @j_del.java_method(:chmodRecursiveBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,perms,dirPerms)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling chmod_recursive_blocking(path,perms,dirPerms)"
    end
    #  Change the ownership on the file represented by <code>path</code> to <code>user</code> and {code group}, asynchronously.
    # @param [String] path the path to the file
    # @param [String] user the user name
    # @param [String] group the user group
    # @yield the handler that will be called on completion
    # @return [self]
    def chown(path=nil,user=nil,group=nil)
      if path.class == String && user.class == String && group.class == String && block_given?
        @j_del.java_method(:chown, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,user,group,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling chown(path,user,group)"
    end
    #  Blocking version of {::Vertx::FileSystem#chown}
    # 
    # @param [String] path
    # @param [String] user
    # @param [String] group
    # @return [self]
    def chown_blocking(path=nil,user=nil,group=nil)
      if path.class == String && user.class == String && group.class == String && !block_given?
        @j_del.java_method(:chownBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,user,group)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling chown_blocking(path,user,group)"
    end
    #  Obtain properties for the file represented by <code>path</code>, asynchronously.
    #  <p>
    #  If the file is a link, the link will be followed.
    # @param [String] path the path to the file
    # @yield the handler that will be called on completion
    # @return [self]
    def props(path=nil)
      if path.class == String && block_given?
        @j_del.java_method(:props, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::FileProps.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling props(path)"
    end
    #  Blocking version of {::Vertx::FileSystem#props}
    # @param [String] path
    # @return [::Vertx::FileProps]
    def props_blocking(path=nil)
      if path.class == String && !block_given?
        return ::Vertx::FileProps.new(@j_del.java_method(:propsBlocking, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling props_blocking(path)"
    end
    #  Obtain properties for the link represented by <code>path</code>, asynchronously.
    #  <p>
    #  The link will not be followed.
    # @param [String] path the path to the file
    # @yield the handler that will be called on completion
    # @return [self]
    def lprops(path=nil)
      if path.class == String && block_given?
        @j_del.java_method(:lprops, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::FileProps.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling lprops(path)"
    end
    #  Blocking version of {::Vertx::FileSystem#lprops}
    # @param [String] path
    # @return [::Vertx::FileProps]
    def lprops_blocking(path=nil)
      if path.class == String && !block_given?
        return ::Vertx::FileProps.new(@j_del.java_method(:lpropsBlocking, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling lprops_blocking(path)"
    end
    #  Create a hard link on the file system from <code>link</code> to <code>existing</code>, asynchronously.
    # @param [String] link the link
    # @param [String] existing the link destination
    # @yield the handler that will be called on completion
    # @return [self]
    def link(link=nil,existing=nil)
      if link.class == String && existing.class == String && block_given?
        @j_del.java_method(:link, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(link,existing,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling link(link,existing)"
    end
    #  Blocking version of {::Vertx::FileSystem#link}
    # @param [String] link
    # @param [String] existing
    # @return [self]
    def link_blocking(link=nil,existing=nil)
      if link.class == String && existing.class == String && !block_given?
        @j_del.java_method(:linkBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(link,existing)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling link_blocking(link,existing)"
    end
    #  Create a symbolic link on the file system from <code>link</code> to <code>existing</code>, asynchronously.
    # @param [String] link the link
    # @param [String] existing the link destination
    # @yield the handler that will be called on completion
    # @return [self]
    def symlink(link=nil,existing=nil)
      if link.class == String && existing.class == String && block_given?
        @j_del.java_method(:symlink, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(link,existing,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling symlink(link,existing)"
    end
    #  Blocking version of {::Vertx::FileSystem#link}
    # @param [String] link
    # @param [String] existing
    # @return [self]
    def symlink_blocking(link=nil,existing=nil)
      if link.class == String && existing.class == String && !block_given?
        @j_del.java_method(:symlinkBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(link,existing)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling symlink_blocking(link,existing)"
    end
    #  Unlinks the link on the file system represented by the path <code>link</code>, asynchronously.
    # @param [String] link the link
    # @yield the handler that will be called on completion
    # @return [self]
    def unlink(link=nil)
      if link.class == String && block_given?
        @j_del.java_method(:unlink, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(link,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling unlink(link)"
    end
    #  Blocking version of {::Vertx::FileSystem#unlink}
    # @param [String] link
    # @return [self]
    def unlink_blocking(link=nil)
      if link.class == String && !block_given?
        @j_del.java_method(:unlinkBlocking, [Java::java.lang.String.java_class]).call(link)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling unlink_blocking(link)"
    end
    #  Returns the path representing the file that the symbolic link specified by <code>link</code> points to, asynchronously.
    # @param [String] link the link
    # @yield the handler that will be called on completion
    # @return [self]
    def read_symlink(link=nil)
      if link.class == String && block_given?
        @j_del.java_method(:readSymlink, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(link,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling read_symlink(link)"
    end
    #  Blocking version of {::Vertx::FileSystem#read_symlink}
    # @param [String] link
    # @return [String]
    def read_symlink_blocking(link=nil)
      if link.class == String && !block_given?
        return @j_del.java_method(:readSymlinkBlocking, [Java::java.lang.String.java_class]).call(link)
      end
      raise ArgumentError, "Invalid arguments when calling read_symlink_blocking(link)"
    end
    #  Deletes the file represented by the specified <code>path</code>, asynchronously.
    # @param [String] path path to the file
    # @yield the handler that will be called on completion
    # @return [self]
    def delete(path=nil)
      if path.class == String && block_given?
        @j_del.java_method(:delete, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling delete(path)"
    end
    #  Blocking version of {::Vertx::FileSystem#delete}
    # @param [String] path
    # @return [self]
    def delete_blocking(path=nil)
      if path.class == String && !block_given?
        @j_del.java_method(:deleteBlocking, [Java::java.lang.String.java_class]).call(path)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling delete_blocking(path)"
    end
    #  Deletes the file represented by the specified <code>path</code>, asynchronously.
    #  <p>
    #  If the path represents a directory and <code>recursive = true</code> then the directory and its contents will be
    #  deleted recursively.
    # @param [String] path path to the file
    # @param [true,false] recursive delete recursively?
    # @yield the handler that will be called on completion
    # @return [self]
    def delete_recursive(path=nil,recursive=nil)
      if path.class == String && (recursive.class == TrueClass || recursive.class == FalseClass) && block_given?
        @j_del.java_method(:deleteRecursive, [Java::java.lang.String.java_class,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(path,recursive,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling delete_recursive(path,recursive)"
    end
    #  Blocking version of {::Vertx::FileSystem#delete_recursive}
    # @param [String] path
    # @param [true,false] recursive
    # @return [self]
    def delete_recursive_blocking(path=nil,recursive=nil)
      if path.class == String && (recursive.class == TrueClass || recursive.class == FalseClass) && !block_given?
        @j_del.java_method(:deleteRecursiveBlocking, [Java::java.lang.String.java_class,Java::boolean.java_class]).call(path,recursive)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling delete_recursive_blocking(path,recursive)"
    end
    #  Create the directory represented by <code>path</code>, asynchronously.
    #  <p>
    #  The new directory will be created with permissions as specified by <code>perms</code>.
    #  <p>
    #  The permission String takes the form rwxr-x--- as specified
    #  in <a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>.
    #  <p>
    #  The operation will fail if the directory already exists.
    # @param [String] path path to the file
    # @param [String] perms the permissions string
    # @yield the handler that will be called on completion
    # @return [self]
    def mkdir(path=nil,perms=nil)
      if path.class == String && block_given? && perms == nil
        @j_del.java_method(:mkdir, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      elsif path.class == String && perms.class == String && block_given?
        @j_del.java_method(:mkdir, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,perms,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling mkdir(path,perms)"
    end
    #  Blocking version of {::Vertx::FileSystem#mkdir}
    # @param [String] path
    # @param [String] perms
    # @return [self]
    def mkdir_blocking(path=nil,perms=nil)
      if path.class == String && !block_given? && perms == nil
        @j_del.java_method(:mkdirBlocking, [Java::java.lang.String.java_class]).call(path)
        return self
      elsif path.class == String && perms.class == String && !block_given?
        @j_del.java_method(:mkdirBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,perms)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling mkdir_blocking(path,perms)"
    end
    #  Create the directory represented by <code>path</code> and any non existent parents, asynchronously.
    #  <p>
    #  The new directory will be created with permissions as specified by <code>perms</code>.
    #  <p>
    #  The permission String takes the form rwxr-x--- as specified
    #  in <a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>.
    #  <p>
    #  The operation will fail if the directory already exists.<p>
    # @param [String] path path to the file
    # @param [String] perms the permissions string
    # @yield the handler that will be called on completion
    # @return [self]
    def mkdirs(path=nil,perms=nil)
      if path.class == String && block_given? && perms == nil
        @j_del.java_method(:mkdirs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      elsif path.class == String && perms.class == String && block_given?
        @j_del.java_method(:mkdirs, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,perms,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling mkdirs(path,perms)"
    end
    #  Blocking version of {::Vertx::FileSystem#mkdirs}
    # @param [String] path
    # @param [String] perms
    # @return [self]
    def mkdirs_blocking(path=nil,perms=nil)
      if path.class == String && !block_given? && perms == nil
        @j_del.java_method(:mkdirsBlocking, [Java::java.lang.String.java_class]).call(path)
        return self
      elsif path.class == String && perms.class == String && !block_given?
        @j_del.java_method(:mkdirsBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,perms)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling mkdirs_blocking(path,perms)"
    end
    #  Read the contents of the directory specified by <code>path</code>, asynchronously.
    #  <p>
    #  The parameter <code>filter</code> is a regular expression. If <code>filter</code> is specified then only the paths that
    #  match  @{filter}will be returned.
    #  <p>
    #  The result is an array of String representing the paths of the files inside the directory.
    # @param [String] path path to the directory
    # @param [String] filter the filter expression
    # @yield the handler that will be called on completion
    # @return [self]
    def read_dir(path=nil,filter=nil)
      if path.class == String && block_given? && filter == nil
        @j_del.java_method(:readDir, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      elsif path.class == String && filter.class == String && block_given?
        @j_del.java_method(:readDir, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,filter,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling read_dir(path,filter)"
    end
    #  Blocking version of {::Vertx::FileSystem#read_dir}
    # @param [String] path
    # @param [String] filter
    # @return [Array<String>]
    def read_dir_blocking(path=nil,filter=nil)
      if path.class == String && !block_given? && filter == nil
        return @j_del.java_method(:readDirBlocking, [Java::java.lang.String.java_class]).call(path).to_a.map { |elt| elt }
      elsif path.class == String && filter.class == String && !block_given?
        return @j_del.java_method(:readDirBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,filter).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling read_dir_blocking(path,filter)"
    end
    #  Reads the entire file as represented by the path <code>path</code> as a , asynchronously.
    #  <p>
    #  Do not user this method to read very large files or you risk running out of available RAM.
    # @param [String] path path to the file
    # @yield the handler that will be called on completion
    # @return [self]
    def read_file(path=nil)
      if path.class == String && block_given?
        @j_del.java_method(:readFile, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Buffer.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling read_file(path)"
    end
    #  Blocking version of {::Vertx::FileSystem#read_file}
    # @param [String] path
    # @return [::Vertx::Buffer]
    def read_file_blocking(path=nil)
      if path.class == String && !block_given?
        return ::Vertx::Buffer.new(@j_del.java_method(:readFileBlocking, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling read_file_blocking(path)"
    end
    #  Creates the file, and writes the specified <code>Buffer data</code> to the file represented by the path <code>path</code>,
    #  asynchronously.
    # @param [String] path path to the file
    # @param [::Vertx::Buffer] data
    # @yield the handler that will be called on completion
    # @return [self]
    def write_file(path=nil,data=nil)
      if path.class == String && data.class.method_defined?(:j_del) && block_given?
        @j_del.java_method(:writeFile, [Java::java.lang.String.java_class,Java::IoVertxCoreBuffer::Buffer.java_class,Java::IoVertxCore::Handler.java_class]).call(path,data.j_del,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write_file(path,data)"
    end
    #  Blocking version of {::Vertx::FileSystem#write_file}
    # @param [String] path
    # @param [::Vertx::Buffer] data
    # @return [self]
    def write_file_blocking(path=nil,data=nil)
      if path.class == String && data.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:writeFileBlocking, [Java::java.lang.String.java_class,Java::IoVertxCoreBuffer::Buffer.java_class]).call(path,data.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write_file_blocking(path,data)"
    end
    #  Open the file represented by <code>path</code>, asynchronously.
    #  <p>
    #  The file is opened for both reading and writing. If the file does not already exist it will be created.
    # @param [String] path path to the file
    # @param [Hash] options options describing how the file should be opened
    # @yield 
    # @return [self]
    def open(path=nil,options=nil)
      if path.class == String && options.class == Hash && block_given?
        @j_del.java_method(:open, [Java::java.lang.String.java_class,Java::IoVertxCoreFile::OpenOptions.java_class,Java::IoVertxCore::Handler.java_class]).call(path,Java::IoVertxCoreFile::OpenOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::AsyncFile.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling open(path,options)"
    end
    #  Blocking version of {::Vertx::FileSystem#open}
    # @param [String] path
    # @param [Hash] options
    # @return [::Vertx::AsyncFile]
    def open_blocking(path=nil,options=nil)
      if path.class == String && options.class == Hash && !block_given?
        return ::Vertx::AsyncFile.new(@j_del.java_method(:openBlocking, [Java::java.lang.String.java_class,Java::IoVertxCoreFile::OpenOptions.java_class]).call(path,Java::IoVertxCoreFile::OpenOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling open_blocking(path,options)"
    end
    #  Creates an empty file with the specified <code>path</code> and permissions <code>perms</code>, asynchronously.
    # @param [String] path path to the file
    # @param [String] perms the permissions string
    # @yield the handler that will be called on completion
    # @return [self]
    def create_file(path=nil,perms=nil)
      if path.class == String && block_given? && perms == nil
        @j_del.java_method(:createFile, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      elsif path.class == String && perms.class == String && block_given?
        @j_del.java_method(:createFile, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,perms,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling create_file(path,perms)"
    end
    #  Blocking version of {::Vertx::FileSystem#create_file}
    # @param [String] path
    # @param [String] perms
    # @return [self]
    def create_file_blocking(path=nil,perms=nil)
      if path.class == String && !block_given? && perms == nil
        @j_del.java_method(:createFileBlocking, [Java::java.lang.String.java_class]).call(path)
        return self
      elsif path.class == String && perms.class == String && !block_given?
        @j_del.java_method(:createFileBlocking, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(path,perms)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling create_file_blocking(path,perms)"
    end
    #  Determines whether the file as specified by the path <code>path</code> exists, asynchronously.
    # @param [String] path path to the file
    # @yield the handler that will be called on completion
    # @return [self]
    def exists(path=nil)
      if path.class == String && block_given?
        @j_del.java_method(:exists, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exists(path)"
    end
    #  Blocking version of {::Vertx::FileSystem#exists}
    # @param [String] path
    # @return [true,false]
    def exists_blocking(path=nil)
      if path.class == String && !block_given?
        return @j_del.java_method(:existsBlocking, [Java::java.lang.String.java_class]).call(path)
      end
      raise ArgumentError, "Invalid arguments when calling exists_blocking(path)"
    end
    #  Returns properties of the file-system being used by the specified <code>path</code>, asynchronously.
    # @param [String] path path to anywhere on the filesystem
    # @yield the handler that will be called on completion
    # @return [self]
    def fs_props(path=nil)
      if path.class == String && block_given?
        @j_del.java_method(:fsProps, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(path,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::FileSystemProps.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling fs_props(path)"
    end
    #  Blocking version of {::Vertx::FileSystem#fs_props}
    # @param [String] path
    # @return [::Vertx::FileSystemProps]
    def fs_props_blocking(path=nil)
      if path.class == String && !block_given?
        return ::Vertx::FileSystemProps.new(@j_del.java_method(:fsPropsBlocking, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling fs_props_blocking(path)"
    end
  end
end

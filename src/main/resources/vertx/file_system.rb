require 'vertx/async_file'
require 'vertx/buffer'
require 'vertx/file_system_props'
require 'vertx/file_props'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystem
module Vertx
  class FileSystem
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def copy(from,to,&handler)
      if from.class == String
        if to.class == String
          if handler.class == Proc
            @j_del.copy(from,to,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def copy_blocking(from,to)
      if from.class == String
        if to.class == String
          @j_del.copyBlocking(from,to)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def copy_recursive(from,to,recursive,&handler)
      if from.class == String
        if to.class == String
          if recursive.class == TrueClass || recursive.class == FalseClass
            if handler.class == Proc
              @j_del.copyRecursive(from,to,recursive,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def copy_recursive_blocking(from,to,recursive)
      if from.class == String
        if to.class == String
          if recursive.class == TrueClass || recursive.class == FalseClass
            @j_del.copyRecursiveBlocking(from,to,recursive)
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def move(from,to,&handler)
      if from.class == String
        if to.class == String
          if handler.class == Proc
            @j_del.move(from,to,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def move_blocking(from,to)
      if from.class == String
        if to.class == String
          @j_del.moveBlocking(from,to)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def truncate(path,len,&handler)
      if path.class == String
        if len.class == Fixnum
          if handler.class == Proc
            @j_del.truncate(path,len,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def truncate_blocking(path,len)
      if path.class == String
        if len.class == Fixnum
          @j_del.truncateBlocking(path,len)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def chmod(path,perms,&handler)
      if path.class == String
        if perms.class == String
          if handler.class == Proc
            @j_del.chmod(path,perms,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def chmod_blocking(path,perms)
      if path.class == String
        if perms.class == String
          @j_del.chmodBlocking(path,perms)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def chmod_recursive(path,perms,dirPerms,&handler)
      if path.class == String
        if perms.class == String
          if dirPerms.class == String
            if handler.class == Proc
              @j_del.chmodRecursive(path,perms,dirPerms,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def chmod_recursive_blocking(path,perms,dirPerms)
      if path.class == String
        if perms.class == String
          if dirPerms.class == String
            @j_del.chmodRecursiveBlocking(path,perms,dirPerms)
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def chown(path,user,group,&handler)
      if path.class == String
        if user.class == String
          if group.class == String
            if handler.class == Proc
              @j_del.chown(path,user,group,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def chown_blocking(path,user,group)
      if path.class == String
        if user.class == String
          if group.class == String
            @j_del.chownBlocking(path,user,group)
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def props(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.props(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::FileProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def props_blocking(path)
      if path.class == String
        return Vertx::FileProps.new(@j_del.propsBlocking(path))
      end
      raise ArgumentError, 'dispatch error'
    end
    def lprops(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.lprops(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::FileProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def lprops_blocking(path)
      if path.class == String
        return Vertx::FileProps.new(@j_del.lpropsBlocking(path))
      end
      raise ArgumentError, 'dispatch error'
    end
    def link(link,existing,&handler)
      if link.class == String
        if existing.class == String
          if handler.class == Proc
            @j_del.link(link,existing,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def link_blocking(link,existing)
      if link.class == String
        if existing.class == String
          @j_del.linkBlocking(link,existing)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def symlink(link,existing,&handler)
      if link.class == String
        if existing.class == String
          if handler.class == Proc
            @j_del.symlink(link,existing,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def symlink_blocking(link,existing)
      if link.class == String
        if existing.class == String
          @j_del.symlinkBlocking(link,existing)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def unlink(link,&handler)
      if link.class == String
        if handler.class == Proc
          @j_del.unlink(link,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def unlink_blocking(link)
      if link.class == String
        @j_del.unlinkBlocking(link)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def read_symlink(link,&handler)
      if link.class == String
        if handler.class == Proc
          @j_del.readSymlink(link,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def read_symlink_blocking(link)
      if link.class == String
        return @j_del.readSymlinkBlocking(link)
      end
      raise ArgumentError, 'dispatch error'
    end
    def delete(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.delete(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def delete_blocking(path)
      if path.class == String
        @j_del.deleteBlocking(path)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def delete_recursive(path,recursive,&handler)
      if path.class == String
        if recursive.class == TrueClass || recursive.class == FalseClass
          if handler.class == Proc
            @j_del.deleteRecursive(path,recursive,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def delete_recursive_blocking(path,recursive)
      if path.class == String
        if recursive.class == TrueClass || recursive.class == FalseClass
          @j_del.deleteRecursiveBlocking(path,recursive)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def mkdir(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.mkdir(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.mkdir(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def mkdir_blocking(path,perms=nil)
      if path.class == String
        if perms.class == String
          @j_del.mkdirBlocking(path,perms)
          return self
        end
        @j_del.mkdirBlocking(path)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def mkdirs(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.mkdirs(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.mkdirs(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def mkdirs_blocking(path,perms=nil)
      if path.class == String
        if perms.class == String
          @j_del.mkdirsBlocking(path,perms)
          return self
        end
        @j_del.mkdirsBlocking(path)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def read_dir(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.readDir(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.readDir(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def read_dir_blocking(path,filter=nil)
      if path.class == String
        if filter.class == String
          return @j_del.readDirBlocking(path,filter).to_a.map { |elt| elt }
        end
        return @j_del.readDirBlocking(path).to_a.map { |elt| elt }
      end
      raise ArgumentError, 'dispatch error'
    end
    def read_file(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.readFile(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Buffer.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def read_file_blocking(path)
      if path.class == String
        return Vertx::Buffer.new(@j_del.readFileBlocking(path))
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_file(path,data,&handler)
      if path.class == String
        if data.class.method_defined?(:j_del)
          if handler.class == Proc
            @j_del.writeFile(path,data.j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_file_blocking(path,data)
      if path.class == String
        if data.class.method_defined?(:j_del)
          @j_del.writeFileBlocking(path,data.j_del)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def open(path,options,&handler)
      if path.class == String
        if options == nil || options.class == Hash
          if handler.class == Proc
            @j_del.open(path,options != nil ? Java::IoVertxCoreFile::OpenOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::AsyncFile.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def open_blocking(path,options)
      if path.class == String
        if options == nil || options.class == Hash
          return Vertx::AsyncFile.new(@j_del.openBlocking(path,options != nil ? Java::IoVertxCoreFile::OpenOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def create_file(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.createFile(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.createFile(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def create_file_blocking(path,perms=nil)
      if path.class == String
        if perms.class == String
          @j_del.createFileBlocking(path,perms)
          return self
        end
        @j_del.createFileBlocking(path)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def exists(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.exists(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def exists_blocking(path)
      if path.class == String
        return @j_del.existsBlocking(path)
      end
      raise ArgumentError, 'dispatch error'
    end
    def fs_props(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.fsProps(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::FileSystemProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def fs_props_blocking(path)
      if path.class == String
        return Vertx::FileSystemProps.new(@j_del.fsPropsBlocking(path))
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

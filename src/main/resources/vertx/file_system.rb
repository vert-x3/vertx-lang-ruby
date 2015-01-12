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
          raise ArgumentError, "Invalid argument handler=#{handler} when calling copy(from,to,handler)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy(from,to,handler)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy(from,to,handler)"
    end
    def copy_blocking(from,to)
      if from.class == String
        if to.class == String
          @j_del.copyBlocking(from,to)
          return self
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy_blocking(from,to)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy_blocking(from,to)"
    end
    def copy_recursive(from,to,recursive,&handler)
      if from.class == String
        if to.class == String
          if recursive.class == TrueClass || recursive.class == FalseClass
            if handler.class == Proc
              @j_del.copyRecursive(from,to,recursive,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument handler=#{handler} when calling copy_recursive(from,to,recursive,handler)"
          end
          raise ArgumentError, "Invalid argument recursive=#{recursive} when calling copy_recursive(from,to,recursive,handler)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy_recursive(from,to,recursive,handler)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy_recursive(from,to,recursive,handler)"
    end
    def copy_recursive_blocking(from,to,recursive)
      if from.class == String
        if to.class == String
          if recursive.class == TrueClass || recursive.class == FalseClass
            @j_del.copyRecursiveBlocking(from,to,recursive)
            return self
          end
          raise ArgumentError, "Invalid argument recursive=#{recursive} when calling copy_recursive_blocking(from,to,recursive)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy_recursive_blocking(from,to,recursive)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy_recursive_blocking(from,to,recursive)"
    end
    def move(from,to,&handler)
      if from.class == String
        if to.class == String
          if handler.class == Proc
            @j_del.move(from,to,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling move(from,to,handler)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling move(from,to,handler)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling move(from,to,handler)"
    end
    def move_blocking(from,to)
      if from.class == String
        if to.class == String
          @j_del.moveBlocking(from,to)
          return self
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling move_blocking(from,to)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling move_blocking(from,to)"
    end
    def truncate(path,len,&handler)
      if path.class == String
        if len.class == Fixnum
          if handler.class == Proc
            @j_del.truncate(path,len,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling truncate(path,len,handler)"
        end
        raise ArgumentError, "Invalid argument len=#{len} when calling truncate(path,len,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling truncate(path,len,handler)"
    end
    def truncate_blocking(path,len)
      if path.class == String
        if len.class == Fixnum
          @j_del.truncateBlocking(path,len)
          return self
        end
        raise ArgumentError, "Invalid argument len=#{len} when calling truncate_blocking(path,len)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling truncate_blocking(path,len)"
    end
    def chmod(path,perms,&handler)
      if path.class == String
        if perms.class == String
          if handler.class == Proc
            @j_del.chmod(path,perms,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling chmod(path,perms,handler)"
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod(path,perms,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod(path,perms,handler)"
    end
    def chmod_blocking(path,perms)
      if path.class == String
        if perms.class == String
          @j_del.chmodBlocking(path,perms)
          return self
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod_blocking(path,perms)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod_blocking(path,perms)"
    end
    def chmod_recursive(path,perms,dirPerms,&handler)
      if path.class == String
        if perms.class == String
          if dirPerms.class == String
            if handler.class == Proc
              @j_del.chmodRecursive(path,perms,dirPerms,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument handler=#{handler} when calling chmod_recursive(path,perms,dirPerms,handler)"
          end
          raise ArgumentError, "Invalid argument dirPerms=#{dirPerms} when calling chmod_recursive(path,perms,dirPerms,handler)"
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod_recursive(path,perms,dirPerms,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod_recursive(path,perms,dirPerms,handler)"
    end
    def chmod_recursive_blocking(path,perms,dirPerms)
      if path.class == String
        if perms.class == String
          if dirPerms.class == String
            @j_del.chmodRecursiveBlocking(path,perms,dirPerms)
            return self
          end
          raise ArgumentError, "Invalid argument dirPerms=#{dirPerms} when calling chmod_recursive_blocking(path,perms,dirPerms)"
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod_recursive_blocking(path,perms,dirPerms)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod_recursive_blocking(path,perms,dirPerms)"
    end
    def chown(path,user,group,&handler)
      if path.class == String
        if user.class == String
          if group.class == String
            if handler.class == Proc
              @j_del.chown(path,user,group,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument handler=#{handler} when calling chown(path,user,group,handler)"
          end
          raise ArgumentError, "Invalid argument group=#{group} when calling chown(path,user,group,handler)"
        end
        raise ArgumentError, "Invalid argument user=#{user} when calling chown(path,user,group,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chown(path,user,group,handler)"
    end
    def chown_blocking(path,user,group)
      if path.class == String
        if user.class == String
          if group.class == String
            @j_del.chownBlocking(path,user,group)
            return self
          end
          raise ArgumentError, "Invalid argument group=#{group} when calling chown_blocking(path,user,group)"
        end
        raise ArgumentError, "Invalid argument user=#{user} when calling chown_blocking(path,user,group)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chown_blocking(path,user,group)"
    end
    def props(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.props(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::FileProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling props(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling props(path,handler)"
    end
    def props_blocking(path)
      if path.class == String
        return Vertx::FileProps.new(@j_del.propsBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling props_blocking(path)"
    end
    def lprops(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.lprops(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::FileProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lprops(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling lprops(path,handler)"
    end
    def lprops_blocking(path)
      if path.class == String
        return Vertx::FileProps.new(@j_del.lpropsBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling lprops_blocking(path)"
    end
    def link(link,existing,&handler)
      if link.class == String
        if existing.class == String
          if handler.class == Proc
            @j_del.link(link,existing,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling link(link,existing,handler)"
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling link(link,existing,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling link(link,existing,handler)"
    end
    def link_blocking(link,existing)
      if link.class == String
        if existing.class == String
          @j_del.linkBlocking(link,existing)
          return self
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling link_blocking(link,existing)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling link_blocking(link,existing)"
    end
    def symlink(link,existing,&handler)
      if link.class == String
        if existing.class == String
          if handler.class == Proc
            @j_del.symlink(link,existing,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling symlink(link,existing,handler)"
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling symlink(link,existing,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling symlink(link,existing,handler)"
    end
    def symlink_blocking(link,existing)
      if link.class == String
        if existing.class == String
          @j_del.symlinkBlocking(link,existing)
          return self
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling symlink_blocking(link,existing)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling symlink_blocking(link,existing)"
    end
    def unlink(link,&handler)
      if link.class == String
        if handler.class == Proc
          @j_del.unlink(link,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling unlink(link,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling unlink(link,handler)"
    end
    def unlink_blocking(link)
      if link.class == String
        @j_del.unlinkBlocking(link)
        return self
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling unlink_blocking(link)"
    end
    def read_symlink(link,&handler)
      if link.class == String
        if handler.class == Proc
          @j_del.readSymlink(link,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling read_symlink(link,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling read_symlink(link,handler)"
    end
    def read_symlink_blocking(link)
      if link.class == String
        return @j_del.readSymlinkBlocking(link)
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling read_symlink_blocking(link)"
    end
    def delete(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.delete(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling delete(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete(path,handler)"
    end
    def delete_blocking(path)
      if path.class == String
        @j_del.deleteBlocking(path)
        return self
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete_blocking(path)"
    end
    def delete_recursive(path,recursive,&handler)
      if path.class == String
        if recursive.class == TrueClass || recursive.class == FalseClass
          if handler.class == Proc
            @j_del.deleteRecursive(path,recursive,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling delete_recursive(path,recursive,handler)"
        end
        raise ArgumentError, "Invalid argument recursive=#{recursive} when calling delete_recursive(path,recursive,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete_recursive(path,recursive,handler)"
    end
    def delete_recursive_blocking(path,recursive)
      if path.class == String
        if recursive.class == TrueClass || recursive.class == FalseClass
          @j_del.deleteRecursiveBlocking(path,recursive)
          return self
        end
        raise ArgumentError, "Invalid argument recursive=#{recursive} when calling delete_recursive_blocking(path,recursive)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete_recursive_blocking(path,recursive)"
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
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling mkdir(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling mkdir(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling mkdir(param_1,param_2,param_3)"
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
      raise ArgumentError, "Invalid argument path=#{path} when calling mkdir_blocking(path,perms)"
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
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling mkdirs(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling mkdirs(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling mkdirs(param_1,param_2,param_3)"
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
      raise ArgumentError, "Invalid argument path=#{path} when calling mkdirs_blocking(path,perms)"
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
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling read_dir(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling read_dir(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling read_dir(param_1,param_2,param_3)"
    end
    def read_dir_blocking(path,filter=nil)
      if path.class == String
        if filter.class == String
          return @j_del.readDirBlocking(path,filter).to_a.map { |elt| elt }
        end
        return @j_del.readDirBlocking(path).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling read_dir_blocking(path,filter)"
    end
    def read_file(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.readFile(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Buffer.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling read_file(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling read_file(path,handler)"
    end
    def read_file_blocking(path)
      if path.class == String
        return Vertx::Buffer.new(@j_del.readFileBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling read_file_blocking(path)"
    end
    def write_file(path,data,&handler)
      if path.class == String
        if data.class.method_defined?(:j_del)
          if handler.class == Proc
            @j_del.writeFile(path,data.j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling write_file(path,data,handler)"
        end
        raise ArgumentError, "Invalid argument data=#{data} when calling write_file(path,data,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling write_file(path,data,handler)"
    end
    def write_file_blocking(path,data)
      if path.class == String
        if data.class.method_defined?(:j_del)
          @j_del.writeFileBlocking(path,data.j_del)
          return self
        end
        raise ArgumentError, "Invalid argument data=#{data} when calling write_file_blocking(path,data)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling write_file_blocking(path,data)"
    end
    def open(path,options,&handler)
      if path.class == String
        if options == nil || options.class == Hash
          if handler.class == Proc
            @j_del.open(path,options != nil ? Java::IoVertxCoreFile::OpenOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::AsyncFile.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling open(path,options,handler)"
        end
        raise ArgumentError, "Invalid argument options=#{options} when calling open(path,options,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling open(path,options,handler)"
    end
    def open_blocking(path,options)
      if path.class == String
        if options == nil || options.class == Hash
          return Vertx::AsyncFile.new(@j_del.openBlocking(path,options != nil ? Java::IoVertxCoreFile::OpenOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
        end
        raise ArgumentError, "Invalid argument options=#{options} when calling open_blocking(path,options)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling open_blocking(path,options)"
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
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling create_file(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling create_file(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling create_file(param_1,param_2,param_3)"
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
      raise ArgumentError, "Invalid argument path=#{path} when calling create_file_blocking(path,perms)"
    end
    def exists(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.exists(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling exists(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling exists(path,handler)"
    end
    def exists_blocking(path)
      if path.class == String
        return @j_del.existsBlocking(path)
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling exists_blocking(path)"
    end
    def fs_props(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.fsProps(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::FileSystemProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling fs_props(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling fs_props(path,handler)"
    end
    def fs_props_blocking(path)
      if path.class == String
        return Vertx::FileSystemProps.new(@j_del.fsPropsBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling fs_props_blocking(path)"
    end
  end
end

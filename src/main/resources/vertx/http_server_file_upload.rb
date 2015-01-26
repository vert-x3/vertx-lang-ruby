require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerFileUpload
module Vertx
  #  Represents an upload from an HTML form.<p>
  class HttpServerFileUpload
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::HttpServerFileUpload] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpServerFileUpload] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    #  Stream the content of this upload to the given filename.
    # @param [String] filename
    # return [self]
    def stream_to_file_system(filename)
      if filename.class == String
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:streamToFileSystem,Java::java.lang.String.java_class))).invoke(@j_del,filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling stream_to_file_system(filename)"
    end
    #  Returns the filename which was used when upload the file.
    # @return [String]
    def filename
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:filename))).invoke(@j_del)
    end
    #  Returns the name of the attribute
    # @return [String]
    def name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:name))).invoke(@j_del)
    end
    #  Returns the contentType for the upload
    # @return [String]
    def content_type
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:contentType))).invoke(@j_del)
    end
    #  Returns the contentTransferEncoding for the upload
    # @return [String]
    def content_transfer_encoding
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:contentTransferEncoding))).invoke(@j_del)
    end
    #  Returns the charset for the upload
    # @return [String]
    def charset
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:charset))).invoke(@j_del)
    end
    #  Returns the size of the upload (in bytes)
    # @return [Fixnum]
    def size
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:size))).invoke(@j_del)
    end
    #  Returns <code>true</code> if the size of the upload can be retrieved via {::Vertx::HttpServerFileUpload#size}.
    # @return [true,false]
    def is_size_available
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isSizeAvailable))).invoke(@j_del)
    end
  end
end

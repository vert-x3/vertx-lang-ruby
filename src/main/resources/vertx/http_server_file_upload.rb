require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerFileUpload
module Vertx
  #  Represents an file upload from an HTML FORM.
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
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    # @return [self]
    def pause
      if !block_given?
        @j_del.java_method(:pause, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    # @return [self]
    def resume
      if !block_given?
        @j_del.java_method(:resume, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    #  Stream the content of this upload to the given file on storage.
    # @param [String] filename the name of the file
    # @return [self]
    def stream_to_file_system(filename=nil)
      if filename.class == String && !block_given?
        @j_del.java_method(:streamToFileSystem, [Java::java.lang.String.java_class]).call(filename)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling stream_to_file_system(filename)"
    end
    #  @return the filename which was used when upload the file.
    # @return [String]
    def filename
      if !block_given?
        return @j_del.java_method(:filename, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling filename()"
    end
    #  @return the name of the attribute
    # @return [String]
    def name
      if !block_given?
        return @j_del.java_method(:name, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling name()"
    end
    #  @return  the content type for the upload
    # @return [String]
    def content_type
      if !block_given?
        return @j_del.java_method(:contentType, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling content_type()"
    end
    #  @return the contentTransferEncoding for the upload
    # @return [String]
    def content_transfer_encoding
      if !block_given?
        return @j_del.java_method(:contentTransferEncoding, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling content_transfer_encoding()"
    end
    #  @return the charset for the upload
    # @return [String]
    def charset
      if !block_given?
        return @j_del.java_method(:charset, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling charset()"
    end
    #  The size of the upload may not be available until it is all read.
    #  Check {::Vertx::HttpServerFileUpload#is_size_available} to determine this
    # @return [Fixnum] the size of the upload (in bytes)
    def size
      if !block_given?
        return @j_del.java_method(:size, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
    #  @return true if the size of the upload can be retrieved via {::Vertx::HttpServerFileUpload#size}.
    # @return [true,false]
    def is_size_available
      if !block_given?
        return @j_del.java_method(:isSizeAvailable, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_size_available()"
    end
  end
end

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
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # return [self]
    def resume
      @j_del.resume
      self
    end
    #  Stream the content of this upload to the given filename.
    # @param [String] filename
    # return [self]
    def stream_to_file_system(filename)
      if filename.class == String
        @j_del.streamToFileSystem(filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling stream_to_file_system(filename)"
    end
    #  Returns the filename which was used when upload the file.
    # @return [String]
    def filename
      @j_del.filename
    end
    #  Returns the name of the attribute
    # @return [String]
    def name
      @j_del.name
    end
    #  Returns the contentType for the upload
    # @return [String]
    def content_type
      @j_del.contentType
    end
    #  Returns the contentTransferEncoding for the upload
    # @return [String]
    def content_transfer_encoding
      @j_del.contentTransferEncoding
    end
    #  Returns the charset for the upload
    # @return [String]
    def charset
      @j_del.charset
    end
    #  Returns the size of the upload (in bytes)
    # @return [Fixnum]
    def size
      @j_del.size
    end
    #  Returns <code>true</code> if the size of the upload can be retrieved via {::Vertx::HttpServerFileUpload#size}.
    # @return [true,false]
    def is_size_available
      @j_del.isSizeAvailable
    end
  end
end

require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerFileUpload
module Vertx
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
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # THE METHOD DOC
    #
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # THE METHOD DOC
    #
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # THE METHOD DOC
    #
    # @param [String] filename
    # return [self]
    def stream_to_file_system(filename)
      if filename.class == String
        @j_del.streamToFileSystem(filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling stream_to_file_system(filename)"
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def filename
      @j_del.filename
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def name
      @j_del.name
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def content_type
      @j_del.contentType
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def content_transfer_encoding
      @j_del.contentTransferEncoding
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def charset
      @j_del.charset
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def size
      @j_del.size
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_size_available
      @j_del.isSizeAvailable
    end
  end
end

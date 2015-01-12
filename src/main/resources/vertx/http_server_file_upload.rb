require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerFileUpload
module Vertx
  class HttpServerFileUpload
    include Vertx::ReadStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause
      self
    end
    def resume()
      @j_del.resume
      self
    end
    def stream_to_file_system(filename)
      if filename.class == String
        @j_del.streamToFileSystem(filename)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def filename()
      @j_del.filename
    end
    def name()
      @j_del.name
    end
    def content_type()
      @j_del.contentType
    end
    def content_transfer_encoding()
      @j_del.contentTransferEncoding
    end
    def charset()
      @j_del.charset
    end
    def size()
      @j_del.size
    end
    def is_size_available()
      @j_del.isSizeAvailable
    end
  end
end

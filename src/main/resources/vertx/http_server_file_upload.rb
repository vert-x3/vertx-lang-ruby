include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.ReadStream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerFileUpload
module Vertx
  class HttpServerFileUpload
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause()
      return self
    end
    def resume()
      @j_del.resume()
      return self
    end
    def stream_to_file_system(filename)
      if filename != nil && filename.class == String
        @j_del.streamToFileSystem(filename)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def filename()
      return @j_del.filename()
    end
    def name()
      return @j_del.name()
    end
    def content_type()
      return @j_del.contentType()
    end
    def content_transfer_encoding()
      return @j_del.contentTransferEncoding()
    end
    def charset()
      return @j_del.charset()
    end
    def size()
      return @j_del.size()
    end
    def is_size_available()
      return @j_del.isSizeAvailable()
    end
  end
end
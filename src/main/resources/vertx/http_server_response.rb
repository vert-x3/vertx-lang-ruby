require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerResponse
module Vertx
  class HttpServerResponse
    include ::Vertx::WriteStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full
      @j_del.writeQueueFull
    end
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    def write(param_1,param_2=nil)
      if param_1.class.method_defined?(:j_del)
        @j_del.write(param_1.j_del)
        return self
      end
      if param_1.class == String
        if param_2.class == String
          @j_del.write(param_1,param_2)
          return self
        end
        @j_del.write(param_1)
        return self
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling write(param_1,param_2)"
    end
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    def get_status_code
      @j_del.getStatusCode
    end
    def set_status_code(statusCode)
      if statusCode.class == Fixnum
        @j_del.setStatusCode(statusCode)
        return self
      end
      raise ArgumentError, "Invalid argument statusCode=#{statusCode} when calling set_status_code(statusCode)"
    end
    def get_status_message
      @j_del.getStatusMessage
    end
    def set_status_message(statusMessage)
      if statusMessage.class == String
        @j_del.setStatusMessage(statusMessage)
        return self
      end
      raise ArgumentError, "Invalid argument statusMessage=#{statusMessage} when calling set_status_message(statusMessage)"
    end
    def set_chunked(chunked)
      if chunked.class == TrueClass || chunked.class == FalseClass
        @j_del.setChunked(chunked)
        return self
      end
      raise ArgumentError, "Invalid argument chunked=#{chunked} when calling set_chunked(chunked)"
    end
    def is_chunked
      @j_del.isChunked
    end
    def headers
      if @cached_headers != nil
        return @cached_headers
      end
      @cached_headers = ::Vertx::MultiMap.new(@j_del.headers)
    end
    def put_header(name,value)
      if name.class == String
        if value.class == String
          @j_del.putHeader(name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_header(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling put_header(name,value)"
    end
    def trailers
      if @cached_trailers != nil
        return @cached_trailers
      end
      @cached_trailers = ::Vertx::MultiMap.new(@j_del.trailers)
    end
    def put_trailer(name,value)
      if name.class == String
        if value.class == String
          @j_del.putTrailer(name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_trailer(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling put_trailer(name,value)"
    end
    def close_handler(&handler)
      if handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    def end(param_1=nil,param_2=nil)
      if param_1.class.method_defined?(:j_del)
        return @j_del.end(param_1.j_del)
      end
      if param_1.class == String
        if param_2.class == String
          return @j_del.end(param_1,param_2)
        end
        return @j_del.end(param_1)
      end
      @j_del.end
    end
    def send_file(filename,&resultHandler)
      if filename.class == String
        if resultHandler.class == Proc
          @j_del.sendFile(filename,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        @j_del.sendFile(filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling send_file(filename,resultHandler)"
    end
    def close
      @j_del.close
    end
    def ended
      @j_del.ended
    end
    def head_written
      @j_del.headWritten
    end
    def headers_end_handler(&handler)
      if handler.class == Proc
        @j_del.headersEndHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling headers_end_handler(handler)"
    end
    def body_end_handler(&handler)
      if handler.class == Proc
        @j_del.bodyEndHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling body_end_handler(handler)"
    end
  end
end

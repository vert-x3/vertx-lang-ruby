include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.WriteStream'
include_class 'io.vertx.core.MultiMap'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerResponse
module Vertx
  class HttpServerResponse
    include Vertx::WriteStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      @j_del.writeQueueFull
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write(param_1=nil,param_2=nil)
        if param_1 != nil && param_1.class.method_defined?(:j_del)
          @j_del.write(param_1.j_del)
          return self
        end
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
              @j_del.write(param_1,param_2)
              return self
            end
          @j_del.write(param_1)
          return self
        end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(max_size)
      if max_size != nil && max_size.class == Fixnum
        @j_del.setWriteQueueMaxSize(max_size)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_status_code()
      @j_del.getStatusCode
    end
    def set_status_code(status_code)
      if status_code != nil && status_code.class == Fixnum
        @j_del.setStatusCode(status_code)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_status_message()
      @j_del.getStatusMessage
    end
    def set_status_message(status_message)
      if status_message != nil && status_message.class == String
        @j_del.setStatusMessage(status_message)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_chunked(chunked)
      if chunked != nil && (chunked.class == TrueClass || chunked.class == FalseClass)
        @j_del.setChunked(chunked)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_chunked()
      @j_del.isChunked
    end
    def headers()
        if @cached_headers != nil
          return @cached_headers
        end
      @cached_headers = Vertx::MultiMap.new(@j_del.headers)
    end
    def put_header(name,value)
      if name != nil && name.class == String
        if value != nil && value.class == String
          @j_del.putHeader(name,value)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def trailers()
        if @cached_trailers != nil
          return @cached_trailers
        end
      @cached_trailers = Vertx::MultiMap.new(@j_del.trailers)
    end
    def put_trailer(name,value)
      if name != nil && name.class == String
        if value != nil && value.class == String
          @j_del.putTrailer(name,value)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def close_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def end(param_1=nil,param_2=nil)
        if param_1 != nil && param_1.class.method_defined?(:j_del)
          return @j_del.end(param_1.j_del)
        end
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
              return @j_del.end(param_1,param_2)
            end
          return @j_del.end(param_1)
        end
      return @j_del.end
    end
    def send_file(filename,result_handler=nil)
      if filename != nil && filename.class == String
        if result_handler != nil && result_handler.class == Proc
          @j_del.sendFile(filename,(Proc.new { |ar| result_handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        @j_del.sendFile(filename)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def close()
      @j_del.close
    end
    def ended()
      @j_del.ended
    end
    def head_written()
      @j_del.headWritten
    end
    def headers_end_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.headersEndHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def body_end_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.bodyEndHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

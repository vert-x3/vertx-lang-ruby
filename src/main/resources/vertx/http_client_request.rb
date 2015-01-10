include_class 'io.vertx.core.http.HttpClientResponse'
include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.WriteStream'
include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.MultiMap'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientRequest
module Vertx
  class HttpClientRequest
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      return @j_del.writeQueueFull()
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
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
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::HttpClientResponse.new(event)) }))
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
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
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
      return @j_del.isChunked()
    end
    def method()
      return nil
    end
    def uri()
      return @j_del.uri()
    end
    def headers()
      return Vertx::MultiMap.new(@j_del.headers())
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
    def continue_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.continueHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def send_head()
      @j_del.sendHead()
      return self
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
      return @j_del.end()
    end
    def set_timeout(timeout_ms)
      if timeout_ms != nil && timeout_ms.class == Fixnum
        @j_del.setTimeout(timeout_ms)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

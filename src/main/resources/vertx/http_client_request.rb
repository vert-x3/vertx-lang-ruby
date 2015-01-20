require 'vertx/http_client_response'
require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientRequest
module Vertx
  class HttpClientRequest
    include ::Vertx::WriteStream
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::HttpClientRequest] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpClientRequest] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def write_queue_full
      @j_del.writeQueueFull
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
    # @overload write(data)
    #   @param [::Vertx::Buffer] data
    # @overload write(chunk)
    #   @param [String] chunk
    # @overload write(chunk,enc)
    #   @param [String] chunk
    #   @param [String] enc
    # return [self]
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
    # THE METHOD DOC
    #
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::HttpClientResponse.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
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
    # @param [true,false] chunked
    # return [self]
    def set_chunked(chunked)
      if chunked.class == TrueClass || chunked.class == FalseClass
        @j_del.setChunked(chunked)
        return self
      end
      raise ArgumentError, "Invalid argument chunked=#{chunked} when calling set_chunked(chunked)"
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_chunked
      @j_del.isChunked
    end
    # THE METHOD DOC
    #
    # @return [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH]: the return value (todo)
    def method
      @j_del.method.name.intern
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def uri
      @j_del.uri
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::MultiMap]: the return value (todo)
    def headers
      if @cached_headers != nil
        return @cached_headers
      end
      @cached_headers = ::Vertx::MultiMap.new(@j_del.headers)
    end
    # THE METHOD DOC
    #
    # @param [String] name
    # @param [String] value
    # return [self]
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
    # THE METHOD DOC
    #
    # @param [Proc] handler
    # return [self]
    def continue_handler(&handler)
      if handler.class == Proc
        @j_del.continueHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling continue_handler(handler)"
    end
    # THE METHOD DOC
    #
    # return [self]
    def send_head
      @j_del.sendHead
      self
    end
    # THE METHOD DOC
    #
    # @overload end()
    # @overload end(chunk)
    #   @param [String] chunk
    # @overload end(chunk)
    #   @param [::Vertx::Buffer] chunk
    # @overload end(chunk,enc)
    #   @param [String] chunk
    #   @param [String] enc
    # return [void]
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
    # THE METHOD DOC
    #
    # @param [Fixnum] timeoutMs
    # return [self]
    def set_timeout(timeoutMs)
      if timeoutMs.class == Fixnum
        @j_del.setTimeout(timeoutMs)
        return self
      end
      raise ArgumentError, "Invalid argument timeoutMs=#{timeoutMs} when calling set_timeout(timeoutMs)"
    end
  end
end

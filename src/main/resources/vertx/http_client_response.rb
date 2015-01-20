require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientResponse
module Vertx
  class HttpClientResponse
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::HttpClientResponse] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpClientResponse] the underlying java delegate
    def j_del
      @j_del
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
    # return [self]
    def pause
      @j_del.pause
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
    # @return [Fixnum]: the return value (todo)
    def status_code
      @j_del.statusCode
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def status_message
      @j_del.statusMessage
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
    # @return [::Vertx::MultiMap]: the return value (todo)
    def trailers
      if @cached_trailers != nil
        return @cached_trailers
      end
      @cached_trailers = ::Vertx::MultiMap.new(@j_del.trailers)
    end
    # THE METHOD DOC
    #
    # @return [Array<String>]: the return value (todo)
    def cookies
      if @cached_cookies != nil
        return @cached_cookies
      end
      @cached_cookies = @j_del.cookies.to_a.map { |elt| elt }
    end
    # THE METHOD DOC
    #
    # @param [Proc] bodyHandler
    # return [self]
    def body_handler(&bodyHandler)
      if bodyHandler.class == Proc
        @j_del.bodyHandler((Proc.new { |event| bodyHandler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument bodyHandler=#{bodyHandler} when calling body_handler(bodyHandler)"
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::NetSocket]: the return value (todo)
    def net_socket
      if @cached_net_socket != nil
        return @cached_net_socket
      end
      @cached_net_socket = ::Vertx::NetSocket.new(@j_del.netSocket)
    end
  end
end

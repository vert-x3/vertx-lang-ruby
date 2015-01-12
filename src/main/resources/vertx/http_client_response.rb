require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientResponse
module Vertx
  class HttpClientResponse
    include Vertx::ReadStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def resume()
      @j_del.resume
      self
    end
    def exception_handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause
      self
    end
    def end_handler(&endHandler)
      if endHandler != nil && endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def status_code()
      @j_del.statusCode
    end
    def status_message()
      @j_del.statusMessage
    end
    def headers()
        if @cached_headers != nil
          return @cached_headers
        end
      @cached_headers = Vertx::MultiMap.new(@j_del.headers)
    end
    def trailers()
        if @cached_trailers != nil
          return @cached_trailers
        end
      @cached_trailers = Vertx::MultiMap.new(@j_del.trailers)
    end
    def cookies()
        if @cached_cookies != nil
          return @cached_cookies
        end
      @cached_cookies = @j_del.cookies.to_a.map { |elt| elt }
    end
    def body_handler(&bodyHandler)
      if bodyHandler != nil && bodyHandler.class == Proc
        @j_del.bodyHandler((Proc.new { |event| bodyHandler.call(Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def net_socket()
        if @cached_net_socket != nil
          return @cached_net_socket
        end
      @cached_net_socket = Vertx::NetSocket.new(@j_del.netSocket)
    end
  end
end

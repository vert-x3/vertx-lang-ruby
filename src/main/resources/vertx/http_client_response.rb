include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.MultiMap'
include_class 'io.vertx.core.net.NetSocket'
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
      @j_del.resume()
      return self
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
    def pause()
      @j_del.pause()
      return self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def status_code()
      return @j_del.statusCode()
    end
    def status_message()
      return @j_del.statusMessage()
    end
    def headers()
        if @cached_headers != nil
          return @cached_headers
        end
      return @cached_headers = Vertx::MultiMap.new(@j_del.headers())
    end
    def trailers()
        if @cached_trailers != nil
          return @cached_trailers
        end
      return @cached_trailers = Vertx::MultiMap.new(@j_del.trailers())
    end
    def cookies()
        if @cached_cookies != nil
          return @cached_cookies
        end
      return @cached_cookies = @j_del.cookies().to_a.map { |elt| elt }
    end
    def body_handler(body_handler)
      if body_handler != nil && body_handler.class == Proc
        @j_del.bodyHandler((Proc.new { |event| body_handler.call(Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def net_socket()
        if @cached_netSocket != nil
          return @cached_netSocket
        end
      return @cached_netSocket = Vertx::NetSocket.new(@j_del.netSocket())
    end
  end
end

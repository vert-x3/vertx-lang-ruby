require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerRequest
module Vertx
  class HttpServerRequest
    include Vertx::ReadStream
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
    def pause()
      @j_del.pause
      self
    end
    def resume()
      @j_del.resume
      self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def version()
      @j_del.version.name
    end
    def method()
      @j_del.method.name
    end
    def uri()
      @j_del.uri
    end
    def path()
      @j_del.path
    end
    def query()
      @j_del.query
    end
    def response()
        if @cached_response != nil
          return @cached_response
        end
      @cached_response = Vertx::HttpServerResponse.new(@j_del.response)
    end
    def headers()
        if @cached_headers != nil
          return @cached_headers
        end
      @cached_headers = Vertx::MultiMap.new(@j_del.headers)
    end
    def params()
        if @cached_params != nil
          return @cached_params
        end
      @cached_params = Vertx::MultiMap.new(@j_del.params)
    end
    def remote_address()
        if @cached_remote_address != nil
          return @cached_remote_address
        end
      @cached_remote_address = Vertx::SocketAddress.new(@j_del.remoteAddress)
    end
    def local_address()
        if @cached_local_address != nil
          return @cached_local_address
        end
      @cached_local_address = Vertx::SocketAddress.new(@j_del.localAddress)
    end
    def absolute_uri()
      @j_del.absoluteURI
    end
    def body_handler(body_handler)
      if body_handler != nil && body_handler.class == Proc
        @j_del.bodyHandler((Proc.new { |event| body_handler.call(Vertx::Buffer.new(event)) }))
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
    def set_expect_multipart(expect)
      if expect != nil && (expect.class == TrueClass || expect.class == FalseClass)
        @j_del.setExpectMultipart(expect)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_expect_multipart()
      @j_del.isExpectMultipart
    end
    def upload_handler(upload_handler)
      if upload_handler != nil && upload_handler.class == Proc
        @j_del.uploadHandler((Proc.new { |event| upload_handler.call(Vertx::HttpServerFileUpload.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def form_attributes()
        if @cached_form_attributes != nil
          return @cached_form_attributes
        end
      @cached_form_attributes = Vertx::MultiMap.new(@j_del.formAttributes)
    end
    def upgrade()
      Vertx::ServerWebSocket.new(@j_del.upgrade)
    end
  end
end

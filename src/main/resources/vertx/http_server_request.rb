require 'vertx/server_web_socket'
require 'vertx/http_server_file_upload'
require 'vertx/buffer'
require 'vertx/http_server_response'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/socket_address'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerRequest
module Vertx
  class HttpServerRequest
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::HttpServerRequest] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpServerRequest] the underlying java delegate
    def j_del
      @j_del
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
    # @return [:HTTP_1_0,:HTTP_1_1]: the return value (todo)
    def version
      @j_del.version.name.intern
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
    # @return [String]: the return value (todo)
    def path
      @j_del.path
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def query
      @j_del.query
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::HttpServerResponse]: the return value (todo)
    def response
      if @cached_response != nil
        return @cached_response
      end
      @cached_response = ::Vertx::HttpServerResponse.new(@j_del.response)
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
    def params
      if @cached_params != nil
        return @cached_params
      end
      @cached_params = ::Vertx::MultiMap.new(@j_del.params)
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::SocketAddress]: the return value (todo)
    def remote_address
      if @cached_remote_address != nil
        return @cached_remote_address
      end
      @cached_remote_address = ::Vertx::SocketAddress.new(@j_del.remoteAddress)
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::SocketAddress]: the return value (todo)
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new(@j_del.localAddress)
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def absolute_uri
      @j_del.absoluteURI
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
    # THE METHOD DOC
    #
    # @param [true,false] expect
    # return [self]
    def set_expect_multipart(expect)
      if expect.class == TrueClass || expect.class == FalseClass
        @j_del.setExpectMultipart(expect)
        return self
      end
      raise ArgumentError, "Invalid argument expect=#{expect} when calling set_expect_multipart(expect)"
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_expect_multipart
      @j_del.isExpectMultipart
    end
    # THE METHOD DOC
    #
    # @param [Proc] uploadHandler
    # return [self]
    def upload_handler(&uploadHandler)
      if uploadHandler.class == Proc
        @j_del.uploadHandler((Proc.new { |event| uploadHandler.call(::Vertx::HttpServerFileUpload.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument uploadHandler=#{uploadHandler} when calling upload_handler(uploadHandler)"
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::MultiMap]: the return value (todo)
    def form_attributes
      if @cached_form_attributes != nil
        return @cached_form_attributes
      end
      @cached_form_attributes = ::Vertx::MultiMap.new(@j_del.formAttributes)
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::ServerWebSocket]: the return value (todo)
    def upgrade
      ::Vertx::ServerWebSocket.new(@j_del.upgrade)
    end
  end
end

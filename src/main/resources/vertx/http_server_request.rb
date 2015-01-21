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
  #  Represents a server-side HTTP request.<p>
  #  Instances are created for each request that is handled by the server
  #  and is passed to the user via the {::Vertx::Handler} instance
  #  registered with the {::Vertx::HttpServer} using the request stream {::Vertx::HttpServer#request_stream}.<p>
  #  Each instance of this class is associated with a corresponding {::Vertx::HttpServerResponse} instance via
  #  the <code>response</code> field.<p>
  #  It implements {::Vertx::ReadStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.<p>
  #  Instances of this class are not thread-safe<p>
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
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    #  The HTTP version of the request
    # @return [:HTTP_1_0,:HTTP_1_1]
    def version
      @j_del.version.name.intern
    end
    #  The HTTP method for the request. One of GET, PUT, POST, DELETE, TRACE, CONNECT, OPTIONS or HEAD
    # @return [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH]
    def method
      @j_del.method.name.intern
    end
    #  The uri of the request. For example
    #  http://www.somedomain.com/somepath/somemorepath/someresource.foo?someparam=32&amp;someotherparam=x
    # @return [String]
    def uri
      @j_del.uri
    end
    #  The path part of the uri. For example /somepath/somemorepath/someresource.foo
    # @return [String]
    def path
      @j_del.path
    end
    #  The query part of the uri. For example someparam=32&amp;someotherparam=x
    # @return [String]
    def query
      @j_del.query
    end
    #  The response. Each instance of this class has an {::Vertx::HttpServerResponse} instance attached to it. This is used
    #  to send the response back to the client.
    # @return [::Vertx::HttpServerResponse]
    def response
      if @cached_response != nil
        return @cached_response
      end
      @cached_response = ::Vertx::HttpServerResponse.new(@j_del.response)
    end
    #  A map of all headers in the request, If the request contains multiple headers with the same key, the values
    #  will be concatenated together into a single header with the same key value, with each value separated by a comma,
    #  as specified <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2">here</a>.
    #  The headers will be automatically lower-cased when they reach the server
    # @return [::Vertx::MultiMap]
    def headers
      if @cached_headers != nil
        return @cached_headers
      end
      @cached_headers = ::Vertx::MultiMap.new(@j_del.headers)
    end
    #  Returns a map of all the parameters in the request
    # @return [::Vertx::MultiMap]
    def params
      if @cached_params != nil
        return @cached_params
      end
      @cached_params = ::Vertx::MultiMap.new(@j_del.params)
    end
    #  Return the remote (client side) address of the request
    # @return [::Vertx::SocketAddress]
    def remote_address
      if @cached_remote_address != nil
        return @cached_remote_address
      end
      @cached_remote_address = ::Vertx::SocketAddress.new(@j_del.remoteAddress)
    end
    #  Return the local (server side) address of the server that handles the request
    # @return [::Vertx::SocketAddress]
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new(@j_del.localAddress)
    end
    #  Get the absolute URI corresponding to the the HTTP request
    # @return [String]
    def absolute_uri
      @j_del.absoluteURI
    end
    #  Convenience method for receiving the entire request body in one piece. This saves the user having to manually
    #  set a data and end handler and append the chunks of the body until the whole body received.
    #  Don't use this if your request body is large - you could potentially run out of RAM.
    # @param [Proc] bodyHandler
    # return [self]
    def body_handler(&bodyHandler)
      if bodyHandler.class == Proc
        @j_del.bodyHandler((Proc.new { |event| bodyHandler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument bodyHandler=#{bodyHandler} when calling body_handler(bodyHandler)"
    end
    #  Get a net socket for the underlying connection of this request. USE THIS WITH CAUTION!
    #  Writing to the socket directly if you don't know what you're doing can easily break the HTTP protocol
    # @return [::Vertx::NetSocket]
    def net_socket
      if @cached_net_socket != nil
        return @cached_net_socket
      end
      @cached_net_socket = ::Vertx::NetSocket.new(@j_del.netSocket)
    end
    #  Call this with true if you are expecting a multi-part form to be submitted in the request
    #  This must be called before the body of the request has been received
    # @param [true,false] expect
    # return [self]
    def set_expect_multipart(expect)
      if expect.class == TrueClass || expect.class == FalseClass
        @j_del.setExpectMultipart(expect)
        return self
      end
      raise ArgumentError, "Invalid argument expect=#{expect} when calling set_expect_multipart(expect)"
    end
    # @return [true,false]
    def is_expect_multipart
      @j_del.isExpectMultipart
    end
    #  Set the upload handler. The handler will get notified once a new file upload was received and so allow to
    #  get notified by the upload in progress.
    # @param [Proc] uploadHandler
    # return [self]
    def upload_handler(&uploadHandler)
      if uploadHandler.class == Proc
        @j_del.uploadHandler((Proc.new { |event| uploadHandler.call(::Vertx::HttpServerFileUpload.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument uploadHandler=#{uploadHandler} when calling upload_handler(uploadHandler)"
    end
    #  Returns a map of all form attributes which was found in the request. Be aware that this message should only get
    #  called after the endHandler was notified as the map will be filled on-the-fly.
    #  {::Vertx::HttpServerRequest#set_expect_multipart} must be called first before trying to get the formAttributes
    # @return [::Vertx::MultiMap]
    def form_attributes
      if @cached_form_attributes != nil
        return @cached_form_attributes
      end
      @cached_form_attributes = ::Vertx::MultiMap.new(@j_del.formAttributes)
    end
    # @return [::Vertx::ServerWebSocket]
    def upgrade
      ::Vertx::ServerWebSocket.new(@j_del.upgrade)
    end
  end
end

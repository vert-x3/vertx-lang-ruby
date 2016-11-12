require 'vertx/server_web_socket'
require 'vertx/http_server_file_upload'
require 'vertx/buffer'
require 'vertx/http_frame'
require 'vertx/http_server_response'
require 'vertx/multi_map'
require 'vertx/read_stream'
require 'vertx/http_connection'
require 'vertx/socket_address'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerRequest
module Vertx
  #  Represents a server-side HTTP request.
  #  <p>
  #  Instances are created for each request and passed to the user via a handler.
  #  <p>
  #  Each instance of this class is associated with a corresponding {::Vertx::HttpServerResponse} instance via
  #  {::Vertx::HttpServerRequest#response}.<p>
  #  It implements {::Vertx::ReadStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.
  #  <p>
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == HttpServerRequest
    end
    def @@j_api_type.wrap(obj)
      HttpServerRequest.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreHttp::HttpServerRequest.java_class
    end
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    # @return [self]
    def pause
      if !block_given?
        @j_del.java_method(:pause, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    # @return [self]
    def resume
      if !block_given?
        @j_del.java_method(:resume, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    # @return [:HTTP_1_0,:HTTP_1_1,:HTTP_2] the HTTP version of the request
    def version
      if !block_given?
        return @j_del.java_method(:version, []).call().name.intern
      end
      raise ArgumentError, "Invalid arguments when calling version()"
    end
    # @return [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH,:OTHER] the HTTP method for the request.
    def method
      if !block_given?
        return @j_del.java_method(:method, []).call().name.intern
      end
      raise ArgumentError, "Invalid arguments when calling method()"
    end
    # @return [String] the HTTP method as sent by the client
    def raw_method
      if !block_given?
        return @j_del.java_method(:rawMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling raw_method()"
    end
    # @return [true,false] true if this {::Vertx::NetSocket} is encrypted via SSL/TLS
    def ssl?
      if !block_given?
        return @j_del.java_method(:isSSL, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling ssl?()"
    end
    # @return [String] the scheme of the request
    def scheme
      if !block_given?
        return @j_del.java_method(:scheme, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling scheme()"
    end
    # @return [String] the URI of the request. This is usually a relative URI
    def uri
      if !block_given?
        return @j_del.java_method(:uri, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling uri()"
    end
    # @return [String] The path part of the uri. For example /somepath/somemorepath/someresource.foo
    def path
      if !block_given?
        return @j_del.java_method(:path, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling path()"
    end
    # @return [String] the query part of the uri. For example someparam=32&amp;someotherparam=x
    def query
      if !block_given?
        return @j_del.java_method(:query, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling query()"
    end
    # @return [String] the request host. For HTTP2 it returns the  pseudo header otherwise it returns the  header
    def host
      if !block_given?
        return @j_del.java_method(:host, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling host()"
    end
    # @return [::Vertx::HttpServerResponse] the response. Each instance of this class has an {::Vertx::HttpServerResponse} instance attached to it. This is used to send the response back to the client.
    def response
      if !block_given?
        if @cached_response != nil
          return @cached_response
        end
        return @cached_response = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:response, []).call(),::Vertx::HttpServerResponse)
      end
      raise ArgumentError, "Invalid arguments when calling response()"
    end
    # @return [::Vertx::MultiMap] the headers in the request.
    def headers
      if !block_given?
        if @cached_headers != nil
          return @cached_headers
        end
        return @cached_headers = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:headers, []).call(),::Vertx::MultiMap)
      end
      raise ArgumentError, "Invalid arguments when calling headers()"
    end
    #  Return the first header value with the specified name
    # @param [String] headerName the header name
    # @return [String] the header value
    def get_header(headerName=nil)
      if headerName.class == String && !block_given?
        return @j_del.java_method(:getHeader, [Java::java.lang.String.java_class]).call(headerName)
      end
      raise ArgumentError, "Invalid arguments when calling get_header(headerName)"
    end
    # @return [::Vertx::MultiMap] the query parameters in the request
    def params
      if !block_given?
        if @cached_params != nil
          return @cached_params
        end
        return @cached_params = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:params, []).call(),::Vertx::MultiMap)
      end
      raise ArgumentError, "Invalid arguments when calling params()"
    end
    #  Return the first param value with the specified name
    # @param [String] paramName the param name
    # @return [String] the param value
    def get_param(paramName=nil)
      if paramName.class == String && !block_given?
        return @j_del.java_method(:getParam, [Java::java.lang.String.java_class]).call(paramName)
      end
      raise ArgumentError, "Invalid arguments when calling get_param(paramName)"
    end
    # @return [::Vertx::SocketAddress] the remote (client side) address of the request
    def remote_address
      if !block_given?
        if @cached_remote_address != nil
          return @cached_remote_address
        end
        return @cached_remote_address = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:remoteAddress, []).call(),::Vertx::SocketAddress)
      end
      raise ArgumentError, "Invalid arguments when calling remote_address()"
    end
    # @return [::Vertx::SocketAddress] the local (server side) address of the server that handles the request
    def local_address
      if !block_given?
        if @cached_local_address != nil
          return @cached_local_address
        end
        return @cached_local_address = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:localAddress, []).call(),::Vertx::SocketAddress)
      end
      raise ArgumentError, "Invalid arguments when calling local_address()"
    end
    # @return [String] the absolute URI corresponding to the the HTTP request
    def absolute_uri
      if !block_given?
        return @j_del.java_method(:absoluteURI, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling absolute_uri()"
    end
    #  Convenience method for receiving the entire request body in one piece.
    #  <p>
    #  This saves the user having to manually setting a data and end handler and append the chunks of the body until
    #  the whole body received. Don't use this if your request body is large - you could potentially run out of RAM.
    # @yield This handler will be called after all the body has been received
    # @return [self]
    def body_handler
      if block_given?
        @j_del.java_method(:bodyHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling body_handler()"
    end
    #  Get a net socket for the underlying connection of this request.
    #  <p>
    #  USE THIS WITH CAUTION!
    #  <p>
    #  Once you have called this method, you must handle writing to the connection yourself using the net socket,
    #  the server request instance will no longer be usable as normal.
    #  Writing to the socket directly if you don't know what you're doing can easily break the HTTP protocol.
    # @return [::Vertx::NetSocket] the net socket
    def net_socket
      if !block_given?
        if @cached_net_socket != nil
          return @cached_net_socket
        end
        return @cached_net_socket = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:netSocket, []).call(),::Vertx::NetSocket)
      end
      raise ArgumentError, "Invalid arguments when calling net_socket()"
    end
    #  Call this with true if you are expecting a multi-part body to be submitted in the request.
    #  This must be called before the body of the request has been received
    # @param [true,false] expect true - if you are expecting a multi-part body
    # @return [self]
    def set_expect_multipart(expect=nil)
      if (expect.class == TrueClass || expect.class == FalseClass) && !block_given?
        @j_del.java_method(:setExpectMultipart, [Java::boolean.java_class]).call(expect)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_expect_multipart(expect)"
    end
    # @return [true,false] true if we are expecting a multi-part body for this request. See {::Vertx::HttpServerRequest#set_expect_multipart}.
    def expect_multipart?
      if !block_given?
        return @j_del.java_method(:isExpectMultipart, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling expect_multipart?()"
    end
    #  Set an upload handler. The handler will get notified once a new file upload was received to allow you to deal
    #  with the file upload.
    # @yield 
    # @return [self]
    def upload_handler
      if block_given?
        @j_del.java_method(:uploadHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::HttpServerFileUpload)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling upload_handler()"
    end
    #  Returns a map of all form attributes in the request.
    #  <p>
    #  Be aware that the attributes will only be available after the whole body has been received, i.e. after
    #  the request end handler has been called.
    #  <p>
    #  {::Vertx::HttpServerRequest#set_expect_multipart} must be called first before trying to get the form attributes.
    # @return [::Vertx::MultiMap] the form attributes
    def form_attributes
      if !block_given?
        if @cached_form_attributes != nil
          return @cached_form_attributes
        end
        return @cached_form_attributes = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:formAttributes, []).call(),::Vertx::MultiMap)
      end
      raise ArgumentError, "Invalid arguments when calling form_attributes()"
    end
    #  Return the first form attribute value with the specified name
    # @param [String] attributeName the attribute name
    # @return [String] the attribute value
    def get_form_attribute(attributeName=nil)
      if attributeName.class == String && !block_given?
        return @j_del.java_method(:getFormAttribute, [Java::java.lang.String.java_class]).call(attributeName)
      end
      raise ArgumentError, "Invalid arguments when calling get_form_attribute(attributeName)"
    end
    #  Upgrade the connection to a WebSocket connection.
    #  <p>
    #  This is an alternative way of handling WebSockets and can only be used if no websocket handlers are set on the
    #  Http server, and can only be used during the upgrade request during the WebSocket handshake.
    # @return [::Vertx::ServerWebSocket] the WebSocket
    def upgrade
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:upgrade, []).call(),::Vertx::ServerWebSocket)
      end
      raise ArgumentError, "Invalid arguments when calling upgrade()"
    end
    #  Has the request ended? I.e. has the entire request, including the body been read?
    # @return [true,false] true if ended
    def ended?
      if !block_given?
        return @j_del.java_method(:isEnded, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling ended?()"
    end
    #  Set a custom frame handler. The handler will get notified when the http stream receives an custom HTTP/2
    #  frame. HTTP/2 permits extension of the protocol.
    # @yield 
    # @return [self]
    def custom_frame_handler
      if block_given?
        @j_del.java_method(:customFrameHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::HttpFrame)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling custom_frame_handler()"
    end
    # @return [::Vertx::HttpConnection] the {::Vertx::HttpConnection} associated with this request
    def connection
      if !block_given?
        if @cached_connection != nil
          return @cached_connection
        end
        return @cached_connection = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:connection, []).call(),::Vertx::HttpConnection)
      end
      raise ArgumentError, "Invalid arguments when calling connection()"
    end
  end
end

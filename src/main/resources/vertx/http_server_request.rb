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
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Buffer.new(event)) }))
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
    #  @return the HTTP version of the request
    # @return [:HTTP_1_0,:HTTP_1_1]
    def version
      if !block_given?
        return @j_del.java_method(:version, []).call().name.intern
      end
      raise ArgumentError, "Invalid arguments when calling version()"
    end
    #  @return the HTTP method for the request.
    # @return [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH]
    def method
      if !block_given?
        return @j_del.java_method(:method, []).call().name.intern
      end
      raise ArgumentError, "Invalid arguments when calling method()"
    end
    #  @return the URI of the request. This is usually a relative URI
    # @return [String]
    def uri
      if !block_given?
        return @j_del.java_method(:uri, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling uri()"
    end
    #  @return The path part of the uri. For example /somepath/somemorepath/someresource.foo
    # @return [String]
    def path
      if !block_given?
        return @j_del.java_method(:path, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling path()"
    end
    #  @return the query part of the uri. For example someparam=32&amp;someotherparam=x
    # @return [String]
    def query
      if !block_given?
        return @j_del.java_method(:query, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling query()"
    end
    #  @return the response. Each instance of this class has an {::Vertx::HttpServerResponse} instance attached to it. This is used
    #  to send the response back to the client.
    # @return [::Vertx::HttpServerResponse]
    def response
      if !block_given?
        if @cached_response != nil
          return @cached_response
        end
        return @cached_response = ::Vertx::HttpServerResponse.new(@j_del.java_method(:response, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling response()"
    end
    #  @return the headers in the request.
    # @return [::Vertx::MultiMap]
    def headers
      if !block_given?
        if @cached_headers != nil
          return @cached_headers
        end
        return @cached_headers = ::Vertx::MultiMap.new(@j_del.java_method(:headers, []).call())
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
    #  @return the query parameters in the request
    # @return [::Vertx::MultiMap]
    def params
      if !block_given?
        if @cached_params != nil
          return @cached_params
        end
        return @cached_params = ::Vertx::MultiMap.new(@j_del.java_method(:params, []).call())
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
    #  @return the remote (client side) address of the request
    # @return [::Vertx::SocketAddress]
    def remote_address
      if !block_given?
        if @cached_remote_address != nil
          return @cached_remote_address
        end
        return @cached_remote_address = ::Vertx::SocketAddress.new(@j_del.java_method(:remoteAddress, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling remote_address()"
    end
    #  @return the local (server side) address of the server that handles the request
    # @return [::Vertx::SocketAddress]
    def local_address
      if !block_given?
        if @cached_local_address != nil
          return @cached_local_address
        end
        return @cached_local_address = ::Vertx::SocketAddress.new(@j_del.java_method(:localAddress, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling local_address()"
    end
    #  @return the absolute URI corresponding to the the HTTP request
    # @return [String]
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
        @j_del.java_method(:bodyHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Buffer.new(event)) }))
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
        return @cached_net_socket = ::Vertx::NetSocket.new(@j_del.java_method(:netSocket, []).call())
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
    #  @return  true if we are expecting a multi-part body for this request. See {::Vertx::HttpServerRequest#set_expect_multipart}.
    # @return [true,false]
    def is_expect_multipart
      if !block_given?
        return @j_del.java_method(:isExpectMultipart, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_expect_multipart()"
    end
    #  Set an upload handler. The handler will get notified once a new file upload was received to allow you to deal
    #  with the file upload.
    # @yield 
    # @return [self]
    def upload_handler
      if block_given?
        @j_del.java_method(:uploadHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::HttpServerFileUpload.new(event)) }))
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
        return @cached_form_attributes = ::Vertx::MultiMap.new(@j_del.java_method(:formAttributes, []).call())
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
        return ::Vertx::ServerWebSocket.new(@j_del.java_method(:upgrade, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling upgrade()"
    end
    #  Has the request ended? I.e. has the entire request, including the body been read?
    # @return [true,false] true if ended
    def is_ended
      if !block_given?
        return @j_del.java_method(:isEnded, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_ended()"
    end
  end
end

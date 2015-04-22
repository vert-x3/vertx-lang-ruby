require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientResponse
module Vertx
  #  Represents a client-side HTTP response.
  #  <p>
  #  Vert.x provides you with one of these via the handler that was provided when creating the {::Vertx::HttpClientRequest}
  #  or that was set on the {::Vertx::HttpClientRequest} instance.
  #  <p>
  #  It implements {::Vertx::ReadStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.
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
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    #  @return the status code of the response
    # @return [Fixnum]
    def status_code
      if !block_given?
        return @j_del.java_method(:statusCode, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling status_code()"
    end
    #  @return the status message of the response
    # @return [String]
    def status_message
      if !block_given?
        return @j_del.java_method(:statusMessage, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling status_message()"
    end
    #  @return the headers
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
    #  Return the first trailer value with the specified name
    # @param [String] trailerName the trailer name
    # @return [String] the trailer value
    def get_trailer(trailerName=nil)
      if trailerName.class == String && !block_given?
        return @j_del.java_method(:getTrailer, [Java::java.lang.String.java_class]).call(trailerName)
      end
      raise ArgumentError, "Invalid arguments when calling get_trailer(trailerName)"
    end
    #  @return the trailers
    # @return [::Vertx::MultiMap]
    def trailers
      if !block_given?
        if @cached_trailers != nil
          return @cached_trailers
        end
        return @cached_trailers = ::Vertx::MultiMap.new(@j_del.java_method(:trailers, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling trailers()"
    end
    #  @return the Set-Cookie headers (including trailers)
    # @return [Array<String>]
    def cookies
      if !block_given?
        if @cached_cookies != nil
          return @cached_cookies
        end
        return @cached_cookies = @j_del.java_method(:cookies, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling cookies()"
    end
    #  Convenience method for receiving the entire request body in one piece.
    #  <p>
    #  This saves you having to manually set a dataHandler and an endHandler and append the chunks of the body until
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
    #  USE THIS WITH CAUTION! Writing to the socket directly if you don't know what you're doing can easily break the HTTP protocol
    #  <p>
    #  One valid use-case for calling this is to receive the {::Vertx::NetSocket} after a HTTP CONNECT was issued to the
    #  remote peer and it responded with a status code of 200.
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
  end
end

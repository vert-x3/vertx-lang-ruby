require 'vertx/http_client_response'
require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientRequest
module Vertx
  #  Represents a client-side HTTP request.<p>
  #  Instances are created by an {::Vertx::HttpClient} instance, via one of the methods corresponding to the
  #  specific HTTP methods, or the generic {::Vertx::HttpClient#request} method.<p>
  #  Once a request has been obtained, headers can be set on it, and data can be written to its body if required. Once
  #  you are ready to send the request, the {::Vertx::HttpClientRequest#end} method should be called.<p>
  #  Nothing is actually sent until the request has been internally assigned an HTTP connection. The {::Vertx::HttpClient}
  #  instance will return an instance of this class immediately, even if there are no HTTP connections available in the pool. Any requests
  #  sent before a connection is assigned will be queued internally and actually sent when an HTTP connection becomes
  #  available from the pool.<p>
  #  The headers of the request are actually sent either when the {::Vertx::HttpClientRequest#end} method is called, or, when the first
  #  part of the body is written, whichever occurs first.<p>
  #  This class supports both chunked and non-chunked HTTP.<p>
  #  It implements {::Vertx::WriteStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.<p>
  #  An example of using this class is as follows:
  #  <p>
  #  <pre>
  # 
  #  HttpClientRequest req = httpClient.post("/some-url", new Handler&lt;HttpClientResponse&gt;() {
  #    public void handle(HttpClientResponse response) {
  #      System.out.println("Got response: " + response.statusCode);
  #    }
  #  });
  # 
  #  req.headers().put("some-header", "hello")
  #      .put("Content-Length", 5)
  #      .write(Buffer.newBuffer(new byte[]{1, 2, 3, 4, 5}))
  #      .write(Buffer.newBuffer(new byte[]{6, 7, 8, 9, 10}))
  #      .end();
  # 
  #  </pre>
  #  Instances of HttpClientRequest are not thread-safe
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
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::HttpClientRequest#set_write_queue_max_size}
    # @return [true,false]
    def write_queue_full
      @j_del.writeQueueFull
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
    #  Write a  to the request body, encoded using the encoding <code>enc</code>.
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
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::HttpClientResponse.new(event)) }))
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
    #  If chunked is true then the request will be set into HTTP chunked mode
    # @param [true,false] chunked
    # return [self]
    def set_chunked(chunked)
      if chunked.class == TrueClass || chunked.class == FalseClass
        @j_del.setChunked(chunked)
        return self
      end
      raise ArgumentError, "Invalid argument chunked=#{chunked} when calling set_chunked(chunked)"
    end
    # @return [true,false]
    def is_chunked
      @j_del.isChunked
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
    #  @return The HTTP headers
    # @return [::Vertx::MultiMap]
    def headers
      if @cached_headers != nil
        return @cached_headers
      end
      @cached_headers = ::Vertx::MultiMap.new(@j_del.headers)
    end
    #  Put an HTTP header - fluent API
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
    #  If you send an HTTP request with the header <code>Expect</code> set to the value <code>100-continue</code>
    #  and the server responds with an interim HTTP response with a status code of <code>100</code> and a continue handler
    #  has been set using this method, then the <code>handler</code> will be called.<p>
    #  You can then continue to write data to the request body and later end it. This is normally used in conjunction with
    #  the {::Vertx::HttpClientRequest#send_head} method to force the request header to be written before the request has ended.
    # @param [Proc] handler
    # return [self]
    def continue_handler(&handler)
      if handler.class == Proc
        @j_del.continueHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling continue_handler(handler)"
    end
    #  Forces the head of the request to be written before {::Vertx::HttpClientRequest#end} is called on the request or any data is
    #  written to it. This is normally used
    #  to implement HTTP 100-continue handling, see {::Vertx::HttpClientRequest#continue_handler} for more information.
    # return [self]
    def send_head
      @j_del.sendHead
      self
    end
    #  Same as {::Vertx::HttpClientRequest#end} but writes a String with the specified encoding
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
    #  Set's the amount of time after which if a response is not received TimeoutException()
    #  will be sent to the exception handler of this request. Calling this method more than once
    #  has the effect of canceling any existing timeout and starting the timeout from scratchpad.
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

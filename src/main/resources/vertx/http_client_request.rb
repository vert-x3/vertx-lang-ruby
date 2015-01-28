require 'vertx/http_client_response'
require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientRequest
module Vertx
  #  Represents a client-side HTTP request.
  #  <p>
  #  Instances are created by an {::Vertx::HttpClient} instance, via one of the methods corresponding to the
  #  specific HTTP methods, or the generic request methods. On creation the request will not have been written to the
  #  wire.
  #  <p>
  #  Once a request has been obtained, headers can be set on it, and data can be written to its body if required. Once
  #  you are ready to send the request, one of the {::Vertx::HttpClientRequest#end} methods should be called.
  #  <p>
  #  Nothing is actually sent until the request has been internally assigned an HTTP connection.
  #  <p>
  #  The {::Vertx::HttpClient} instance will return an instance of this class immediately, even if there are no HTTP
  #  connections available in the pool. Any requests sent before a connection is assigned will be queued
  #  internally and actually sent when an HTTP connection becomes available from the pool.
  #  <p>
  #  The headers of the request are queued for writing either when the {::Vertx::HttpClientRequest#end} method is called, or, when the first
  #  part of the body is written, whichever occurs first.
  #  <p>
  #  This class supports both chunked and non-chunked HTTP.
  #  <p>
  #  It implements {::Vertx::WriteStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.
  #  <p>
  #  An example of using this class is as follows:
  #  <p>
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
    # @return [true,false] true if write queue is full
    def write_queue_full
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeQueueFull))).invoke(@j_del)
    end
    # @param [Proc] handler
    # @return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
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
    # @return [self]
    def write(param_1,param_2=nil)
      if param_1.class.method_defined?(:j_del)
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,param_1.j_del)
        return self
      end
      if param_1.class == String
        if param_2.class == String
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,param_1,param_2)
          return self
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::java.lang.String.java_class))).invoke(@j_del,param_1)
        return self
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling write(param_1,param_2)"
    end
    # @param [Fixnum] maxSize
    # @return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # @return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:drainHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
    # @param [Proc] handler
    # @return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::HttpClientResponse.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # @return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # @return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    # @param [Proc] endHandler
    # @return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    #  If chunked is true then the request will be set into HTTP chunked mode
    # @param [true,false] chunked true if chunked encoding
    # @return [self]
    def set_chunked(chunked)
      if chunked.class == TrueClass || chunked.class == FalseClass
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setChunked,Java::boolean.java_class))).invoke(@j_del,chunked)
        return self
      end
      raise ArgumentError, "Invalid argument chunked=#{chunked} when calling set_chunked(chunked)"
    end
    #  @return Is the request chunked?
    # @return [true,false]
    def is_chunked
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isChunked))).invoke(@j_del)
    end
    #  The HTTP method for the request.
    # @return [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH]
    def method
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:method))).invoke(@j_del).name.intern
    end
    #  @return The URI of the request.
    # @return [String]
    def uri
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:uri))).invoke(@j_del)
    end
    #  @return The HTTP headers
    # @return [::Vertx::MultiMap]
    def headers
      if @cached_headers != nil
        return @cached_headers
      end
      @cached_headers = ::Vertx::MultiMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:headers))).invoke(@j_del))
    end
    #  Put an HTTP header
    # @param [String] name The header name
    # @param [String] value The header value
    # @return [self]
    def put_header(name,value)
      if name.class == String
        if value.class == String
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:putHeader,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_header(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling put_header(name,value)"
    end
    #  If you send an HTTP request with the header <code>Expect</code> set to the value <code>100-continue</code>
    #  and the server responds with an interim HTTP response with a status code of <code>100</code> and a continue handler
    #  has been set using this method, then the <code>handler</code> will be called.
    #  <p>
    #  You can then continue to write data to the request body and later end it. This is normally used in conjunction with
    #  the {::Vertx::HttpClientRequest#send_head} method to force the request header to be written before the request has ended.
    # @param [Proc] handler
    # @return [self]
    def continue_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:continueHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling continue_handler(handler)"
    end
    #  Forces the head of the request to be written before {::Vertx::HttpClientRequest#end} is called on the request or any data is
    #  written to it.
    #  <p>
    #  This is normally used to implement HTTP 100-continue handling, see {::Vertx::HttpClientRequest#continue_handler} for
    #  more information.
    # @return [self]
    def send_head
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sendHead))).invoke(@j_del)
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
    # @return [void]
    def end(param_1=nil,param_2=nil)
      if param_1.class.method_defined?(:j_del)
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:end,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,param_1.j_del)
      end
      if param_1.class == String
        if param_2.class == String
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:end,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,param_1,param_2)
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:end,Java::java.lang.String.java_class))).invoke(@j_del,param_1)
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:end))).invoke(@j_del)
    end
    #  Set's the amount of time after which if a response is not received null
    #  will be sent to the exception handler of this request.
    #  <p>
    #   Calling this method more than once
    #  has the effect of canceling any existing timeout and starting the timeout from scratch.
    # @param [Fixnum] timeoutMs The quantity of time in milliseconds.
    # @return [self]
    def set_timeout(timeoutMs)
      if timeoutMs.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setTimeout,Java::long.java_class))).invoke(@j_del,timeoutMs)
        return self
      end
      raise ArgumentError, "Invalid argument timeoutMs=#{timeoutMs} when calling set_timeout(timeoutMs)"
    end
  end
end

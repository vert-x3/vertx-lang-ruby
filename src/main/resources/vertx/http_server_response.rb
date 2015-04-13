require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerResponse
module Vertx
  #  Represents a server-side HTTP response.
  #  <p>
  #  An instance of this is created and associated to every instance of
  #  {::Vertx::HttpServerRequest} that.
  #  <p>
  #  It allows the developer to control the HTTP response that is sent back to the
  #  client for a particular HTTP request.
  #  <p>
  #  It contains methods that allow HTTP headers and trailers to be set, and for a body to be written out to the response.
  #  <p>
  #  It also allows files to be streamed by the kernel directly from disk to the
  #  outgoing HTTP connection, bypassing user space altogether (where supported by
  #  the underlying operating system). This is a very efficient way of
  #  serving files from the server since buffers do not have to be read one by one
  #  from the file and written to the outgoing socket.
  #  <p>
  #  It implements {::Vertx::WriteStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.
  class HttpServerResponse
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::HttpServerResponse] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpServerResponse] the underlying java delegate
    def j_del
      @j_del
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::HttpServerResponse#set_write_queue_max_size}
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
    #  Write a  to the response body, encoded using the encoding <code>enc</code>.
    # @overload write(data)
    #   @param [::Vertx::Buffer] data
    # @overload write(chunk)
    #   @param [String] chunk the string to write
    # @overload write(chunk,enc)
    #   @param [String] chunk the string to write
    #   @param [String] enc the encoding to use
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
    #  @return the HTTP status code of the response. The default is <code>200</code> representing <code>OK</code>.
    # @return [Fixnum]
    def get_status_code
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getStatusCode))).invoke(@j_del)
    end
    #  Set the status code. If the status message hasn't been explicitly set, a default status message corresponding
    #  to the code will be looked-up and used.
    # @param [Fixnum] statusCode
    # @return [self]
    def set_status_code(statusCode)
      if statusCode.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setStatusCode,Java::int.java_class))).invoke(@j_del,statusCode)
        return self
      end
      raise ArgumentError, "Invalid argument statusCode=#{statusCode} when calling set_status_code(statusCode)"
    end
    #  @return the HTTP status message of the response. If this is not specified a default value will be used depending on what
    #  {::Vertx::HttpServerResponse#set_status_code} has been set to.
    # @return [String]
    def get_status_message
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getStatusMessage))).invoke(@j_del)
    end
    #  Set the status message
    # @param [String] statusMessage
    # @return [self]
    def set_status_message(statusMessage)
      if statusMessage.class == String
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setStatusMessage,Java::java.lang.String.java_class))).invoke(@j_del,statusMessage)
        return self
      end
      raise ArgumentError, "Invalid argument statusMessage=#{statusMessage} when calling set_status_message(statusMessage)"
    end
    #  If <code>chunked</code> is <code>true</code>, this response will use HTTP chunked encoding, and each call to write to the body
    #  will correspond to a new HTTP chunk sent on the wire.
    #  <p>
    #  If chunked encoding is used the HTTP header <code>Transfer-Encoding</code> with a value of <code>Chunked</code> will be
    #  automatically inserted in the response.
    #  <p>
    #  If <code>chunked</code> is <code>false</code>, this response will not use HTTP chunked encoding, and therefore the total size
    #  of any data that is written in the respone body must be set in the <code>Content-Length</code> header <b>before</b> any
    #  data is written out.
    #  <p>
    #  An HTTP chunked response is typically used when you do not know the total size of the request body up front.
    # @param [true,false] chunked
    # @return [self]
    def set_chunked(chunked)
      if chunked.class == TrueClass || chunked.class == FalseClass
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setChunked,Java::boolean.java_class))).invoke(@j_del,chunked)
        return self
      end
      raise ArgumentError, "Invalid argument chunked=#{chunked} when calling set_chunked(chunked)"
    end
    #  @return is the response chunked?
    # @return [true,false]
    def is_chunked
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isChunked))).invoke(@j_del)
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
    # @param [String] name the header name
    # @param [String] value the header value.
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
    #  @return The HTTP trailers
    # @return [::Vertx::MultiMap]
    def trailers
      if @cached_trailers != nil
        return @cached_trailers
      end
      @cached_trailers = ::Vertx::MultiMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:trailers))).invoke(@j_del))
    end
    #  Put an HTTP trailer
    # @param [String] name the trailer name
    # @param [String] value the trailer value
    # @return [self]
    def put_trailer(name,value)
      if name.class == String
        if value.class == String
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:putTrailer,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_trailer(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling put_trailer(name,value)"
    end
    #  Set a close handler for the response. This will be called if the underlying connection closes before the response
    #  is complete.
    # @param [Proc] handler the handler
    # @return [self]
    def close_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:closeHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    #  Same as {::Vertx::HttpServerResponse#end} but writes a String with the specified encoding before ending the response.
    # @overload end()
    # @overload end(chunk)
    #   @param [String] chunk the string to write before ending the response
    # @overload end(chunk)
    #   @param [::Vertx::Buffer] chunk the buffer to write before ending the response
    # @overload end(chunk,enc)
    #   @param [String] chunk the string to write before ending the response
    #   @param [String] enc the encoding to use
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
    #  Like {::Vertx::HttpServerResponse#send_file} but providing a handler which will be notified once the file has been completely
    #  written to the wire.
    # @param [String] filename path to the file to serve
    # @param [Proc] resultHandler handler that will be called on completion
    # @return [self]
    def send_file(filename,&resultHandler)
      if filename.class == String
        if resultHandler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sendFile,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,filename,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sendFile,Java::java.lang.String.java_class))).invoke(@j_del,filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling send_file(filename,resultHandler)"
    end
    #  Close the underlying TCP connection corresponding to the request.
    # @return [void]
    def close
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  @return has the response already ended?
    # @return [true,false]
    def ended
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:ended))).invoke(@j_del)
    end
    #  @return have the headers for the response already been written?
    # @return [true,false]
    def head_written
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:headWritten))).invoke(@j_del)
    end
    #  Provide a handler that will be called just before the headers are written to the wire.<p>
    #  This provides a hook allowing you to add any more headers or do any more operations before this occurs.
    # @param [Proc] handler the handler
    # @return [self]
    def headers_end_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:headersEndHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling headers_end_handler(handler)"
    end
    #  Provide a handler that will be called just before the last part of the body is written to the wire
    #  and the response is ended.<p>
    #  This provides a hook allowing you to do any more operations before this occurs.
    # @param [Proc] handler the handler
    # @return [self]
    def body_end_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:bodyEndHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling body_end_handler(handler)"
    end
  end
end

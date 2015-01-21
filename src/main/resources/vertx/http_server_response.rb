require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/multi_map'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpServerResponse
module Vertx
  #  Represents a server-side HTTP response.<p>
  #  Instances of this class are created and associated to every instance of
  #  {::Vertx::HttpServerRequest} that is created.<p>
  #  It allows the developer to control the HTTP response that is sent back to the
  #  client for a particular HTTP request. It contains methods that allow HTTP
  #  headers and trailers to be set, and for a body to be written out to the response.<p>
  #  It also allows files to be streamed by the kernel directly from disk to the
  #  outgoing HTTP connection, bypassing user space altogether (where supported by
  #  the underlying operating system). This is a very efficient way of
  #  serving files from the server since buffers do not have to be read one by one
  #  from the file and written to the outgoing socket.<p>
  #  It implements {::Vertx::WriteStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.<p>
  #  Instances of this class are not thread-safe<p>
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
    #  Write a  to the response body, encoded using the encoding <code>enc</code>.
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
    #  The HTTP status code of the response. The default is <code>200</code> representing <code>OK</code>.
    # @return [Fixnum]
    def get_status_code
      @j_del.getStatusCode
    end
    #  Set the status code
    # @param [Fixnum] statusCode
    # return [self]
    def set_status_code(statusCode)
      if statusCode.class == Fixnum
        @j_del.setStatusCode(statusCode)
        return self
      end
      raise ArgumentError, "Invalid argument statusCode=#{statusCode} when calling set_status_code(statusCode)"
    end
    #  The HTTP status message of the response. If this is not specified a default value will be used depending on what
    #  {::Vertx::HttpServerResponse#set_status_code} has been set to.
    # @return [String]
    def get_status_message
      @j_del.getStatusMessage
    end
    #  Set the status message
    # @param [String] statusMessage
    # return [self]
    def set_status_message(statusMessage)
      if statusMessage.class == String
        @j_del.setStatusMessage(statusMessage)
        return self
      end
      raise ArgumentError, "Invalid argument statusMessage=#{statusMessage} when calling set_status_message(statusMessage)"
    end
    #  If <code>chunked</code> is <code>true</code>, this response will use HTTP chunked encoding, and each call to write to the body
    #  will correspond to a new HTTP chunk sent on the wire.<p>
    #  If chunked encoding is used the HTTP header <code>Transfer-Encoding</code> with a value of <code>Chunked</code> will be
    #  automatically inserted in the response.<p>
    #  If <code>chunked</code> is <code>false</code>, this response will not use HTTP chunked encoding, and therefore if any data is written the
    #  body of the response, the total size of that data must be set in the <code>Content-Length</code> header <b>before</b> any
    #  data is written to the response body.<p>
    #  An HTTP chunked response is typically used when you do not know the total size of the request body up front.
    # @param [true,false] chunked
    # return [self]
    def set_chunked(chunked)
      if chunked.class == TrueClass || chunked.class == FalseClass
        @j_del.setChunked(chunked)
        return self
      end
      raise ArgumentError, "Invalid argument chunked=#{chunked} when calling set_chunked(chunked)"
    end
    #  Is the response chunked?
    # @return [true,false]
    def is_chunked
      @j_del.isChunked
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
    #  @return The HTTP trailers
    # @return [::Vertx::MultiMap]
    def trailers
      if @cached_trailers != nil
        return @cached_trailers
      end
      @cached_trailers = ::Vertx::MultiMap.new(@j_del.trailers)
    end
    #  Put an HTTP trailer - fluent API
    # @param [String] name
    # @param [String] value
    # return [self]
    def put_trailer(name,value)
      if name.class == String
        if value.class == String
          @j_del.putTrailer(name,value)
          return self
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put_trailer(name,value)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling put_trailer(name,value)"
    end
    #  Set a close handler for the response. This will be called if the underlying connection closes before the response
    #  is complete.
    # @param [Proc] handler
    # return [self]
    def close_handler(&handler)
      if handler.class == Proc
        @j_del.closeHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling close_handler(handler)"
    end
    #  Same as {::Vertx::HttpServerResponse#end} but writes a String with the specified encoding before ending the response.
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
    # @param [String] filename
    # @param [Proc] resultHandler
    # return [self]
    def send_file(filename,&resultHandler)
      if filename.class == String
        if resultHandler.class == Proc
          @j_del.sendFile(filename,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        @j_del.sendFile(filename)
        return self
      end
      raise ArgumentError, "Invalid argument filename=#{filename} when calling send_file(filename,resultHandler)"
    end
    #  Close the underlying TCP connection
    # return [void]
    def close
      @j_del.close
    end
    # @return [true,false]
    def ended
      @j_del.ended
    end
    # @return [true,false]
    def head_written
      @j_del.headWritten
    end
    # @param [Proc] handler
    # return [self]
    def headers_end_handler(&handler)
      if handler.class == Proc
        @j_del.headersEndHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling headers_end_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def body_end_handler(&handler)
      if handler.class == Proc
        @j_del.bodyEndHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling body_end_handler(handler)"
    end
  end
end

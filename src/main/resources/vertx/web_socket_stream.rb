require 'vertx/read_stream'
require 'vertx/web_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketStream
module Vertx
  #  A stream for {::Vertx::HttpClient} WebSocket connection.
  #  <p>
  #  When the connection attempt is successful, the stream handler is called back with the {::Vertx::WebSocket}
  #  argument, immediatly followed by a call to the end handler. When the connection attempt fails, the exception handler is invoked.
  #  <p>
  #  The connection occurs when the {::Vertx::WebSocketStream#handler} method is called with a non null handler, the other handlers should be
  #  set before setting the handler.
  class WebSocketStream
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::WebSocketStream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WebSocketStream] the underlying java delegate
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
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::WebSocket.new(event)) }))
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
  end
end

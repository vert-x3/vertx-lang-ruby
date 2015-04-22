require 'vertx/http_client_request'
require 'vertx/http_client_response'
require 'vertx/measured'
require 'vertx/web_socket_stream'
require 'vertx/multi_map'
require 'vertx/web_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClient
module Vertx
  #  An asynchronous HTTP client.
  #  <p>
  #  It allows you to make requests to HTTP servers, and a single client can make requests to any server.
  #  <p>
  #  It also allows you to open WebSockets to servers.
  #  <p>
  #  The client can also pool HTTP connections.
  #  <p>
  #  For pooling to occur, keep-alive must be true on the {::Vertx::HttpClientOptions} (default is true).
  #  In this case connections will be pooled and re-used if there are pending HTTP requests waiting to get a connection,
  #  otherwise they will be closed.
  #  <p>
  #  This gives the benefits of keep alive when the client is loaded but means we don't keep connections hanging around
  #  unnecessarily when there would be no benefits anyway.
  #  <p>
  #  The client also supports pipe-lining of requests. Pipe-lining means another request is sent on the same connection
  #  before the response from the preceeding one has returned. Pipe-lining is not appropriate for all requests.
  #  <p>
  #  To enable pipe-lining, it must be enabled on the {::Vertx::HttpClientOptions} (default is false).
  #  <p>
  #  When pipe-lining is enabled the connection will be automatically closed when all in-flight responses have returned
  #  and there are no outstanding pending requests to write.
  #  <p>
  #  The client is designed to be reused between requests.
  class HttpClient
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::HttpClient] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpClient] the underlying java delegate
    def j_del
      @j_del
    end
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Create an HTTP request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload request(method,requestURI)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    #   @param [String] requestURI the relative URI
    # @overload request(method,host,requestURI)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload request(method,requestURI,responseHandler)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload request(method,port,host,requestURI)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload request(method,host,requestURI,responseHandler)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload request(method,port,host,requestURI,responseHandler)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def request(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
      if param_1.class == Symbol && param_2.class == String && !block_given? && param_3 == nil && param_4 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:request, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2))
      elsif param_1.class == Symbol && param_2.class == String && param_3.class == String && !block_given? && param_4 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:request, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3))
      elsif param_1.class == Symbol && param_2.class == String && block_given? && param_3 == nil && param_4 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:request, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Symbol && param_2.class == Fixnum && param_3.class == String && param_4.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:request, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,param_4))
      elsif param_1.class == Symbol && param_2.class == String && param_3.class == String && block_given? && param_4 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:request, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Symbol && param_2.class == Fixnum && param_3.class == String && param_4.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:request, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,param_4,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling request(param_1,param_2,param_3,param_4)"
    end
    #  Create an HTTP request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def request_abs(method=nil,absoluteURI=nil)
      if method.class == Symbol && absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:requestAbs, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(method),absoluteURI))
      elsif method.class == Symbol && absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:requestAbs, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(method),absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling request_abs(method,absoluteURI)"
    end
    #  Create an HTTP GET request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload get(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload get(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload get(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload get(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload get(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload get(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def get(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:get, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:get, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:get, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:get, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:get, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:get, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling get(param_1,param_2,param_3)"
    end
    #  Create an HTTP GET request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def get_abs(absoluteURI=nil)
      if absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:getAbs, [Java::java.lang.String.java_class]).call(absoluteURI))
      elsif absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:getAbs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling get_abs(absoluteURI)"
    end
    #  Sends an HTTP GET request to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload getNow(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload getNow(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload getNow(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClient] a reference to this, so the API can be used fluently
    def get_now(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:getNow, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:getNow, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClient.new(@j_del.java_method(:getNow, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling get_now(param_1,param_2,param_3)"
    end
    #  Create an HTTP POST request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload post(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload post(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload post(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload post(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload post(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload post(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def post(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:post, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:post, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:post, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:post, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:post, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:post, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling post(param_1,param_2,param_3)"
    end
    #  Create an HTTP POST request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def post_abs(absoluteURI=nil)
      if absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:postAbs, [Java::java.lang.String.java_class]).call(absoluteURI))
      elsif absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:postAbs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling post_abs(absoluteURI)"
    end
    #  Create an HTTP HEAD request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload head(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload head(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload head(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload head(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload head(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload head(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def head(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:head, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:head, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:head, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:head, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:head, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:head, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling head(param_1,param_2,param_3)"
    end
    #  Create an HTTP HEAD request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def head_abs(absoluteURI=nil)
      if absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:headAbs, [Java::java.lang.String.java_class]).call(absoluteURI))
      elsif absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:headAbs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling head_abs(absoluteURI)"
    end
    #  Sends an HTTP HEAD request to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload headNow(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload headNow(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload headNow(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClient] a reference to this, so the API can be used fluently
    def head_now(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:headNow, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:headNow, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClient.new(@j_del.java_method(:headNow, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling head_now(param_1,param_2,param_3)"
    end
    #  Create an HTTP OPTIONS request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload options(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload options(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload options(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload options(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload options(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload options(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def options(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:options, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:options, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:options, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:options, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:options, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:options, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling options(param_1,param_2,param_3)"
    end
    #  Create an HTTP OPTIONS request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def options_abs(absoluteURI=nil)
      if absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:optionsAbs, [Java::java.lang.String.java_class]).call(absoluteURI))
      elsif absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:optionsAbs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling options_abs(absoluteURI)"
    end
    #  Sends an HTTP OPTIONS request to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload optionsNow(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload optionsNow(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload optionsNow(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClient] a reference to this, so the API can be used fluently
    def options_now(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:optionsNow, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:optionsNow, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClient.new(@j_del.java_method(:optionsNow, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling options_now(param_1,param_2,param_3)"
    end
    #  Create an HTTP PUT request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload put(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload put(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload put(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload put(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload put(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload put(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def put(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:put, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:put, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:put, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:put, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:put, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:put, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling put(param_1,param_2,param_3)"
    end
    #  Create an HTTP PUT request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def put_abs(absoluteURI=nil)
      if absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:putAbs, [Java::java.lang.String.java_class]).call(absoluteURI))
      elsif absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:putAbs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling put_abs(absoluteURI)"
    end
    #  Create an HTTP DELETE request to send to the server at the specified host and port, specifying a response handler to receive
    #  the response
    # @overload delete(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload delete(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload delete(requestURI,responseHandler)
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload delete(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload delete(host,requestURI,responseHandler)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @overload delete(port,host,requestURI,responseHandler)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def delete(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:delete, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:delete, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && block_given? && param_2 == nil && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:delete, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:delete, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:delete, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:delete, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling delete(param_1,param_2,param_3)"
    end
    #  Create an HTTP DELETE request to send to the server using an absolute URI, specifying a response handler to receive
    #  the response
    # @param [String] absoluteURI the absolute URI
    # @yield the response handler
    # @return [::Vertx::HttpClientRequest] an HTTP client request object
    def delete_abs(absoluteURI=nil)
      if absoluteURI.class == String && !block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:deleteAbs, [Java::java.lang.String.java_class]).call(absoluteURI))
      elsif absoluteURI.class == String && block_given?
        return ::Vertx::HttpClientRequest.new(@j_del.java_method(:deleteAbs, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(absoluteURI,(Proc.new { |event| yield(::Vertx::HttpClientResponse.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling delete_abs(absoluteURI)"
    end
    #  Connect a WebSocket to the specified port, host and relative request URI, with the specified headers, using
    #  the specified version of WebSockets, and the specified websocket sub protocols
    # @overload websocket(requestURI,wsConnect)
    #   @param [String] requestURI the relative URI
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(host,requestURI,wsConnect)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(requestURI,headers,wsConnect)
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(port,host,requestURI,wsConnect)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(host,requestURI,headers,wsConnect)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(requestURI,headers,version,wsConnect)
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(port,host,requestURI,headers,wsConnect)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(host,requestURI,headers,version,wsConnect)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(requestURI,headers,version,subProtocols,wsConnect)
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @param [String] subProtocols the subprotocols
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(port,host,requestURI,headers,version,wsConnect)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(host,requestURI,headers,version,subProtocols,wsConnect)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @param [String] subProtocols the subprotocols to use
    #   @yield handler that will be called with the websocket when connected
    # @overload websocket(port,host,requestURI,headers,version,subProtocols,wsConnect)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @param [String] subProtocols the subprotocols to use
    #   @yield handler that will be called with the websocket when connected
    # @return [::Vertx::HttpClient] a reference to this, so the API can be used fluently
    def websocket(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil,param_6=nil)
      if param_1.class == String && block_given? && param_2 == nil && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class == String && block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class.method_defined?(:j_del) && block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2.j_del,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class == String && param_3.class.method_defined?(:j_del) && block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3.j_del,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class.method_defined?(:j_del) && param_3.class == Symbol && block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_3),(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && param_4.class.method_defined?(:j_del) && block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,param_4.j_del,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class == String && param_3.class.method_defined?(:j_del) && param_4.class == Symbol && block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_4),(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class.method_defined?(:j_del) && param_3.class == Symbol && param_4.class == String && block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_3),param_4,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && param_4.class.method_defined?(:j_del) && param_5.class == Symbol && block_given? && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == String && param_2.class == String && param_3.class.method_defined?(:j_del) && param_4.class == Symbol && param_5.class == String && block_given? && param_6 == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_4),param_5,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && param_4.class.method_defined?(:j_del) && param_5.class == Symbol && param_6.class == String && block_given?
        return ::Vertx::HttpClient.new(@j_del.java_method(:websocket, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),param_6,(Proc.new { |event| yield(::Vertx::WebSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling websocket(param_1,param_2,param_3,param_4,param_5,param_6)"
    end
    #  Create a WebSocket stream to the specified port, host and relative request URI, with the specified headers, using
    #  the specified version of WebSockets, and the specified websocket sub protocols
    # @overload websocketStream(requestURI)
    #   @param [String] requestURI the relative URI
    # @overload websocketStream(host,requestURI)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload websocketStream(requestURI,headers)
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    # @overload websocketStream(port,host,requestURI)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    # @overload websocketStream(host,requestURI,headers)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    # @overload websocketStream(requestURI,headers,version)
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    # @overload websocketStream(port,host,requestURI,headers)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    # @overload websocketStream(host,requestURI,headers,version)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    # @overload websocketStream(requestURI,headers,version,subProtocols)
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @param [String] subProtocols the subprotocols
    # @overload websocketStream(port,host,requestURI,headers,version)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    # @overload websocketStream(host,requestURI,headers,version,subProtocols)
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @param [String] subProtocols the subprotocols to use
    # @overload websocketStream(port,host,requestURI,headers,version,subProtocols)
    #   @param [Fixnum] port the port
    #   @param [String] host the host
    #   @param [String] requestURI the relative URI
    #   @param [::Vertx::MultiMap] headers the headers
    #   @param [:V00,:V07,:V08,:V13] version the websocket version
    #   @param [String] subProtocols the subprotocols to use
    # @return [::Vertx::WebSocketStream] a reference to this, so the API can be used fluently
    def websocket_stream(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil,param_6=nil)
      if param_1.class == String && !block_given? && param_2 == nil && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == String && param_2.class == String && !block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2))
      elsif param_1.class == String && param_2.class.method_defined?(:j_del) && !block_given? && param_3 == nil && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class]).call(param_1,param_2.j_del))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && !block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3))
      elsif param_1.class == String && param_2.class == String && param_3.class.method_defined?(:j_del) && !block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class]).call(param_1,param_2,param_3.j_del))
      elsif param_1.class == String && param_2.class.method_defined?(:j_del) && param_3.class == Symbol && !block_given? && param_4 == nil && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class]).call(param_1,param_2.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_3)))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && param_4.class.method_defined?(:j_del) && !block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class]).call(param_1,param_2,param_3,param_4.j_del))
      elsif param_1.class == String && param_2.class == String && param_3.class.method_defined?(:j_del) && param_4.class == Symbol && !block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class]).call(param_1,param_2,param_3.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_4)))
      elsif param_1.class == String && param_2.class.method_defined?(:j_del) && param_3.class == Symbol && param_4.class == String && !block_given? && param_5 == nil && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class]).call(param_1,param_2.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_3),param_4))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && param_4.class.method_defined?(:j_del) && param_5.class == Symbol && !block_given? && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class]).call(param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5)))
      elsif param_1.class == String && param_2.class == String && param_3.class.method_defined?(:j_del) && param_4.class == Symbol && param_5.class == String && !block_given? && param_6 == nil
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_4),param_5))
      elsif param_1.class == Fixnum && param_2.class == String && param_3.class == String && param_4.class.method_defined?(:j_del) && param_5.class == Symbol && param_6.class == String && !block_given?
        return ::Vertx::WebSocketStream.new(@j_del.java_method(:websocketStream, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class]).call(param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),param_6))
      end
      raise ArgumentError, "Invalid arguments when calling websocket_stream(param_1,param_2,param_3,param_4,param_5,param_6)"
    end
    #  Close the client. Closing will close down any pooled connections.
    #  Clients should always be closed after use.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end

require 'vertx/http_client_request'
require 'vertx/http_client_response'
require 'vertx/measured'
require 'vertx/web_socket_stream'
require 'vertx/multi_map'
require 'vertx/web_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClient
module Vertx
  #  An HTTP client that maintains a pool of connections to a specific host, at a specific port. The client supports
  #  pipelining of requests.<p>
  #  As well as HTTP requests, the client can act as a factory for <code>WebSocket websockets</code>.<p>
  #  If an instance is instantiated from an event loop then the handlers
  #  of the instance will always be called on that same event loop.
  #  If an instance is instantiated from some other arbitrary Java thread (i.e. when running embedded) then
  #  and event loop will be assigned to the instance and used when any of its handlers
  #  are called.<p>
  #  Instances of HttpClient are thread-safe.<p>
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
    #  The metric base name
    # @return [String]
    def metric_base_name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metricBaseName))).invoke(@j_del)
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metrics))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    # @overload request(method,absoluteURI)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method
    #   @param [String] absoluteURI
    # @overload request(method,absoluteURI,responseHandler)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method
    #   @param [String] absoluteURI
    #   @param [Proc] responseHandler
    # @overload request(method,port,host,requestURI)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [String] requestURI
    # @overload request(method,port,host,requestURI,responseHandler)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [String] requestURI
    #   @param [Proc] responseHandler
    # @return [::Vertx::HttpClientRequest]
    def request(param_1,param_2,param_3=nil,param_4=nil,&param_5)
      if param_1.class == Symbol
        if param_2.class == String
          if param_3.class == Proc
            return ::Vertx::HttpClientRequest.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:request,Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,(Proc.new { |event| param_3.call(::Vertx::HttpClientResponse.new(event)) })))
          end
          return ::Vertx::HttpClientRequest.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:request,Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2))
        end
        if param_2.class == Fixnum
          if param_3.class == String
            if param_4.class == String
              if param_5.class == Proc
                return ::Vertx::HttpClientRequest.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:request,Java::IoVertxCoreHttp::HttpMethod.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,param_4,(Proc.new { |event| param_5.call(::Vertx::HttpClientResponse.new(event)) })))
              end
              return ::Vertx::HttpClientRequest.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:request,Java::IoVertxCoreHttp::HttpMethod.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,param_4))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling request(param_1,param_2,param_3,param_4,param_5)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling request(param_1,param_2,param_3,param_4,param_5)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling request(param_1,param_2,param_3,param_4,param_5)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling request(param_1,param_2,param_3,param_4,param_5)"
    end
    #  @return a {::Vertx::WebSocketStream} configured with the specified arguments
    # @param [Fixnum] port
    # @param [String] host
    # @param [String] requestURI
    # @param [::Vertx::MultiMap] headers
    # @param [:V00,:V07,:V08,:V13] version
    # @param [String] subProtocols
    # @return [::Vertx::WebSocketStream]
    def websocket(port,host,requestURI,headers=nil,version=nil,subProtocols=nil)
      if port.class == Fixnum
        if host.class == String
          if requestURI.class == String
            if headers.class.method_defined?(:j_del)
              if version.class == Symbol
                if subProtocols.class == String
                  return ::Vertx::WebSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host,requestURI,headers.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(version),subProtocols))
                end
                return ::Vertx::WebSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class))).invoke(@j_del,port,host,requestURI,headers.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(version)))
              end
              return ::Vertx::WebSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class))).invoke(@j_del,port,host,requestURI,headers.j_del))
            end
            return ::Vertx::WebSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:websocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host,requestURI))
          end
          raise ArgumentError, "Invalid argument requestURI=#{requestURI} when calling websocket(port,host,requestURI,headers,version,subProtocols)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling websocket(port,host,requestURI,headers,version,subProtocols)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling websocket(port,host,requestURI,headers,version,subProtocols)"
    end
    # @overload connectWebsocket(port,host,requestURI,wsConnect)
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [String] requestURI
    #   @param [Proc] wsConnect
    # @overload connectWebsocket(port,host,requestURI,headers,wsConnect)
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [String] requestURI
    #   @param [::Vertx::MultiMap] headers
    #   @param [Proc] wsConnect
    # @overload connectWebsocket(port,host,requestURI,headers,version,wsConnect)
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [String] requestURI
    #   @param [::Vertx::MultiMap] headers
    #   @param [:V00,:V07,:V08,:V13] version
    #   @param [Proc] wsConnect
    # @overload connectWebsocket(port,host,requestURI,headers,version,subProtocols,wsConnect)
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [String] requestURI
    #   @param [::Vertx::MultiMap] headers
    #   @param [:V00,:V07,:V08,:V13] version
    #   @param [String] subProtocols
    #   @param [Proc] wsConnect
    # @return [::Vertx::HttpClient]
    def connect_websocket(param_1,param_2,param_3,param_4,param_5=nil,param_6=nil,&param_7)
      if param_1.class == Fixnum
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              return ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectWebsocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,(Proc.new { |event| param_4.call(::Vertx::WebSocket.new(event)) })))
            end
            if param_4.class.method_defined?(:j_del)
              if param_5.class == Proc
                return ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectWebsocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,param_4.j_del,(Proc.new { |event| param_5.call(::Vertx::WebSocket.new(event)) })))
              end
              if param_5.class == Symbol
                if param_6.class == Proc
                  return ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectWebsocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),(Proc.new { |event| param_6.call(::Vertx::WebSocket.new(event)) })))
                end
                if param_6.class == String
                  if param_7.class == Proc
                    return ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectWebsocket,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::MultiMap.java_class,Java::IoVertxCoreHttp::WebsocketVersion.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),param_6,(Proc.new { |event| param_7.call(::Vertx::WebSocket.new(event)) })))
                  end
                  raise ArgumentError, "Invalid argument param_7=#{param_7} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
                end
                raise ArgumentError, "Invalid argument param_6=#{param_6} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
              end
              raise ArgumentError, "Invalid argument param_5=#{param_5} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling connect_websocket(param_1,param_2,param_3,param_4,param_5,param_6,param_7)"
    end
    #  Close the HTTP client. This will cause any pooled HTTP connections to be closed.
    # return [void]
    def close
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
  end
end

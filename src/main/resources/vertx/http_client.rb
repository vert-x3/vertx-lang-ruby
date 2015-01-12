require 'vertx/http_client_request'
require 'vertx/http_client_response'
require 'vertx/measured'
require 'vertx/web_socket_stream'
require 'vertx/multi_map'
require 'vertx/web_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClient
module Vertx
  class HttpClient
    include Vertx::Measured
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      @j_del.metricBaseName
    end
    def metrics()
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
    end
    def request(param_1,param_2,param_3=nil,param_4=nil,param_5=nil)
      if param_1 != nil && param_1.class == String
        if param_2 != nil && param_2.class == String
          if param_3 != nil && param_3.class == Proc
            return Vertx::HttpClientRequest.new(@j_del.request(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,(Proc.new { |event| param_3.call(Vertx::HttpClientResponse.new(event)) })))
          end
          return Vertx::HttpClientRequest.new(@j_del.request(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2))
        end
        if param_2 != nil && param_2.class == Fixnum
          if param_3 != nil && param_3.class == String
            if param_4 != nil && param_4.class == String
              if param_5 != nil && param_5.class == Proc
                return Vertx::HttpClientRequest.new(@j_del.request(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,param_4,(Proc.new { |event| param_5.call(Vertx::HttpClientResponse.new(event)) })))
              end
              return Vertx::HttpClientRequest.new(@j_del.request(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2,param_3,param_4))
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def websocket(port,host,requestURI,headers=nil,version=nil,subProtocols=nil)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          if requestURI != nil && requestURI.class == String
            if headers != nil && headers.class.method_defined?(:j_del)
              if version != nil && version.class == String
                if subProtocols != nil && subProtocols.class == String
                  return Vertx::WebSocketStream.new(@j_del.websocket(port,host,requestURI,headers.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(version),subProtocols))
                end
                return Vertx::WebSocketStream.new(@j_del.websocket(port,host,requestURI,headers.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(version)))
              end
              return Vertx::WebSocketStream.new(@j_del.websocket(port,host,requestURI,headers.j_del))
            end
            return Vertx::WebSocketStream.new(@j_del.websocket(port,host,requestURI))
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def connect_websocket(param_1,param_2,param_3,param_4,param_5=nil,param_6=nil,param_7=nil)
      if param_1 != nil && param_1.class == Fixnum
        if param_2 != nil && param_2.class == String
          if param_3 != nil && param_3.class == String
            if param_4 != nil && param_4.class == Proc
              return Vertx::HttpClient.new(@j_del.connectWebsocket(param_1,param_2,param_3,(Proc.new { |event| param_4.call(Vertx::WebSocket.new(event)) })))
            end
            if param_4 != nil && param_4.class.method_defined?(:j_del)
              if param_5 != nil && param_5.class == Proc
                return Vertx::HttpClient.new(@j_del.connectWebsocket(param_1,param_2,param_3,param_4.j_del,(Proc.new { |event| param_5.call(Vertx::WebSocket.new(event)) })))
              end
              if param_5 != nil && param_5.class == String
                if param_6 != nil && param_6.class == Proc
                  return Vertx::HttpClient.new(@j_del.connectWebsocket(param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),(Proc.new { |event| param_6.call(Vertx::WebSocket.new(event)) })))
                end
                if param_6 != nil && param_6.class == String
                  if param_7 != nil && param_7.class == Proc
                    return Vertx::HttpClient.new(@j_del.connectWebsocket(param_1,param_2,param_3,param_4.j_del,Java::IoVertxCoreHttp::WebsocketVersion.valueOf(param_5),param_6,(Proc.new { |event| param_7.call(Vertx::WebSocket.new(event)) })))
                  end
                  raise ArgumentError, 'dispatch error'
                end
                raise ArgumentError, 'dispatch error'
              end
              raise ArgumentError, 'dispatch error'
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def close()
      @j_del.close
    end
  end
end

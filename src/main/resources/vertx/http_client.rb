include_class 'io.vertx.core.http.HttpClientRequest'
include_class 'io.vertx.core.http.HttpClientResponse'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.http.WebSocketStream'
include_class 'io.vertx.core.MultiMap'
include_class 'io.vertx.core.http.WebSocket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClient
module Vertx
  class HttpClient
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return nil
    end
    def request(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil)
        if false
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == Proc
                  return nil
                end
              return nil
            end
            if param_2 != nil && param_2.class == Fixnum
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == String
                        if param_5 != nil && param_5.class == Proc
                          return nil
                        end
                      return nil
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def websocket(port,host,request_uri,headers=nil,version=nil,sub_protocols=nil)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          if request_uri != nil && request_uri.class == String
            if headers != nil && headers.class.method_defined?(:j_del)
              if false
                if sub_protocols != nil && sub_protocols.class == String
                  return nil
                end
                return nil
              end
              return nil
            end
            return nil
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def connect_websocket(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil,param_6=nil,param_7=nil)
        if param_1 != nil && param_1.class == Fixnum
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      return nil
                    end
                    if param_4 != nil && param_4.class.method_defined?(:j_del)
                        if param_5 != nil && param_5.class == Proc
                          return nil
                        end
                        if false
                            if param_6 != nil && param_6.class == Proc
                              return nil
                            end
                            if param_6 != nil && param_6.class == String
                                if param_7 != nil && param_7.class == Proc
                                  return nil
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
      return @j_del.close()
    end
  end
end

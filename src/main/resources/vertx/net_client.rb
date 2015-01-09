include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.net.NetSocket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetClient
module Vertx
  class NetClient
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
    def connect(port,host,connect_handler)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          if connect_handler != nil && connect_handler.class == Proc
            @j_del.connect(port,host,nil)
            return self
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

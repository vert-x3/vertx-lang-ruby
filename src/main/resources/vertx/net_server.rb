include_class 'io.vertx.core.net.NetSocketStream'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.net.NetSocket'
require 'vertx/util/utils.rb'
module Vertx
  class NetServer
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
    def connect_stream()
      return nil
    end
    def connect_handler(handler)
      if handler != nil && handler.class == Proc
        return nil
      end
      raise ArgumentError, 'dispatch error'
    end
    def listen(listen_handler=nil)
      if listen_handler != nil && listen_handler.class == Proc
        @j_del.listen(nil)
        return self
      end
      @j_del.listen()
      return self
    end
    def close(completion_handler=nil)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.close(nil)
      end
      return @j_del.close()
    end
    def actual_port()
      return @j_del.actualPort()
    end
  end
end

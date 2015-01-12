require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetClient
module Vertx
  class NetClient
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
    def connect(port,host,&connectHandler)
      if port.class == Fixnum
        if host.class == String
          if connectHandler.class == Proc
            @j_del.connect(port,host,(Proc.new { |ar| connectHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::NetSocket.new(ar.result) : nil) }))
            return self
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

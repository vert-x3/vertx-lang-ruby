include_class 'io.vertx.core.datagram.DatagramSocket'
include_class 'io.vertx.core.http.HttpServer'
include_class 'io.vertx.core.Context'
include_class 'io.vertx.core.Future'
include_class 'io.vertx.core.shareddata.SharedData'
include_class 'io.vertx.core.dns.DnsClient'
include_class 'io.vertx.core.TimeoutStream'
include_class 'io.vertx.core.eventbus.EventBus'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.net.NetServer'
include_class 'io.vertx.core.file.FileSystem'
include_class 'io.vertx.core.net.NetClient'
include_class 'io.vertx.core.http.HttpClient'
include_class 'io.vertx.core.VertxOptions'
include_class 'io.vertx.core.VertxOptions'
include_class 'io.vertx.core.net.NetServerOptions'
include_class 'io.vertx.core.net.NetClientOptions'
include_class 'io.vertx.core.http.HttpServerOptions'
include_class 'io.vertx.core.http.HttpClientOptions'
include_class 'io.vertx.core.datagram.DatagramSocketOptions'
include_class 'io.vertx.core.DeploymentOptions'
include_class 'io.vertx.core.DeploymentOptions'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Vertx
module Vertx
  class Vertx
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
    def vertx(options=nil)
      if options == nil || options.class == Hash
        return Vertx.new(@j_del.vertx(options != nil ? VertxOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      return Vertx.new(@j_del.vertx())
    end
    def clustered_vertx(options,result_handler)
      if options == nil || options.class == Hash
        if result_handler != nil && result_handler.class == Proc
          return @j_del.clusteredVertx(options != nil ? VertxOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil,nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def current_context()
      return Context.new(@j_del.currentContext())
    end
    def get_or_create_context()
      return Context.new(@j_del.getOrCreateContext())
    end
    def create_net_server(options)
      if options == nil || options.class == Hash
        return NetServer.new(@j_del.createNetServer(options != nil ? NetServerOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def create_net_client(options)
      if options == nil || options.class == Hash
        return NetClient.new(@j_del.createNetClient(options != nil ? NetClientOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def create_http_server(options)
      if options == nil || options.class == Hash
        return HttpServer.new(@j_del.createHttpServer(options != nil ? HttpServerOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def create_http_client(options)
      if options == nil || options.class == Hash
        return HttpClient.new(@j_del.createHttpClient(options != nil ? HttpClientOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def create_datagram_socket(options)
      if options == nil || options.class == Hash
        return DatagramSocket.new(@j_del.createDatagramSocket(options != nil ? DatagramSocketOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, 'dispatch error'
    end
    def file_system()
      return FileSystem.new(@j_del.fileSystem())
    end
    def event_bus()
      return EventBus.new(@j_del.eventBus())
    end
    def create_dns_client(port,host)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          return DnsClient.new(@j_del.createDnsClient(port,host))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def shared_data()
      return SharedData.new(@j_del.sharedData())
    end
    def set_timer(delay,handler)
      if delay != nil && delay.class == Fixnum
        if handler != nil && handler.class == Proc
          return @j_del.setTimer(delay,(Proc.new { |event| handler.call(event) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def timer_stream(delay)
      if delay != nil && delay.class == Fixnum
        return TimeoutStream.new(@j_del.timerStream(delay))
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_periodic(delay,handler)
      if delay != nil && delay.class == Fixnum
        if handler != nil && handler.class == Proc
          return @j_del.setPeriodic(delay,(Proc.new { |event| handler.call(event) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def periodic_stream(delay)
      if delay != nil && delay.class == Fixnum
        return TimeoutStream.new(@j_del.periodicStream(delay))
      end
      raise ArgumentError, 'dispatch error'
    end
    def cancel_timer(id)
      if id != nil && id.class == Fixnum
        return @j_del.cancelTimer(id)
      end
      raise ArgumentError, 'dispatch error'
    end
    def run_on_context(action)
      if action != nil && action.class == Proc
        return @j_del.runOnContext(nil)
      end
      raise ArgumentError, 'dispatch error'
    end
    def close(completion_handler=nil)
      if completion_handler != nil && completion_handler.class == Proc
        return @j_del.close(nil)
      end
      return @j_del.close()
    end
    def deploy_verticle(param_1=nil,param_2=nil,param_3=nil)
        if param_1 != nil && param_1.class == String
            if param_2 == nil || param_2.class == Hash
                if param_3 != nil && param_3.class == Proc
                  return @j_del.deployVerticle(param_1,param_2 != nil ? DeploymentOptions.new(Vertx::Util::Utils.to_json_object(param_2)) : nil,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
                end
              return @j_del.deployVerticle(param_1,param_2 != nil ? DeploymentOptions.new(Vertx::Util::Utils.to_json_object(param_2)) : nil)
            end
            if param_2 != nil && param_2.class == Proc
              return @j_del.deployVerticle(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
            end
          return @j_del.deployVerticle(param_1)
        end
      raise ArgumentError, 'dispatch error'
    end
    def undeploy_verticle(deployment_id,completion_handler=nil)
      if deployment_id != nil && deployment_id.class == String
        if completion_handler != nil && completion_handler.class == Proc
          return @j_del.undeployVerticle(deployment_id,nil)
        end
        return @j_del.undeployVerticle(deployment_id)
      end
      raise ArgumentError, 'dispatch error'
    end
    def deployments()
      return @j_del.deployments().to_set.map! { |elt| elt }
    end
    def execute_blocking(blocking_code_handler,result_handler)
      if blocking_code_handler != nil && blocking_code_handler.class == Proc
        if result_handler != nil && result_handler.class == Proc
          return @j_del.executeBlocking(nil,nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

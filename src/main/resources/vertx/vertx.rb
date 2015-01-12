require 'vertx/datagram_socket'
require 'vertx/http_server'
require 'vertx/context'
require 'vertx/future'
require 'vertx/shared_data'
require 'vertx/dns_client'
require 'vertx/timeout_stream'
require 'vertx/event_bus'
require 'vertx/measured'
require 'vertx/net_server'
require 'vertx/file_system'
require 'vertx/net_client'
require 'vertx/http_client'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Vertx
module Vertx
  class Vertx
    include Vertx::Measured
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name
      @j_del.metricBaseName
    end
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
    end
    def self.vertx(options=nil)
      if options == nil || options.class == Hash
        return Vertx::Vertx.new(Java::IoVertxCore::Vertx.vertx(options != nil ? Java::IoVertxCore::VertxOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      Vertx::Vertx.new(Java::IoVertxCore::Vertx.vertx)
    end
    def self.clustered_vertx(options,&resultHandler)
      if options == nil || options.class == Hash
        if resultHandler.class == Proc
          return Java::IoVertxCore::Vertx.clusteredVertx(options != nil ? Java::IoVertxCore::VertxOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil,(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Vertx.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling clustered_vertx(options,resultHandler)"
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling clustered_vertx(options,resultHandler)"
    end
    def self.current_context
      Vertx::Context.new(Java::IoVertxCore::Vertx.currentContext)
    end
    def get_or_create_context
      Vertx::Context.new(@j_del.getOrCreateContext)
    end
    def create_net_server(options)
      if options == nil || options.class == Hash
        return Vertx::NetServer.new(@j_del.createNetServer(options != nil ? Java::IoVertxCoreNet::NetServerOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_net_server(options)"
    end
    def create_net_client(options)
      if options == nil || options.class == Hash
        return Vertx::NetClient.new(@j_del.createNetClient(options != nil ? Java::IoVertxCoreNet::NetClientOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_net_client(options)"
    end
    def create_http_server(options)
      if options == nil || options.class == Hash
        return Vertx::HttpServer.new(@j_del.createHttpServer(options != nil ? Java::IoVertxCoreHttp::HttpServerOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_http_server(options)"
    end
    def create_http_client(options)
      if options == nil || options.class == Hash
        return Vertx::HttpClient.new(@j_del.createHttpClient(options != nil ? Java::IoVertxCoreHttp::HttpClientOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_http_client(options)"
    end
    def create_datagram_socket(options)
      if options == nil || options.class == Hash
        return Vertx::DatagramSocket.new(@j_del.createDatagramSocket(options != nil ? Java::IoVertxCoreDatagram::DatagramSocketOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_datagram_socket(options)"
    end
    def file_system
        if @cached_file_system != nil
          return @cached_file_system
        end
      @cached_file_system = Vertx::FileSystem.new(@j_del.fileSystem)
    end
    def event_bus
        if @cached_event_bus != nil
          return @cached_event_bus
        end
      @cached_event_bus = Vertx::EventBus.new(@j_del.eventBus)
    end
    def create_dns_client(port,host)
      if port.class == Fixnum
        if host.class == String
          return Vertx::DnsClient.new(@j_del.createDnsClient(port,host))
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling create_dns_client(port,host)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling create_dns_client(port,host)"
    end
    def shared_data
        if @cached_shared_data != nil
          return @cached_shared_data
        end
      @cached_shared_data = Vertx::SharedData.new(@j_del.sharedData)
    end
    def set_timer(delay,&handler)
      if delay.class == Fixnum
        if handler.class == Proc
          return @j_del.setTimer(delay,(Proc.new { |event| handler.call(event) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling set_timer(delay,handler)"
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling set_timer(delay,handler)"
    end
    def timer_stream(delay)
      if delay.class == Fixnum
        return Vertx::TimeoutStream.new(@j_del.timerStream(delay))
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling timer_stream(delay)"
    end
    def set_periodic(delay,&handler)
      if delay.class == Fixnum
        if handler.class == Proc
          return @j_del.setPeriodic(delay,(Proc.new { |event| handler.call(event) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling set_periodic(delay,handler)"
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling set_periodic(delay,handler)"
    end
    def periodic_stream(delay)
      if delay.class == Fixnum
        return Vertx::TimeoutStream.new(@j_del.periodicStream(delay))
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling periodic_stream(delay)"
    end
    def cancel_timer(id)
      if id.class == Fixnum
        return @j_del.cancelTimer(id)
      end
      raise ArgumentError, "Invalid argument id=#{id} when calling cancel_timer(id)"
    end
    def run_on_context(&action)
      if action.class == Proc
        return @j_del.runOnContext(action)
      end
      raise ArgumentError, "Invalid argument action=#{action} when calling run_on_context(action)"
    end
    def close(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.close((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
    def deploy_verticle(param_1,param_2=nil,&param_3)
      if param_1.class == String
        if param_2 == nil || param_2.class == Hash
          if param_3.class == Proc
            return @j_del.deployVerticle(param_1,param_2 != nil ? Java::IoVertxCore::DeploymentOptions.new(Vertx::Util::Utils.to_json_object(param_2)) : nil,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          return @j_del.deployVerticle(param_1,param_2 != nil ? Java::IoVertxCore::DeploymentOptions.new(Vertx::Util::Utils.to_json_object(param_2)) : nil)
        end
        if param_2.class == Proc
          return @j_del.deployVerticle(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        return @j_del.deployVerticle(param_1)
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling deploy_verticle(param_1,param_2,param_3)"
    end
    def undeploy_verticle(deploymentID,&completionHandler)
      if deploymentID.class == String
        if completionHandler.class == Proc
          return @j_del.undeployVerticle(deploymentID,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
        end
        return @j_del.undeployVerticle(deploymentID)
      end
      raise ArgumentError, "Invalid argument deploymentID=#{deploymentID} when calling undeploy_verticle(deploymentID,completionHandler)"
    end
    def deployments
      @j_del.deployments.to_set.map! { |elt| elt }
    end
    def execute_blocking(blockingCodeHandler,&resultHandler)
      if blockingCodeHandler.class == Proc
        if resultHandler.class == Proc
          return @j_del.executeBlocking((Proc.new { |event| blockingCodeHandler.call(Vertx::Future.new(event)) }),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling execute_blocking(blockingCodeHandler,resultHandler)"
      end
      raise ArgumentError, "Invalid argument blockingCodeHandler=#{blockingCodeHandler} when calling execute_blocking(blockingCodeHandler,resultHandler)"
    end
  end
end

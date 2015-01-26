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
  #  The control centre of the Vert.x Core API.<p>
  #  You should normally only use a single instance of this class throughout your application. If you are running in the
  #  Vert.x container an instance will be provided to you.<p>
  #  If you are using Vert.x embedded, you can create an instance using one of the static <code>VertxFactory.newVertx</code>
  #  methods.<p>
  #  This class acts as a factory for TCP/SSL and HTTP/HTTPS servers and clients, SockJS servers, and provides an
  #  instance of the event bus, file system and shared data classes, as well as methods for setting and cancelling
  #  timers.<p>
  #  Instances of this class are thread-safe.<p>
  class Vertx
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::Vertx] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Vertx] the underlying java delegate
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
    # @param [Hash] options
    # @return [::Vertx::Vertx]
    def self.vertx(options=nil)
      if options.class == Hash
        return ::Vertx::Vertx.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:vertx,Java::IoVertxCore::VertxOptions.java_class))).invoke(@j_del,Java::IoVertxCore::VertxOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::Vertx.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:vertx))).invoke(@j_del))
    end
    # @param [Hash] options
    # @param [Proc] resultHandler
    # return [void]
    def self.clustered_vertx(options,&resultHandler)
      if options.class == Hash
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:clusteredVertx,Java::IoVertxCore::VertxOptions.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,Java::IoVertxCore::VertxOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Vertx.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling clustered_vertx(options,resultHandler)"
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling clustered_vertx(options,resultHandler)"
    end
    #  Gets the current context
    # @return [::Vertx::Context]
    def self.current_context
      ::Vertx::Context.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:currentContext))).invoke(@j_del))
    end
    #  Gets the current context, or creates one if there isn't one
    # @return [::Vertx::Context]
    def get_or_create_context
      ::Vertx::Context.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getOrCreateContext))).invoke(@j_del))
    end
    #  Create a TCP/SSL server
    # @param [Hash] options
    # @return [::Vertx::NetServer]
    def create_net_server(options)
      if options.class == Hash
        return ::Vertx::NetServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createNetServer,Java::IoVertxCoreNet::NetServerOptions.java_class))).invoke(@j_del,Java::IoVertxCoreNet::NetServerOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_net_server(options)"
    end
    #  Create a TCP/SSL client
    # @param [Hash] options
    # @return [::Vertx::NetClient]
    def create_net_client(options)
      if options.class == Hash
        return ::Vertx::NetClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createNetClient,Java::IoVertxCoreNet::NetClientOptions.java_class))).invoke(@j_del,Java::IoVertxCoreNet::NetClientOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_net_client(options)"
    end
    #  Create an HTTP/HTTPS server
    # @param [Hash] options
    # @return [::Vertx::HttpServer]
    def create_http_server(options)
      if options.class == Hash
        return ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createHttpServer,Java::IoVertxCoreHttp::HttpServerOptions.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpServerOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_http_server(options)"
    end
    #  Create a HTTP/HTTPS client
    # @param [Hash] options
    # @return [::Vertx::HttpClient]
    def create_http_client(options)
      if options.class == Hash
        return ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createHttpClient,Java::IoVertxCoreHttp::HttpClientOptions.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpClientOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_http_client(options)"
    end
    # @param [Hash] options
    # @return [::Vertx::DatagramSocket]
    def create_datagram_socket(options)
      if options.class == Hash
        return ::Vertx::DatagramSocket.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createDatagramSocket,Java::IoVertxCoreDatagram::DatagramSocketOptions.java_class))).invoke(@j_del,Java::IoVertxCoreDatagram::DatagramSocketOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling create_datagram_socket(options)"
    end
    #  The File system object
    # @return [::Vertx::FileSystem]
    def file_system
      if @cached_file_system != nil
        return @cached_file_system
      end
      @cached_file_system = ::Vertx::FileSystem.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:fileSystem))).invoke(@j_del))
    end
    #  The event bus
    # @return [::Vertx::EventBus]
    def event_bus
      if @cached_event_bus != nil
        return @cached_event_bus
      end
      @cached_event_bus = ::Vertx::EventBus.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:eventBus))).invoke(@j_del))
    end
    #  Return the 
    # @param [Fixnum] port
    # @param [String] host
    # @return [::Vertx::DnsClient]
    def create_dns_client(port,host)
      if port.class == Fixnum
        if host.class == String
          return ::Vertx::DnsClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createDnsClient,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host))
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling create_dns_client(port,host)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling create_dns_client(port,host)"
    end
    #  The shared data object
    # @return [::Vertx::SharedData]
    def shared_data
      if @cached_shared_data != nil
        return @cached_shared_data
      end
      @cached_shared_data = ::Vertx::SharedData.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sharedData))).invoke(@j_del))
    end
    #  Set a one-shot timer to fire after <code>delay</code> milliseconds, at which point <code>handler</code> will be called with
    #  the id of the timer.
    # @param [Fixnum] delay
    # @param [Proc] handler
    # @return [Fixnum]
    def set_timer(delay,&handler)
      if delay.class == Fixnum
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setTimer,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,delay,(Proc.new { |event| handler.call(event) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling set_timer(delay,handler)"
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling set_timer(delay,handler)"
    end
    #  Returns a one-shot timer as a read stream. The timer will be fired after <code>delay</code> milliseconds after
    #  the  has been called.
    # @param [Fixnum] delay
    # @return [::Vertx::TimeoutStream]
    def timer_stream(delay)
      if delay.class == Fixnum
        return ::Vertx::TimeoutStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:timerStream,Java::long.java_class))).invoke(@j_del,delay))
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling timer_stream(delay)"
    end
    #  Set a periodic timer to fire every <code>delay</code> milliseconds, at which point <code>handler</code> will be called with
    #  the id of the timer.
    # @param [Fixnum] delay
    # @param [Proc] handler
    # @return [Fixnum]
    def set_periodic(delay,&handler)
      if delay.class == Fixnum
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setPeriodic,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,delay,(Proc.new { |event| handler.call(event) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling set_periodic(delay,handler)"
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling set_periodic(delay,handler)"
    end
    #  Returns a periodic timer as a read stream. The timer will be fired every <code>delay</code> milliseconds after
    #  the  has been called.
    # @param [Fixnum] delay
    # @return [::Vertx::TimeoutStream]
    def periodic_stream(delay)
      if delay.class == Fixnum
        return ::Vertx::TimeoutStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:periodicStream,Java::long.java_class))).invoke(@j_del,delay))
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling periodic_stream(delay)"
    end
    #  Cancel the timer with the specified <code>id</code>. Returns <code></code> true if the timer was successfully cancelled, or
    #  <code>false</code> if the timer does not exist.
    # @param [Fixnum] id
    # @return [true,false]
    def cancel_timer(id)
      if id.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:cancelTimer,Java::long.java_class))).invoke(@j_del,id)
      end
      raise ArgumentError, "Invalid argument id=#{id} when calling cancel_timer(id)"
    end
    #  Put the handler on the event queue for the current loop (or worker context) so it will be run asynchronously ASAP after this event has
    #  been processed
    # @param [Proc] action
    # return [void]
    def run_on_context(&action)
      if action.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:runOnContext,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,action)
      end
      raise ArgumentError, "Invalid argument action=#{action} when calling run_on_context(action)"
    end
    #  Stop the eventbus and any resource managed by the eventbus.
    # @param [Proc] completionHandler
    # return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    # @overload deployVerticle(identifier)
    #   @param [String] identifier
    # @overload deployVerticle(identifier,completionHandler)
    #   @param [String] identifier
    #   @param [Proc] completionHandler
    # @overload deployVerticle(identifier,options)
    #   @param [String] identifier
    #   @param [Hash] options
    # @overload deployVerticle(identifier,options,completionHandler)
    #   @param [String] identifier
    #   @param [Hash] options
    #   @param [Proc] completionHandler
    # return [void]
    def deploy_verticle(param_1,param_2=nil,&param_3)
      if param_1.class == String
        if param_2.class == Hash
          if param_3.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deployVerticle,Java::java.lang.String.java_class,Java::IoVertxCore::DeploymentOptions.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(param_2)),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deployVerticle,Java::java.lang.String.java_class,Java::IoVertxCore::DeploymentOptions.java_class))).invoke(@j_del,param_1,Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(param_2)))
        end
        if param_2.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deployVerticle,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deployVerticle,Java::java.lang.String.java_class))).invoke(@j_del,param_1)
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling deploy_verticle(param_1,param_2,param_3)"
    end
    # @param [String] deploymentID
    # @param [Proc] completionHandler
    # return [void]
    def undeploy_verticle(deploymentID,&completionHandler)
      if deploymentID.class == String
        if completionHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:undeployVerticle,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,deploymentID,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:undeployVerticle,Java::java.lang.String.java_class))).invoke(@j_del,deploymentID)
      end
      raise ArgumentError, "Invalid argument deploymentID=#{deploymentID} when calling undeploy_verticle(deploymentID,completionHandler)"
    end
    # @return [Set<String>]
    def deployments
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deployments))).invoke(@j_del).to_set.map! { |elt| elt }
    end
    # @param [Proc] blockingCodeHandler
    # @param [Proc] resultHandler
    # return [void]
    def execute_blocking(blockingCodeHandler,&resultHandler)
      if blockingCodeHandler.class == Proc
        if resultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:executeBlocking,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| blockingCodeHandler.call(::Vertx::Future.new(event)) }),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling execute_blocking(blockingCodeHandler,resultHandler)"
      end
      raise ArgumentError, "Invalid argument blockingCodeHandler=#{blockingCodeHandler} when calling execute_blocking(blockingCodeHandler,resultHandler)"
    end
  end
end

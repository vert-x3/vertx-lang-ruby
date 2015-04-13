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
  #  The entry point into the Vert.x Core API.
  #  <p>
  #  You use an instance of this class for functionality including:
  #  <ul>
  #    <li>Creating TCP clients and servers</li>
  #    <li>Creating HTTP clients and servers</li>
  #    <li>Creating DNS clients</li>
  #    <li>Creating Datagram sockets</li>
  #    <li>Setting and cancelling periodic and one-shot timers</li>
  #    <li>Getting a reference to the event bus API</li>
  #    <li>Getting a reference to the file system API</li>
  #    <li>Getting a reference to the shared data API</li>
  #    <li>Deploying and undeploying verticles</li>
  #  </ul>
  #  <p>
  #  Most functionality in Vert.x core is fairly low level.
  #  <p>
  #  To create an instance of this class you can use the static factory methods: {::Vertx::Vertx#vertx},
  #  {::Vertx::Vertx#vertx} and {::Vertx::Vertx#clustered_vertx}.
  #  <p>
  #  Please see the user manual for more detailed usage information.
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
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isMetricsEnabled))).invoke(@j_del)
    end
    #  Creates a non clustered instance using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::Vertx] the instance
    def self.vertx(options=nil)
      if options.class == Hash
        return ::Vertx::Vertx.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:vertx,Java::IoVertxCore::VertxOptions.java_class))).invoke(@j_del,Java::IoVertxCore::VertxOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::Vertx.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:vertx))).invoke(@j_del))
    end
    #  Creates a clustered instance using the specified options.
    #  <p>
    #  The instance is created asynchronously and the resultHandler is called with the result when it is ready.
    # @param [Hash] options the options to use
    # @param [Proc] resultHandler the result handler that will receive the result
    # @return [void]
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
    # @return [::Vertx::Context] The current context or null if no current context
    def self.current_context
      ::Vertx::Context.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Vertx.java_class.declared_method(:currentContext))).invoke(@j_del))
    end
    #  Gets the current context, or creates one if there isn't one
    # @return [::Vertx::Context] The current context (created if didn't exist)
    def get_or_create_context
      ::Vertx::Context.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getOrCreateContext))).invoke(@j_del))
    end
    #  Create a TCP/SSL server using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::NetServer] the server
    def create_net_server(options=nil)
      if options.class == Hash
        return ::Vertx::NetServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createNetServer,Java::IoVertxCoreNet::NetServerOptions.java_class))).invoke(@j_del,Java::IoVertxCoreNet::NetServerOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::NetServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createNetServer))).invoke(@j_del))
    end
    #  Create a TCP/SSL client using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::NetClient] the client
    def create_net_client(options=nil)
      if options.class == Hash
        return ::Vertx::NetClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createNetClient,Java::IoVertxCoreNet::NetClientOptions.java_class))).invoke(@j_del,Java::IoVertxCoreNet::NetClientOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::NetClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createNetClient))).invoke(@j_del))
    end
    #  Create an HTTP/HTTPS server using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::HttpServer] the server
    def create_http_server(options=nil)
      if options.class == Hash
        return ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createHttpServer,Java::IoVertxCoreHttp::HttpServerOptions.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpServerOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::HttpServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createHttpServer))).invoke(@j_del))
    end
    #  Create a HTTP/HTTPS client using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::HttpClient] the client
    def create_http_client(options=nil)
      if options.class == Hash
        return ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createHttpClient,Java::IoVertxCoreHttp::HttpClientOptions.java_class))).invoke(@j_del,Java::IoVertxCoreHttp::HttpClientOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::HttpClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createHttpClient))).invoke(@j_del))
    end
    #  Create a datagram socket using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::DatagramSocket] the socket
    def create_datagram_socket(options=nil)
      if options.class == Hash
        return ::Vertx::DatagramSocket.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createDatagramSocket,Java::IoVertxCoreDatagram::DatagramSocketOptions.java_class))).invoke(@j_del,Java::IoVertxCoreDatagram::DatagramSocketOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      ::Vertx::DatagramSocket.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createDatagramSocket))).invoke(@j_del))
    end
    #  Get the filesystem object. There is a single instance of FileSystem per Vertx instance.
    # @return [::Vertx::FileSystem] the filesystem object
    def file_system
      if @cached_file_system != nil
        return @cached_file_system
      end
      @cached_file_system = ::Vertx::FileSystem.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:fileSystem))).invoke(@j_del))
    end
    #  Get the event bus object. There is a single instance of EventBus per Vertx instance.
    # @return [::Vertx::EventBus] the event bus object
    def event_bus
      if @cached_event_bus != nil
        return @cached_event_bus
      end
      @cached_event_bus = ::Vertx::EventBus.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:eventBus))).invoke(@j_del))
    end
    #  Create a DNS client to connect to a DNS server at the specified host and port
    # @param [Fixnum] port the port
    # @param [String] host the host
    # @return [::Vertx::DnsClient] the DNS client
    def create_dns_client(port,host)
      if port.class == Fixnum
        if host.class == String
          return ::Vertx::DnsClient.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:createDnsClient,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host))
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling create_dns_client(port,host)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling create_dns_client(port,host)"
    end
    #  Get the shared data object. There is a single instance of SharedData per Vertx instance.
    # @return [::Vertx::SharedData] the shared data object
    def shared_data
      if @cached_shared_data != nil
        return @cached_shared_data
      end
      @cached_shared_data = ::Vertx::SharedData.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sharedData))).invoke(@j_del))
    end
    #  Set a one-shot timer to fire after <code>delay</code> milliseconds, at which point <code>handler</code> will be called with
    #  the id of the timer.
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @param [Proc] handler the handler that will be called with the timer ID when the timer fires
    # @return [Fixnum] the unique ID of the timer
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
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @return [::Vertx::TimeoutStream] the timer stream
    def timer_stream(delay)
      if delay.class == Fixnum
        return ::Vertx::TimeoutStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:timerStream,Java::long.java_class))).invoke(@j_del,delay))
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling timer_stream(delay)"
    end
    #  Set a periodic timer to fire every <code>delay</code> milliseconds, at which point <code>handler</code> will be called with
    #  the id of the timer.
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @param [Proc] handler the handler that will be called with the timer ID when the timer fires
    # @return [Fixnum] the unique ID of the timer
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
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @return [::Vertx::TimeoutStream] the periodic stream
    def periodic_stream(delay)
      if delay.class == Fixnum
        return ::Vertx::TimeoutStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:periodicStream,Java::long.java_class))).invoke(@j_del,delay))
      end
      raise ArgumentError, "Invalid argument delay=#{delay} when calling periodic_stream(delay)"
    end
    #  Cancels the timer with the specified <code>id</code>.
    # @param [Fixnum] id The id of the timer to cancel
    # @return [true,false] true if the timer was successfully cancelled, or false if the timer does not exist.
    def cancel_timer(id)
      if id.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:cancelTimer,Java::long.java_class))).invoke(@j_del,id)
      end
      raise ArgumentError, "Invalid argument id=#{id} when calling cancel_timer(id)"
    end
    #  Puts the handler on the event queue for the current context so it will be run asynchronously ASAP after all
    #  preceeding events have been handled.
    # @param [Proc] action - a handler representing the action to execute
    # @return [void]
    def run_on_context(&action)
      if action.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:runOnContext,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,action)
      end
      raise ArgumentError, "Invalid argument action=#{action} when calling run_on_context(action)"
    end
    #  Like {::Vertx::Vertx#close} but the completionHandler will be called when the close is complete
    # @param [Proc] completionHandler The handler will be notified when the close is complete.
    # @return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  Like {::Vertx::Vertx#deploy_verticle} but {::Vertx::DeploymentOptions} are provided to configure the
    #  deployment.
    # @overload deployVerticle(name)
    #   @param [String] name the name.
    # @overload deployVerticle(name,completionHandler)
    #   @param [String] name The identifier
    #   @param [Proc] completionHandler a handler which will be notified when the deployment is complete
    # @overload deployVerticle(name,options)
    #   @param [String] name the name
    #   @param [Hash] options the deployment options.
    # @overload deployVerticle(name,options,completionHandler)
    #   @param [String] name the name
    #   @param [Hash] options the deployment options.
    #   @param [Proc] completionHandler a handler which will be notified when the deployment is complete
    # @return [void]
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
    #  Like {::Vertx::Vertx #undeploy(String)} but the completionHandler will be notified when the undeployment is complete.
    # @param [String] deploymentID the deployment ID
    # @param [Proc] completionHandler a handler which will be notified when the undeployment is complete
    # @return [void]
    def undeploy(deploymentID,&completionHandler)
      if deploymentID.class == String
        if completionHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:undeploy,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,deploymentID,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
        end
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:undeploy,Java::java.lang.String.java_class))).invoke(@j_del,deploymentID)
      end
      raise ArgumentError, "Invalid argument deploymentID=#{deploymentID} when calling undeploy(deploymentID,completionHandler)"
    end
    #  Return a Set of deployment IDs for the currently deployed deploymentIDs.
    # @return [Set<String>] Set of deployment IDs
    def deployment_i_ds
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deploymentIDs))).invoke(@j_del).to_set.map! { |elt| elt }
    end
    #  Is this Vert.x instance clustered?
    # @return [true,false] true if clustered
    def is_clustered
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isClustered))).invoke(@j_del)
    end
    #  Safely execute some blocking code.
    #  <p>
    #  Executes the blocking code in the handler <code>blockingCodeHandler</code> using a thread from the worker pool.
    #  <p>
    #  When the code is complete the handler <code>resultHandler</code> will be called with the result on the original context
    #  (e.g. on the original event loop of the caller).
    #  <p>
    #  A <code>Future</code> instance is passed into <code>blockingCodeHandler</code>. When the blocking code successfully completes,
    #  the handler should call the {::Vertx::Future#complete} or {::Vertx::Future#complete} method, or the {::Vertx::Future#fail}
    #  method if it failed.
    # @param [Proc] blockingCodeHandler handler representing the blocking code to run
    # @param [Proc] resultHandler handler that will be called when the blocking code is complete
    # @return [void]
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

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
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Creates a non clustered instance using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::Vertx] the instance
    def self.vertx(options=nil)
      if !block_given? && options == nil
        return ::Vertx::Vertx.new(Java::IoVertxCore::Vertx.java_method(:vertx, []).call())
      elsif options.class == Hash && !block_given?
        return ::Vertx::Vertx.new(Java::IoVertxCore::Vertx.java_method(:vertx, [Java::IoVertxCore::VertxOptions.java_class]).call(Java::IoVertxCore::VertxOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling vertx(options)"
    end
    #  Creates a clustered instance using the specified options.
    #  <p>
    #  The instance is created asynchronously and the resultHandler is called with the result when it is ready.
    # @param [Hash] options the options to use
    # @yield the result handler that will receive the result
    # @return [void]
    def self.clustered_vertx(options=nil)
      if options.class == Hash && block_given?
        return Java::IoVertxCore::Vertx.java_method(:clusteredVertx, [Java::IoVertxCore::VertxOptions.java_class,Java::IoVertxCore::Handler.java_class]).call(Java::IoVertxCore::VertxOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Vertx.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling clustered_vertx(options)"
    end
    #  Gets the current context
    # @return [::Vertx::Context] The current context or null if no current context
    def self.current_context
      if !block_given?
        return ::Vertx::Context.new(Java::IoVertxCore::Vertx.java_method(:currentContext, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling current_context()"
    end
    #  Gets the current context, or creates one if there isn't one
    # @return [::Vertx::Context] The current context (created if didn't exist)
    def get_or_create_context
      if !block_given?
        return ::Vertx::Context.new(@j_del.java_method(:getOrCreateContext, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling get_or_create_context()"
    end
    #  Create a TCP/SSL server using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::NetServer] the server
    def create_net_server(options=nil)
      if !block_given? && options == nil
        return ::Vertx::NetServer.new(@j_del.java_method(:createNetServer, []).call())
      elsif options.class == Hash && !block_given?
        return ::Vertx::NetServer.new(@j_del.java_method(:createNetServer, [Java::IoVertxCoreNet::NetServerOptions.java_class]).call(Java::IoVertxCoreNet::NetServerOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling create_net_server(options)"
    end
    #  Create a TCP/SSL client using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::NetClient] the client
    def create_net_client(options=nil)
      if !block_given? && options == nil
        return ::Vertx::NetClient.new(@j_del.java_method(:createNetClient, []).call())
      elsif options.class == Hash && !block_given?
        return ::Vertx::NetClient.new(@j_del.java_method(:createNetClient, [Java::IoVertxCoreNet::NetClientOptions.java_class]).call(Java::IoVertxCoreNet::NetClientOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling create_net_client(options)"
    end
    #  Create an HTTP/HTTPS server using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::HttpServer] the server
    def create_http_server(options=nil)
      if !block_given? && options == nil
        return ::Vertx::HttpServer.new(@j_del.java_method(:createHttpServer, []).call())
      elsif options.class == Hash && !block_given?
        return ::Vertx::HttpServer.new(@j_del.java_method(:createHttpServer, [Java::IoVertxCoreHttp::HttpServerOptions.java_class]).call(Java::IoVertxCoreHttp::HttpServerOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling create_http_server(options)"
    end
    #  Create a HTTP/HTTPS client using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::HttpClient] the client
    def create_http_client(options=nil)
      if !block_given? && options == nil
        return ::Vertx::HttpClient.new(@j_del.java_method(:createHttpClient, []).call())
      elsif options.class == Hash && !block_given?
        return ::Vertx::HttpClient.new(@j_del.java_method(:createHttpClient, [Java::IoVertxCoreHttp::HttpClientOptions.java_class]).call(Java::IoVertxCoreHttp::HttpClientOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling create_http_client(options)"
    end
    #  Create a datagram socket using the specified options
    # @param [Hash] options the options to use
    # @return [::Vertx::DatagramSocket] the socket
    def create_datagram_socket(options=nil)
      if !block_given? && options == nil
        return ::Vertx::DatagramSocket.new(@j_del.java_method(:createDatagramSocket, []).call())
      elsif options.class == Hash && !block_given?
        return ::Vertx::DatagramSocket.new(@j_del.java_method(:createDatagramSocket, [Java::IoVertxCoreDatagram::DatagramSocketOptions.java_class]).call(Java::IoVertxCoreDatagram::DatagramSocketOptions.new(::Vertx::Util::Utils.to_json_object(options))))
      end
      raise ArgumentError, "Invalid arguments when calling create_datagram_socket(options)"
    end
    #  Get the filesystem object. There is a single instance of FileSystem per Vertx instance.
    # @return [::Vertx::FileSystem] the filesystem object
    def file_system
      if !block_given?
        if @cached_file_system != nil
          return @cached_file_system
        end
        return @cached_file_system = ::Vertx::FileSystem.new(@j_del.java_method(:fileSystem, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling file_system()"
    end
    #  Get the event bus object. There is a single instance of EventBus per Vertx instance.
    # @return [::Vertx::EventBus] the event bus object
    def event_bus
      if !block_given?
        if @cached_event_bus != nil
          return @cached_event_bus
        end
        return @cached_event_bus = ::Vertx::EventBus.new(@j_del.java_method(:eventBus, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling event_bus()"
    end
    #  Create a DNS client to connect to a DNS server at the specified host and port
    # @param [Fixnum] port the port
    # @param [String] host the host
    # @return [::Vertx::DnsClient] the DNS client
    def create_dns_client(port=nil,host=nil)
      if port.class == Fixnum && host.class == String && !block_given?
        return ::Vertx::DnsClient.new(@j_del.java_method(:createDnsClient, [Java::int.java_class,Java::java.lang.String.java_class]).call(port,host))
      end
      raise ArgumentError, "Invalid arguments when calling create_dns_client(port,host)"
    end
    #  Get the shared data object. There is a single instance of SharedData per Vertx instance.
    # @return [::Vertx::SharedData] the shared data object
    def shared_data
      if !block_given?
        if @cached_shared_data != nil
          return @cached_shared_data
        end
        return @cached_shared_data = ::Vertx::SharedData.new(@j_del.java_method(:sharedData, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling shared_data()"
    end
    #  Set a one-shot timer to fire after <code>delay</code> milliseconds, at which point <code>handler</code> will be called with
    #  the id of the timer.
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @yield the handler that will be called with the timer ID when the timer fires
    # @return [Fixnum] the unique ID of the timer
    def set_timer(delay=nil)
      if delay.class == Fixnum && block_given?
        return @j_del.java_method(:setTimer, [Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(delay,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling set_timer(delay)"
    end
    #  Returns a one-shot timer as a read stream. The timer will be fired after <code>delay</code> milliseconds after
    #  the  has been called.
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @return [::Vertx::TimeoutStream] the timer stream
    def timer_stream(delay=nil)
      if delay.class == Fixnum && !block_given?
        return ::Vertx::TimeoutStream.new(@j_del.java_method(:timerStream, [Java::long.java_class]).call(delay))
      end
      raise ArgumentError, "Invalid arguments when calling timer_stream(delay)"
    end
    #  Set a periodic timer to fire every <code>delay</code> milliseconds, at which point <code>handler</code> will be called with
    #  the id of the timer.
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @yield the handler that will be called with the timer ID when the timer fires
    # @return [Fixnum] the unique ID of the timer
    def set_periodic(delay=nil)
      if delay.class == Fixnum && block_given?
        return @j_del.java_method(:setPeriodic, [Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(delay,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling set_periodic(delay)"
    end
    #  Returns a periodic timer as a read stream. The timer will be fired every <code>delay</code> milliseconds after
    #  the  has been called.
    # @param [Fixnum] delay the delay in milliseconds, after which the timer will fire
    # @return [::Vertx::TimeoutStream] the periodic stream
    def periodic_stream(delay=nil)
      if delay.class == Fixnum && !block_given?
        return ::Vertx::TimeoutStream.new(@j_del.java_method(:periodicStream, [Java::long.java_class]).call(delay))
      end
      raise ArgumentError, "Invalid arguments when calling periodic_stream(delay)"
    end
    #  Cancels the timer with the specified <code>id</code>.
    # @param [Fixnum] id The id of the timer to cancel
    # @return [true,false] true if the timer was successfully cancelled, or false if the timer does not exist.
    def cancel_timer(id=nil)
      if id.class == Fixnum && !block_given?
        return @j_del.java_method(:cancelTimer, [Java::long.java_class]).call(id)
      end
      raise ArgumentError, "Invalid arguments when calling cancel_timer(id)"
    end
    #  Puts the handler on the event queue for the current context so it will be run asynchronously ASAP after all
    #  preceeding events have been handled.
    # @yield - a handler representing the action to execute
    # @return [void]
    def run_on_context
      if block_given?
        return @j_del.java_method(:runOnContext, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
      end
      raise ArgumentError, "Invalid arguments when calling run_on_context()"
    end
    #  Like {::Vertx::Vertx#close} but the completionHandler will be called when the close is complete
    # @yield The handler will be notified when the close is complete.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      elsif block_given?
        return @j_del.java_method(:close, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  Like {::Vertx::Vertx#deploy_verticle} but {::Vertx::DeploymentOptions} are provided to configure the
    #  deployment.
    # @param [String] name the name
    # @param [Hash] options the deployment options.
    # @yield a handler which will be notified when the deployment is complete
    # @return [void]
    def deploy_verticle(name=nil,options=nil)
      if name.class == String && !block_given? && options == nil
        return @j_del.java_method(:deployVerticle, [Java::java.lang.String.java_class]).call(name)
      elsif name.class == String && block_given? && options == nil
        return @j_del.java_method(:deployVerticle, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      elsif name.class == String && options.class == Hash && !block_given?
        return @j_del.java_method(:deployVerticle, [Java::java.lang.String.java_class,Java::IoVertxCore::DeploymentOptions.java_class]).call(name,Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(options)))
      elsif name.class == String && options.class == Hash && block_given?
        return @j_del.java_method(:deployVerticle, [Java::java.lang.String.java_class,Java::IoVertxCore::DeploymentOptions.java_class,Java::IoVertxCore::Handler.java_class]).call(name,Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling deploy_verticle(name,options)"
    end
    #  Like {::Vertx::Vertx #undeploy(String)} but the completionHandler will be notified when the undeployment is complete.
    # @param [String] deploymentID the deployment ID
    # @yield a handler which will be notified when the undeployment is complete
    # @return [void]
    def undeploy(deploymentID=nil)
      if deploymentID.class == String && !block_given?
        return @j_del.java_method(:undeploy, [Java::java.lang.String.java_class]).call(deploymentID)
      elsif deploymentID.class == String && block_given?
        return @j_del.java_method(:undeploy, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(deploymentID,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling undeploy(deploymentID)"
    end
    #  Return a Set of deployment IDs for the currently deployed deploymentIDs.
    # @return [Set<String>] Set of deployment IDs
    def deployment_i_ds
      if !block_given?
        return @j_del.java_method(:deploymentIDs, []).call().to_set.map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling deployment_i_ds()"
    end
    #  Is this Vert.x instance clustered?
    # @return [true,false] true if clustered
    def is_clustered
      if !block_given?
        return @j_del.java_method(:isClustered, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_clustered()"
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
    # @yield handler that will be called when the blocking code is complete
    # @return [void]
    def execute_blocking(blockingCodeHandler=nil)
      if blockingCodeHandler.class == Proc && block_given?
        return @j_del.java_method(:executeBlocking, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| blockingCodeHandler.call(::Vertx::Future.new(event)) }),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling execute_blocking(blockingCodeHandler)"
    end
  end
end

require 'vertx/vertx'
require 'vertx/future'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Context
module Vertx
  #  The execution context of a {Proc} execution.
  #  <p>
  #  When Vert.x provides an event to a handler or calls the start or stop methods of a {Nil},
  #  the execution is associated with a <code>Context</code>.
  #  <p>
  #  Usually a context is an *event-loop context* and is tied to a specific event loop thread. So executions for that
  #  context always occur on that exact same event loop thread.
  #  <p>
  #  In the case of worker verticles and running inline blocking code a worker context will be associated with the execution
  #  which will use a thread from the worker thread pool.
  #  <p>
  #  When a handler is set by a thread associated with a specific context, the Vert.x will guarantee that when that handler
  #  is executed, that execution will be associated with the same context.
  #  <p>
  #  If a handler is set by a thread not associated with a context (i.e. a non Vert.x thread). Then a new context will
  #  be created for that handler.
  #  <p>
  #  In other words, a context is propagated.
  #  <p>
  #  This means that when a verticle is deployed, any handlers it sets will be associated with the same context - the context
  #  of the verticle.
  #  <p>
  #  This means (in the case of a standard verticle) that the verticle code will always be executed with the exact same
  #  thread, so you don't have to worry about multi-threaded acccess to the verticle state and you can code your application
  #  as single threaded.
  #  <p>
  #  This class also allows arbitrary data to be {::Vertx::Context#put} and {::Vertx::Context#get} on the context so it can be shared easily
  #  amongst different handlers of, for example, a verticle instance.
  #  <p>
  #  This class also provides {::Vertx::Context#run_on_context} which allows an action to be executed asynchronously using the same context.
  class Context
    # @private
    # @param j_del [::Vertx::Context] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Context] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      Context.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCore::Context.java_class
    end
    #  Is the current thread a worker thread?
    #  <p>
    #  NOTE! This is not always the same as calling {::Vertx::Context#is_worker_context}. If you are running blocking code
    #  from an event loop context, then this will return true but {::Vertx::Context#is_worker_context} will return false.
    # @return [true,false] true if current thread is a worker thread, false otherwise
    def self.on_worker_thread?
      if !block_given?
        return Java::IoVertxCore::Context.java_method(:isOnWorkerThread, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling on_worker_thread?()"
    end
    #  Is the current thread an event thread?
    #  <p>
    #  NOTE! This is not always the same as calling {::Vertx::Context#is_event_loop_context}. If you are running blocking code
    #  from an event loop context, then this will return false but {::Vertx::Context#is_event_loop_context} will return true.
    # @return [true,false] true if current thread is a worker thread, false otherwise
    def self.on_event_loop_thread?
      if !block_given?
        return Java::IoVertxCore::Context.java_method(:isOnEventLoopThread, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling on_event_loop_thread?()"
    end
    #  Is the current thread a Vert.x thread? That's either a worker thread or an event loop thread
    # @return [true,false] true if current thread is a Vert.x thread, false otherwise
    def self.on_vertx_thread?
      if !block_given?
        return Java::IoVertxCore::Context.java_method(:isOnVertxThread, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling on_vertx_thread?()"
    end
    #  Run the specified action asynchronously on the same context, some time after the current execution has completed.
    # @yield the action to run
    # @return [void]
    def run_on_context
      if block_given?
        return @j_del.java_method(:runOnContext, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
      end
      raise ArgumentError, "Invalid arguments when calling run_on_context()"
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
    # @param [true,false] ordered if true then if executeBlocking is called several times on the same context, the executions for that context will be executed serially, not in parallel. if false then they will be no ordering guarantees
    # @yield handler that will be called when the blocking code is complete
    # @return [void]
    def execute_blocking(blockingCodeHandler=nil,ordered=nil)
      if blockingCodeHandler.class == Proc && block_given? && ordered == nil
        return @j_del.java_method(:executeBlocking, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| blockingCodeHandler.call(::Vertx::Util::Utils.safe_create(event,::Vertx::Future, nil)) }),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      elsif blockingCodeHandler.class == Proc && (ordered.class == TrueClass || ordered.class == FalseClass) && block_given?
        return @j_del.java_method(:executeBlocking, [Java::IoVertxCore::Handler.java_class,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| blockingCodeHandler.call(::Vertx::Util::Utils.safe_create(event,::Vertx::Future, nil)) }),ordered,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling execute_blocking(blockingCodeHandler,ordered)"
    end
    #  If the context is associated with a Verticle deployment, this returns the deployment ID of that deployment.
    # @return [String] the deployment ID of the deployment or null if not a Verticle deployment
    def deployment_id
      if !block_given?
        return @j_del.java_method(:deploymentID, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling deployment_id()"
    end
    #  If the context is associated with a Verticle deployment, this returns the configuration that was specified when
    #  the verticle was deployed.
    # @return [Hash{String => Object}] the configuration of the deployment or null if not a Verticle deployment
    def config
      if !block_given?
        return @j_del.java_method(:config, []).call() != nil ? JSON.parse(@j_del.java_method(:config, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling config()"
    end
    #  The process args
    # @return [Array<String>]
    def process_args
      if !block_given?
        return @j_del.java_method(:processArgs, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling process_args()"
    end
    #  Is the current context an event loop context?
    #  <p>
    #  NOTE! when running blocking code using {::Vertx::Vertx#execute_blocking} from a
    #  standard (not worker) verticle, the context will still an event loop context and this 
    #  will return true.
    # @return [true,false] true if false otherwise
    def event_loop_context?
      if !block_given?
        return @j_del.java_method(:isEventLoopContext, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling event_loop_context?()"
    end
    #  Is the current context a worker context?
    #  <p>
    #  NOTE! when running blocking code using {::Vertx::Vertx#execute_blocking} from a
    #  standard (not worker) verticle, the context will still an event loop context and this 
    #  will return false.
    # @return [true,false] true if the current context is a worker context, false otherwise
    def worker_context?
      if !block_given?
        return @j_del.java_method(:isWorkerContext, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling worker_context?()"
    end
    #  Is the current context a multi-threaded worker context?
    # @return [true,false] true if the current context is a multi-threaded worker context, false otherwise
    def multi_threaded_worker_context?
      if !block_given?
        return @j_del.java_method(:isMultiThreadedWorkerContext, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling multi_threaded_worker_context?()"
    end
    #  Get some data from the context.
    # @param [String] key the key of the data
    # @return [Object] the data
    def get(key=nil)
      if key.class == String && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:get, [Java::java.lang.String.java_class]).call(key))
      end
      raise ArgumentError, "Invalid arguments when calling get(key)"
    end
    #  Put some data in the context.
    #  <p>
    #  This can be used to share data between different handlers that share a context
    # @param [String] key the key of the data
    # @param [Object] value the data
    # @return [void]
    def put(key=nil,value=nil)
      if key.class == String && ::Vertx::Util::unknown_type.accept?(value) && !block_given?
        return @j_del.java_method(:put, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(key,::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid arguments when calling put(key,value)"
    end
    #  Remove some data from the context.
    # @param [String] key the key to remove
    # @return [true,false] true if removed successfully, false otherwise
    def remove?(key=nil)
      if key.class == String && !block_given?
        return @j_del.java_method(:remove, [Java::java.lang.String.java_class]).call(key)
      end
      raise ArgumentError, "Invalid arguments when calling remove?(key)"
    end
    # @return [::Vertx::Vertx] The Vertx instance that created the context
    def owner
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:owner, []).call(),::Vertx::Vertx)
      end
      raise ArgumentError, "Invalid arguments when calling owner()"
    end
    # @return [Fixnum] the number of instances of the verticle that were deployed in the deployment (if any) related to this context
    def get_instance_count
      if !block_given?
        return @j_del.java_method(:getInstanceCount, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_instance_count()"
    end
    #  Set an exception handler called when the context runs an action throwing an uncaught throwable.<p/>
    # 
    #  When this handler is called, {::Vertx::Vertx#current_context} will return this context.
    # @yield the exception handler
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
  end
end

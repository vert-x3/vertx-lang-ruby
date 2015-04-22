require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Context
module Vertx
  #  The execution context of a {::Vertx::Handler} execution.
  #  <p>
  #  When Vert.x provides an event to a handler or calls the start or stop methods of a {::Vertx::Verticle},
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
    #  Run the specified action asynchronously on the same context, some time after the current execution has completed.
    # @yield the action to run
    # @return [void]
    def run_on_context
      if block_given?
        return @j_del.java_method(:runOnContext, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
      end
      raise ArgumentError, "Invalid arguments when calling run_on_context()"
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
    #  @return true if this is an event loop context, false otherwise
    # @return [true,false]
    def is_event_loop_context
      if !block_given?
        return @j_del.java_method(:isEventLoopContext, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_event_loop_context()"
    end
    #  @return true if this is an worker context, false otherwise
    # @return [true,false]
    def is_worker
      if !block_given?
        return @j_del.java_method(:isWorker, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_worker()"
    end
    #  @return true if this is a multi-threaded worker context, false otherwise
    # @return [true,false]
    def is_multi_threaded
      if !block_given?
        return @j_del.java_method(:isMultiThreaded, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_multi_threaded()"
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
      if key.class == String && (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && !block_given?
        return @j_del.java_method(:put, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(key,::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid arguments when calling put(key,value)"
    end
    #  Remove some data from the context.
    # @param [String] key the key to remove
    # @return [true,false] true if removed successfully, false otherwise
    def remove(key=nil)
      if key.class == String && !block_given?
        return @j_del.java_method(:remove, [Java::java.lang.String.java_class]).call(key)
      end
      raise ArgumentError, "Invalid arguments when calling remove(key)"
    end
  end
end

require 'vertx/future'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.WorkerExecutor
module Vertx
  #  An executor for executing blocking code in Vert.x .<p>
  # 
  #  It provides the same <code>executeBlocking</code> operation than {::Vertx::Context} and
  #  {::Vertx::Vertx} but on a separate worker pool.<p>
  class WorkerExecutor
    # @private
    # @param j_del [::Vertx::WorkerExecutor] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WorkerExecutor] the underlying java delegate
    def j_del
      @j_del
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
    #  <p>
    #  In the <code>blockingCodeHandler</code> the current context remains the original context and therefore any task
    #  scheduled in the <code>blockingCodeHandler</code> will be executed on the this context and not on the worker thread.
    # @param [Proc] blockingCodeHandler handler representing the blocking code to run
    # @param [true,false] ordered if true then if executeBlocking is called several times on the same context, the executions for that context will be executed serially, not in parallel. if false then they will be no ordering guarantees
    # @yield handler that will be called when the blocking code is complete
    # @return [void]
    def execute_blocking(blockingCodeHandler=nil,ordered=nil)
      if blockingCodeHandler.class == Proc && block_given? && ordered == nil
        return @j_del.java_method(:executeBlocking, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| blockingCodeHandler.call(::Vertx::Util::Utils.safe_create(event,::Vertx::Future)) }),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      elsif blockingCodeHandler.class == Proc && (ordered.class == TrueClass || ordered.class == FalseClass) && block_given?
        return @j_del.java_method(:executeBlocking, [Java::IoVertxCore::Handler.java_class,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| blockingCodeHandler.call(::Vertx::Util::Utils.safe_create(event,::Vertx::Future)) }),ordered,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling execute_blocking(blockingCodeHandler,ordered)"
    end
    #  Close the executor.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end

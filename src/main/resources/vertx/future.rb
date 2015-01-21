require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Future<T>
module Vertx
  class Future
    # @private
    # @param j_del [::Vertx::Future] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Future] the underlying java delegate
    def j_del
      @j_del
    end
    # @return [::Vertx::Future]
    def self.future
      ::Vertx::Future.new(Java::IoVertxCore::Future.future)
    end
    # @param [Object] result
    # @return [::Vertx::Future]
    def self.succeeded_future(result=nil)
      if result.class == String  ||result.class == Hash || result.class == Array
        return ::Vertx::Future.new(Java::IoVertxCore::Future.succeededFuture(::Vertx::Util::Utils.to_object(result)))
      end
      ::Vertx::Future.new(Java::IoVertxCore::Future.succeededFuture)
    end
    # @param [String] failureMessage
    # @return [::Vertx::Future]
    def self.failed_future(failureMessage)
      if failureMessage.class == String
        return ::Vertx::Future.new(Java::IoVertxCore::Future.failedFuture(failureMessage))
      end
      raise ArgumentError, "Invalid argument failureMessage=#{failureMessage} when calling failed_future(failureMessage)"
    end
    #  Has it completed?
    # @return [true,false]
    def is_complete
      @j_del.isComplete
    end
    #  Set a handler for the result. It will get called when it's complete
    # @param [Proc] handler
    # return [void]
    def set_handler(&handler)
      if handler.class == Proc
        return @j_del.setHandler((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling set_handler(handler)"
    end
    #  Set the result. Any handler will be called, if there is one
    # @param [Object] result
    # return [void]
    def complete(result=nil)
      if result.class == String  ||result.class == Hash || result.class == Array
        return @j_del.complete(::Vertx::Util::Utils.to_object(result))
      end
      @j_del.complete
    end
    # @param [String] failureMessage
    # return [void]
    def fail(failureMessage)
      if failureMessage.class == String
        return @j_del.fail(failureMessage)
      end
      raise ArgumentError, "Invalid argument failureMessage=#{failureMessage} when calling fail(failureMessage)"
    end
  end
end

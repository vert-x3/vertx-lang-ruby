require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Future<T>
module Vertx
  #  Represents the result of an action that may, or may not, have occurred yet.
  #  <p>
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
    #  Create a future that hasn't completed yet
    # @return [::Vertx::Future]
    def self.future
      ::Vertx::Future.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Future.java_class.declared_method(:future))).invoke(@j_del))
    end
    #  Created a succeeded future with the specified result.
    # @param [Object] result the result
    # @return [::Vertx::Future]
    def self.succeeded_future(result=nil)
      if result.class == String  ||result.class == Hash || result.class == Array
        return ::Vertx::Future.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Future.java_class.declared_method(:succeededFuture,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(result)))
      end
      ::Vertx::Future.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Future.java_class.declared_method(:succeededFuture))).invoke(@j_del))
    end
    #  Create a failed future with the specified failure message.
    # @param [String] failureMessage the failure message
    # @return [::Vertx::Future]
    def self.failed_future(failureMessage)
      if failureMessage.class == String
        return ::Vertx::Future.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCore::Future.java_class.declared_method(:failedFuture,Java::java.lang.String.java_class))).invoke(@j_del,failureMessage))
      end
      raise ArgumentError, "Invalid argument failureMessage=#{failureMessage} when calling failed_future(failureMessage)"
    end
    #  Has the future completed?
    #  <p>
    #  It's completed if it's either succeeded or failed.
    # @return [true,false]
    def is_complete
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isComplete))).invoke(@j_del)
    end
    #  Set a handler for the result.
    #  <p>
    #  If the future has already been completed it will be called immediately. Otherwise it will be called when the
    #  future is completed.
    # @param [Proc] handler the Handler that will be called with the result
    # @return [void]
    def set_handler(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling set_handler(handler)"
    end
    #  Set the result. Any handler will be called, if there is one, and the future will be marked as completed.
    # @param [Object] result the result
    # @return [void]
    def complete(result=nil)
      if result.class == String  ||result.class == Hash || result.class == Array
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:complete,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(result))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:complete))).invoke(@j_del)
    end
    #  Set the failure. Any handler will be called, if there is one, and the future will be marked as completed.
    # @param [String] failureMessage the failure message
    # @return [void]
    def fail(failureMessage)
      if failureMessage.class == String
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:fail,Java::java.lang.String.java_class))).invoke(@j_del,failureMessage)
      end
      raise ArgumentError, "Invalid argument failureMessage=#{failureMessage} when calling fail(failureMessage)"
    end
  end
end

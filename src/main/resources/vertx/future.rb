require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Future<T>
module Vertx
  class Future
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def self.future()
      Vertx::Future.new(Java::IoVertxCore::Future.future)
    end
    def self.succeeded_future(result=nil)
      if result != nil && (result.class == String  ||result.class == Hash || result.class == Array)
        return Vertx::Future.new(Java::IoVertxCore::Future.succeededFuture(Vertx::Util::Utils.to_object(result)))
      end
      Vertx::Future.new(Java::IoVertxCore::Future.succeededFuture)
    end
    def self.failed_future(failureMessage)
      if failureMessage != nil && failureMessage.class == String
        return Vertx::Future.new(Java::IoVertxCore::Future.failedFuture(failureMessage))
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_complete()
      @j_del.isComplete
    end
    def set_handler(&handler)
      if handler != nil && handler.class == Proc
        return @j_del.setHandler((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def complete(result=nil)
      if result != nil && (result.class == String  ||result.class == Hash || result.class == Array)
        return @j_del.complete(Vertx::Util::Utils.to_object(result))
      end
      @j_del.complete
    end
    def fail(failureMessage)
      if failureMessage != nil && failureMessage.class == String
        return @j_del.fail(failureMessage)
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

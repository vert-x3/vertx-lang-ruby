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
    def future()
      return Vertx::Future.new(@j_del.future())
    end
    def succeeded_future(result=nil)
      if result != nil && (result.class == String  ||result.class == Hash || result.class == Array)
        return Vertx::Future.new(@j_del.succeededFuture(Vertx::Util::Utils.to_object(result)))
      end
      return Vertx::Future.new(@j_del.succeededFuture())
    end
    def failed_future(failure_message)
      if failure_message != nil && failure_message.class == String
        return Vertx::Future.new(@j_del.failedFuture(failure_message))
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_complete()
      return @j_del.isComplete()
    end
    def set_handler(handler)
      if handler != nil && handler.class == Proc
        return @j_del.setHandler((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def complete(result=nil)
      if result != nil && (result.class == String  ||result.class == Hash || result.class == Array)
        return @j_del.complete(Vertx::Util::Utils.to_object(result))
      end
      return @j_del.complete()
    end
    def fail(failure_message)
      if failure_message != nil && failure_message.class == String
        return @j_del.fail(failure_message)
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

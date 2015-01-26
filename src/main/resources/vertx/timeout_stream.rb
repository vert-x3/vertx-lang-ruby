require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.TimeoutStream
module Vertx
  #  A timeout stream triggered by a timer, the {::Vertx::Handler} will be call when the timer is fired,
  #  it can be once or several times depending on the nature of the timer related to this stream. The
  #   will be called after the timer handler has been called.<p>
  # 
  #  Pausing the timer inhibits the timer shots until the stream is resumed. Setting a null handler callback cancels
  #  the timer.
  class TimeoutStream
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::TimeoutStream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::TimeoutStream] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    #  Cancels the timeout. Note this has the same effect as calling {::Vertx::TimeoutStream#handler} with a null
    #  argument.
    # return [void]
    def cancel
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:cancel))).invoke(@j_del)
    end
  end
end

require 'vertx/stream_base'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.ReadStream<T>
module Vertx
  module ReadStream
    include Vertx::StreamBase
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Util::Utils.from_object(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    def pause()
      @j_del.pause
      self
    end
    def resume()
      @j_del.resume
      self
    end
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
  end
  class ReadStreamImpl
    include ReadStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
  end
end

require 'vertx/stream_base'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.WriteStream<T>
module Vertx
  module WriteStream
    include ::Vertx::StreamBase
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    #  Write some data to the stream. The data is put on an internal write queue, and the write actually happens
    #  asynchronously. To avoid running out of memory by putting too much on the write queue,
    #  check the {::Vertx::WriteStream#write_queue_full} method before writing. This is done automatically if using a {::Vertx::Pump}.
    # @param [Object] data
    # return [self]
    def write(data)
      if data.class == String  ||data.class == Hash || data.class == Array
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(data))
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    #  Set the maximum size of the write queue to <code>maxSize</code>. You will still be able to write to the stream even
    #  if there is more than <code>maxSize</code> bytes in the write queue. This is used as an indicator by classes such as
    #  <code>Pump</code> to provide flow control.
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::WriteStream#set_write_queue_max_size}
    # @return [true,false]
    def write_queue_full
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeQueueFull))).invoke(@j_del)
    end
    #  Set a drain handler on the stream. If the write queue is full, then the handler will be called when the write
    #  queue has been reduced to maxSize / 2. See {::Vertx::Pump} for an example of this being used.
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:drainHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
  end
  class WriteStreamImpl
    include WriteStream
    # @private
    # @param j_del [::Vertx::WriteStream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WriteStream] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.Pump
module Vertx
  #  Pumps data from a {::Vertx::ReadStream} to a {::Vertx::WriteStream} and performs flow control where necessary to
  #  prevent the write stream buffer from getting overfull.<p>
  #  Instances of this class read bytes from a {::Vertx::ReadStream} and write them to a {::Vertx::WriteStream}. If data
  #  can be read faster than it can be written this could result in the write queue of the {::Vertx::WriteStream} growing
  #  without bound, eventually causing it to exhaust all available RAM.<p>
  #  To prevent this, after each write, instances of this class check whether the write queue of the {::Vertx::WriteStream} is full, and if so, the {::Vertx::ReadStream} is paused, and a <code>drainHandler</code> is set on the
  #  {::Vertx::WriteStream}. When the {::Vertx::WriteStream} has processed half of its backlog, the <code>drainHandler</code> will be
  #  called, which results in the pump resuming the {::Vertx::ReadStream}.<p>
  #  This class can be used to pump from any {::Vertx::ReadStream} to any {::Vertx::WriteStream},
  #  e.g. from an {::Vertx::HttpServerRequest} to an {::Vertx::AsyncFile},
  #  or from {::Vertx::NetSocket} to a {::Vertx::WebSocket}.<p>
  # 
  #  Instances of this class are not thread-safe.<p>
  class Pump
    # @private
    # @param j_del [::Vertx::Pump] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Pump] the underlying java delegate
    def j_del
      @j_del
    end
    #  Create a new <code>Pump</code> with the given <code>ReadStream</code> and <code>WriteStream</code> and
    #  <code>writeQueueMaxSize</code>
    # @param [::Vertx::ReadStream] rs
    # @param [::Vertx::WriteStream] ws
    # @param [Fixnum] writeQueueMaxSize
    # @return [::Vertx::Pump]
    def self.pump(rs,ws,writeQueueMaxSize=nil)
      if rs.class.method_defined?(:j_del)
        if ws.class.method_defined?(:j_del)
          if writeQueueMaxSize.class == Fixnum
            return ::Vertx::Pump.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreStreams::Pump.java_class.declared_method(:pump,Java::IoVertxCoreStreams::ReadStream.java_class,Java::IoVertxCoreStreams::WriteStream.java_class,Java::int.java_class))).invoke(@j_del,rs.j_del,ws.j_del,writeQueueMaxSize))
          end
          return ::Vertx::Pump.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreStreams::Pump.java_class.declared_method(:pump,Java::IoVertxCoreStreams::ReadStream.java_class,Java::IoVertxCoreStreams::WriteStream.java_class))).invoke(@j_del,rs.j_del,ws.j_del))
        end
        raise ArgumentError, "Invalid argument ws=#{ws} when calling pump(rs,ws,writeQueueMaxSize)"
      end
      raise ArgumentError, "Invalid argument rs=#{rs} when calling pump(rs,ws,writeQueueMaxSize)"
    end
    #  Set the write queue max size to <code>maxSize</code>
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    #  Start the Pump. The Pump can be started and stopped multiple times.
    # return [self]
    def start
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:start))).invoke(@j_del)
      self
    end
    #  Stop the Pump. The Pump can be started and stopped multiple times.
    # return [self]
    def stop
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:stop))).invoke(@j_del)
      self
    end
    #  Return the total number of items pumped by this pump.
    # @return [Fixnum]
    def number_pumped
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:numberPumped))).invoke(@j_del)
    end
  end
end

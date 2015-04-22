require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.streams.Pump
module Vertx
  #  Pumps data from a {::Vertx::ReadStream} to a {::Vertx::WriteStream} and performs flow control where necessary to
  #  prevent the write stream buffer from getting overfull.
  #  <p>
  #  Instances of this class read items from a {::Vertx::ReadStream} and write them to a {::Vertx::WriteStream}. If data
  #  can be read faster than it can be written this could result in the write queue of the {::Vertx::WriteStream} growing
  #  without bound, eventually causing it to exhaust all available RAM.
  #  <p>
  #  To prevent this, after each write, instances of this class check whether the write queue of the {::Vertx::WriteStream} is full, and if so, the {::Vertx::ReadStream} is paused, and a <code>drainHandler</code> is set on the
  #  {::Vertx::WriteStream}.
  #  <p>
  #  When the {::Vertx::WriteStream} has processed half of its backlog, the <code>drainHandler</code> will be
  #  called, which results in the pump resuming the {::Vertx::ReadStream}.
  #  <p>
  #  This class can be used to pump from any {::Vertx::ReadStream} to any {::Vertx::WriteStream},
  #  e.g. from an {::Vertx::HttpServerRequest} to an {::Vertx::AsyncFile},
  #  or from {::Vertx::NetSocket} to a {::Vertx::WebSocket}.
  #  <p>
  #  Please see the documentation for more information.
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
    # @param [::Vertx::ReadStream] rs the read stream
    # @param [::Vertx::WriteStream] ws the write stream
    # @param [Fixnum] writeQueueMaxSize the max size of the write queue
    # @return [::Vertx::Pump] the pump
    def self.pump(rs=nil,ws=nil,writeQueueMaxSize=nil)
      if rs.class.method_defined?(:j_del) && ws.class.method_defined?(:j_del) && !block_given? && writeQueueMaxSize == nil
        return ::Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.java_method(:pump, [Java::IoVertxCoreStreams::ReadStream.java_class,Java::IoVertxCoreStreams::WriteStream.java_class]).call(rs.j_del,ws.j_del))
      elsif rs.class.method_defined?(:j_del) && ws.class.method_defined?(:j_del) && writeQueueMaxSize.class == Fixnum && !block_given?
        return ::Vertx::Pump.new(Java::IoVertxCoreStreams::Pump.java_method(:pump, [Java::IoVertxCoreStreams::ReadStream.java_class,Java::IoVertxCoreStreams::WriteStream.java_class,Java::int.java_class]).call(rs.j_del,ws.j_del,writeQueueMaxSize))
      end
      raise ArgumentError, "Invalid arguments when calling pump(rs,ws,writeQueueMaxSize)"
    end
    #  Set the write queue max size to <code>maxSize</code>
    # @param [Fixnum] maxSize the max size
    # @return [self]
    def set_write_queue_max_size(maxSize=nil)
      if maxSize.class == Fixnum && !block_given?
        @j_del.java_method(:setWriteQueueMaxSize, [Java::int.java_class]).call(maxSize)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_write_queue_max_size(maxSize)"
    end
    #  Start the Pump. The Pump can be started and stopped multiple times.
    # @return [self]
    def start
      if !block_given?
        @j_del.java_method(:start, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling start()"
    end
    #  Stop the Pump. The Pump can be started and stopped multiple times.
    # @return [self]
    def stop
      if !block_given?
        @j_del.java_method(:stop, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling stop()"
    end
    #  Return the total number of items pumped by this pump.
    # @return [Fixnum]
    def number_pumped
      if !block_given?
        return @j_del.java_method(:numberPumped, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling number_pumped()"
    end
  end
end

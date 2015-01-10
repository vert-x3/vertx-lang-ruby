include_class 'io.vertx.core.datagram.PacketWritestream'
include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.datagram.DatagramPacket'
include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.net.SocketAddress'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramSocket
module Vertx
  class DatagramSocket
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return nil
    end
    def send(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil)
        if param_1 != nil && param_1.class.method_defined?(:j_del)
            if param_2 != nil && param_2.class == Fixnum
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.send(param_1.j_del,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                      return self
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == Fixnum
                    if param_4 != nil && param_4.class == String
                        if param_5 != nil && param_5.class == Proc
                          @j_del.send(param_1,param_2,param_3,param_4,(Proc.new { |ar| param_5.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                          return self
                        end
                      raise ArgumentError, 'dispatch error'
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
            if param_2 != nil && param_2.class == Fixnum
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.send(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                      return self
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def sender(port,host)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          return Vertx::PacketWritestream.new(@j_del.sender(port,host))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def close(handler=nil)
      if handler != nil && handler.class == Proc
        return @j_del.close((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      return @j_del.close()
    end
    def local_address()
      return Vertx::SocketAddress.new(@j_del.localAddress())
    end
    def listen_multicast_group(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == Proc
              @j_del.listenMulticastGroup(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.listenMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                      return self
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def unlisten_multicast_group(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == Proc
              @j_del.unlistenMulticastGroup(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.unlistenMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                      return self
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def block_multicast_group(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == Proc
                  @j_del.blockMulticastGroup(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                  return self
                end
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.blockMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                      return self
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def listen(port,host,handler)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          if handler != nil && handler.class == Proc
            @j_del.listen(port,host,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause()
      return self
    end
    def resume()
      @j_del.resume()
      return self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(end_handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::DatagramPacket.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

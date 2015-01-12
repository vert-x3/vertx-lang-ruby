require 'vertx/packet_writestream'
require 'vertx/buffer'
require 'vertx/measured'
require 'vertx/datagram_packet'
require 'vertx/read_stream'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramSocket
module Vertx
  class DatagramSocket
    include Vertx::ReadStream
    include Vertx::Measured
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name
      @j_del.metricBaseName
    end
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
    end
    def send(param_1,param_2,param_3,param_4,&param_5)
      if param_1.class.method_defined?(:j_del)
        if param_2.class == Fixnum
          if param_3.class == String
            if param_4.class == Proc
              @j_del.send(param_1.j_del,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling send(param_1,param_2,param_3,param_4,param_5)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling send(param_1,param_2,param_3,param_4,param_5)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling send(param_1,param_2,param_3,param_4,param_5)"
      end
      if param_1.class == String
        if param_2.class == String
          if param_3.class == Fixnum
            if param_4.class == String
              if param_5.class == Proc
                @j_del.send(param_1,param_2,param_3,param_4,(Proc.new { |ar| param_5.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
                return self
              end
              raise ArgumentError, "Invalid argument param_5=#{param_5} when calling send(param_1,param_2,param_3,param_4,param_5)"
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling send(param_1,param_2,param_3,param_4,param_5)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling send(param_1,param_2,param_3,param_4,param_5)"
        end
        if param_2.class == Fixnum
          if param_3.class == String
            if param_4.class == Proc
              @j_del.send(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling send(param_1,param_2,param_3,param_4,param_5)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling send(param_1,param_2,param_3,param_4,param_5)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling send(param_1,param_2,param_3,param_4,param_5)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling send(param_1,param_2,param_3,param_4,param_5)"
    end
    def sender(port,host)
      if port.class == Fixnum
        if host.class == String
          return Vertx::PacketWritestream.new(@j_del.sender(port,host))
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling sender(port,host)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling sender(port,host)"
    end
    def close(&handler)
      if handler.class == Proc
        return @j_del.close((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
    def local_address
        if @cached_local_address != nil
          return @cached_local_address
        end
      @cached_local_address = Vertx::SocketAddress.new(@j_del.localAddress)
    end
    def listen_multicast_group(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.listenMulticastGroup(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              @j_del.listenMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling listen_multicast_group(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling listen_multicast_group(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling listen_multicast_group(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling listen_multicast_group(param_1,param_2,param_3,param_4)"
    end
    def unlisten_multicast_group(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.unlistenMulticastGroup(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              @j_del.unlistenMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling unlisten_multicast_group(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling unlisten_multicast_group(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling unlisten_multicast_group(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling unlisten_multicast_group(param_1,param_2,param_3,param_4)"
    end
    def block_multicast_group(param_1,param_2,param_3,&param_4)
      if param_1.class == String
        if param_2.class == String
          if param_3.class == Proc
            @j_del.blockMulticastGroup(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          if param_3.class == String
            if param_4.class == Proc
              @j_del.blockMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling block_multicast_group(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling block_multicast_group(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling block_multicast_group(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling block_multicast_group(param_1,param_2,param_3,param_4)"
    end
    def listen(port,host,&handler)
      if port.class == Fixnum
        if host.class == String
          if handler.class == Proc
            @j_del.listen(port,host,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling listen(port,host,handler)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling listen(port,host,handler)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling listen(port,host,handler)"
    end
    def pause
      @j_del.pause
      self
    end
    def resume
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
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::DatagramPacket.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
  end
end

require 'vertx/packet_writestream'
require 'vertx/buffer'
require 'vertx/measured'
require 'vertx/datagram_packet'
require 'vertx/read_stream'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramSocket
module Vertx
  #  A Datagram socket which can be used to send {::Vertx::DatagramPacket}'s to remote Datagram servers and receive {::Vertx::DatagramPacket}s .
  # 
  #  Usually you use a Datragram Client to send UDP over the wire. UDP is connection-less which means you are not connected
  #  to the remote peer in a persistent way. Because of this you have to supply the address and port of the remote peer
  #  when sending data.
  # 
  #  You can send data to ipv4 or ipv6 addresses, which also include multicast addresses.
  class DatagramSocket
    include ::Vertx::ReadStream
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::DatagramSocket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::DatagramSocket] the underlying java delegate
    def j_del
      @j_del
    end
    #  The metric base name
    # @return [String]
    def metric_base_name
      @j_del.metricBaseName
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Write the given  to the {::Vertx::SocketAddress} using the given encoding. The  will be notified once the
    #  write completes.
    # @overload send(packet,port,host,handler)
    #   @param [::Vertx::Buffer] packet
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [Proc] handler
    # @overload send(str,port,host,handler)
    #   @param [String] str
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [Proc] handler
    # @overload send(str,enc,port,host,handler)
    #   @param [String] str
    #   @param [String] enc
    #   @param [Fixnum] port
    #   @param [String] host
    #   @param [Proc] handler
    # return [self]
    def send(param_1,param_2,param_3,param_4,&param_5)
      if param_1.class.method_defined?(:j_del)
        if param_2.class == Fixnum
          if param_3.class == String
            if param_4.class == Proc
              @j_del.send(param_1.j_del,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
                @j_del.send(param_1,param_2,param_3,param_4,(Proc.new { |ar| param_5.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
              @j_del.send(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Returns a {::Vertx::PacketWritestream} able to send  to the {::Vertx::SocketAddress}.
    # @param [Fixnum] port
    # @param [String] host
    # @return [::Vertx::PacketWritestream]
    def sender(port,host)
      if port.class == Fixnum
        if host.class == String
          return ::Vertx::PacketWritestream.new(@j_del.sender(port,host))
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling sender(port,host)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling sender(port,host)"
    end
    #  Close the {::Vertx::DatagramSocket} implementation asynchronous and notifies the handler once done.
    # @param [Proc] handler
    # return [void]
    def close(&handler)
      if handler.class == Proc
        return @j_del.close((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
    #  Return the {::Vertx::SocketAddress} to which this {::Vertx::DatagramSocket} is bound too.
    # @return [::Vertx::SocketAddress]
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new(@j_del.localAddress)
    end
    #  Joins a multicast group and so start listen for packets send to it on the given network interface.
    #  The  is notified once the operation completes.
    # @overload listenMulticastGroup(multicastAddress,handler)
    #   @param [String] multicastAddress
    #   @param [Proc] handler
    # @overload listenMulticastGroup(multicastAddress,networkInterface,source,handler)
    #   @param [String] multicastAddress
    #   @param [String] networkInterface
    #   @param [String] source
    #   @param [Proc] handler
    # return [self]
    def listen_multicast_group(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.listenMulticastGroup(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              @j_del.listenMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Leaves a multicast group and so stop listen for packets send to it on the given network interface.
    #  The  is notified once the operation completes.
    # @overload unlistenMulticastGroup(multicastAddress,handler)
    #   @param [String] multicastAddress
    #   @param [Proc] handler
    # @overload unlistenMulticastGroup(multicastAddress,networkInterface,source,handler)
    #   @param [String] multicastAddress
    #   @param [String] networkInterface
    #   @param [String] source
    #   @param [Proc] handler
    # return [self]
    def unlisten_multicast_group(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.unlistenMulticastGroup(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              @j_del.unlistenMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Block the given sourceToBlock address for the given multicastAddress on the given network interface and notifies
    #  the  once the operation completes.
    # @overload blockMulticastGroup(multicastAddress,sourceToBlock,handler)
    #   @param [String] multicastAddress
    #   @param [String] sourceToBlock
    #   @param [Proc] handler
    # @overload blockMulticastGroup(multicastAddress,networkInterface,sourceToBlock,handler)
    #   @param [String] multicastAddress
    #   @param [String] networkInterface
    #   @param [String] sourceToBlock
    #   @param [Proc] handler
    # return [self]
    def block_multicast_group(param_1,param_2,param_3,&param_4)
      if param_1.class == String
        if param_2.class == String
          if param_3.class == Proc
            @j_del.blockMulticastGroup(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          if param_3.class == String
            if param_4.class == Proc
              @j_del.blockMulticastGroup(param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    # @param [Fixnum] port
    # @param [String] host
    # @param [Proc] handler
    # return [self]
    def listen(port,host,&handler)
      if port.class == Fixnum
        if host.class == String
          if handler.class == Proc
            @j_del.listen(port,host,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling listen(port,host,handler)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling listen(port,host,handler)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling listen(port,host,handler)"
    end
    # return [self]
    def pause
      @j_del.pause
      self
    end
    # return [self]
    def resume
      @j_del.resume
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(::Vertx::DatagramPacket.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
  end
end

require 'vertx/packet_writestream'
require 'vertx/buffer'
require 'vertx/measured'
require 'vertx/datagram_packet'
require 'vertx/read_stream'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramSocket
module Vertx
  #  A datagram socket can be used to send {::Vertx::DatagramPacket}'s to remote datagram servers
  #  and receive {::Vertx::DatagramPacket}s .
  #  <p>
  #  Usually you use a datagram socket to send UDP over the wire. UDP is connection-less which means you are not connected
  #  to the remote peer in a persistent way. Because of this you have to supply the address and port of the remote peer
  #  when sending data.
  #  <p>
  #  You can send data to ipv4 or ipv6 addresses, which also include multicast addresses.
  #  <p>
  #  Please consult the documentation for more information on datagram sockets.
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
    # @return [String] the metric base name
    def metric_base_name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metricBaseName))).invoke(@j_del)
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}] the map of metrics where the key is the name of the metric (excluding the base name) and the value is the json data representing that metric
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metrics))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Write the given  to the {::Vertx::SocketAddress} using the given encoding.
    #  The  will be notified once the write completes.
    # @overload send(packet,port,host,handler)
    #   @param [::Vertx::Buffer] packet the {@link io.vertx.core.buffer.Buffer} to write
    #   @param [Fixnum] port the host port of the remote peer
    #   @param [String] host the host address of the remote peer
    #   @param [Proc] handler the {@link io.vertx.core.Handler} to notify once the write completes.
    # @overload send(str,port,host,handler)
    #   @param [String] str the {@link String} to write
    #   @param [Fixnum] port the host port of the remote peer
    #   @param [String] host the host address of the remote peer
    #   @param [Proc] handler the {@link io.vertx.core.Handler} to notify once the write completes.
    # @overload send(str,enc,port,host,handler)
    #   @param [String] str the {@link String} to write
    #   @param [String] enc the charset used for encoding
    #   @param [Fixnum] port the host port of the remote peer
    #   @param [String] host the host address of the remote peer
    #   @param [Proc] handler the {@link io.vertx.core.Handler} to notify once the write completes.
    # @return [self]
    def send(param_1,param_2,param_3,param_4,&param_5)
      if param_1.class.method_defined?(:j_del)
        if param_2.class == Fixnum
          if param_3.class == String
            if param_4.class == Proc
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1.j_del,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
                (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,param_4,(Proc.new { |ar| param_5.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:send,Java::java.lang.String.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Returns a {::Vertx::PacketWritestream} able to send  to the
    #  {::Vertx::SocketAddress}.
    # @param [Fixnum] port the port of the remote peer
    # @param [String] host the host address of the remote peer
    # @return [::Vertx::PacketWritestream] the write stream for sending packets
    def sender(port,host)
      if port.class == Fixnum
        if host.class == String
          return ::Vertx::PacketWritestream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sender,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host))
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling sender(port,host)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling sender(port,host)"
    end
    #  Closes the {::Vertx::DatagramSocket} implementation asynchronous
    #  and notifies the handler once done.
    # @param [Proc] handler the handler to notify once complete
    # @return [void]
    def close(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  Return the {::Vertx::SocketAddress} to which
    #  this {::Vertx::DatagramSocket} is bound.
    # @return [::Vertx::SocketAddress] the socket address
    def local_address
      if @cached_local_address != nil
        return @cached_local_address
      end
      @cached_local_address = ::Vertx::SocketAddress.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:localAddress))).invoke(@j_del))
    end
    #  Joins a multicast group and listens for packets send to it on the given network interface.
    #  The  is notified once the operation completes.
    # @overload listenMulticastGroup(multicastAddress,handler)
    #   @param [String] multicastAddress the address of the multicast group to join
    #   @param [Proc] handler then handler to notify once the operation completes
    # @overload listenMulticastGroup(multicastAddress,networkInterface,source,handler)
    #   @param [String] multicastAddress the address of the multicast group to join
    #   @param [String] networkInterface the network interface on which to listen for packets.
    #   @param [String] source the address of the source for which we will listen for multicast packets
    #   @param [Proc] handler then handler to notify once the operation completes
    # @return [self]
    def listen_multicast_group(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listenMulticastGroup,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listenMulticastGroup,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Leaves a multicast group and stops listening for packets send to it on the given network interface.
    #  The  is notified once the operation completes.
    # @overload unlistenMulticastGroup(multicastAddress,handler)
    #   @param [String] multicastAddress the address of the multicast group to leave
    #   @param [Proc] handler then handler to notify once the operation completes
    # @overload unlistenMulticastGroup(multicastAddress,networkInterface,source,handler)
    #   @param [String] multicastAddress the address of the multicast group to join
    #   @param [String] networkInterface the network interface on which to listen for packets.
    #   @param [String] source the address of the source for which we will listen for multicast packets
    #   @param [Proc] handler the handler to notify once the operation completes
    # @return [self]
    def unlisten_multicast_group(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:unlistenMulticastGroup,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == String
            if param_4.class == Proc
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:unlistenMulticastGroup,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Block the given address for the given multicast address on the given network interface and notifies
    #  the  once the operation completes.
    # @overload blockMulticastGroup(multicastAddress,sourceToBlock,handler)
    #   @param [String] multicastAddress the address for which you want to block the source address
    #   @param [String] sourceToBlock the source address which should be blocked. You will not receive an multicast packets for it anymore.
    #   @param [Proc] handler the handler to notify once the operation completes
    # @overload blockMulticastGroup(multicastAddress,networkInterface,sourceToBlock,handler)
    #   @param [String] multicastAddress the address for which you want to block the source address
    #   @param [String] networkInterface the network interface on which the blocking should occur.
    #   @param [String] sourceToBlock the source address which should be blocked. You will not receive an multicast packets for it anymore.
    #   @param [Proc] handler the handler to notify once the operation completes
    # @return [self]
    def block_multicast_group(param_1,param_2,param_3,&param_4)
      if param_1.class == String
        if param_2.class == String
          if param_3.class == Proc
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:blockMulticastGroup,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          if param_3.class == String
            if param_4.class == Proc
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:blockMulticastGroup,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
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
    #  Start listening on the given port and host. The handler will be called when the socket is listening.
    # @param [Fixnum] port the port to listen on
    # @param [String] host the host to listen on
    # @param [Proc] handler the handler will be called when listening
    # @return [self]
    def listen(port,host,&handler)
      if port.class == Fixnum
        if host.class == String
          if handler.class == Proc
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,port,host,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling listen(port,host,handler)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling listen(port,host,handler)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling listen(port,host,handler)"
    end
    # @return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # @return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    # @param [Proc] endHandler
    # @return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    # @param [Proc] handler
    # @return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::DatagramPacket.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # @param [Proc] handler
    # @return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
  end
end

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
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Write the given  to the {::Vertx::SocketAddress} using the given encoding.
    #  The  will be notified once the write completes.
    # @overload send(packet,port,host,handler)
    #   @param [::Vertx::Buffer] packet the {@link io.vertx.core.buffer.Buffer} to write
    #   @param [Fixnum] port the host port of the remote peer
    #   @param [String] host the host address of the remote peer
    #   @yield the {@link io.vertx.core.Handler} to notify once the write completes.
    # @overload send(str,port,host,handler)
    #   @param [String] str the {@link String} to write
    #   @param [Fixnum] port the host port of the remote peer
    #   @param [String] host the host address of the remote peer
    #   @yield the {@link io.vertx.core.Handler} to notify once the write completes.
    # @overload send(str,enc,port,host,handler)
    #   @param [String] str the {@link String} to write
    #   @param [String] enc the charset used for encoding
    #   @param [Fixnum] port the host port of the remote peer
    #   @param [String] host the host address of the remote peer
    #   @yield the {@link io.vertx.core.Handler} to notify once the write completes.
    # @return [self]
    def send(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
      if param_1.class.method_defined?(:j_del) && param_2.class == Fixnum && param_3.class == String && block_given? && param_4 == nil
        @j_del.java_method(:send, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1.j_del,param_2,param_3,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      elsif param_1.class == String && param_2.class == Fixnum && param_3.class == String && block_given? && param_4 == nil
        @j_del.java_method(:send, [Java::java.lang.String.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      elsif param_1.class == String && param_2.class == String && param_3.class == Fixnum && param_4.class == String && block_given?
        @j_del.java_method(:send, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,param_2,param_3,param_4,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling send(param_1,param_2,param_3,param_4)"
    end
    #  Returns a {::Vertx::PacketWritestream} able to send  to the
    #  {::Vertx::SocketAddress}.
    # @param [Fixnum] port the port of the remote peer
    # @param [String] host the host address of the remote peer
    # @return [::Vertx::PacketWritestream] the write stream for sending packets
    def sender(port=nil,host=nil)
      if port.class == Fixnum && host.class == String && !block_given?
        return ::Vertx::PacketWritestream.new(@j_del.java_method(:sender, [Java::int.java_class,Java::java.lang.String.java_class]).call(port,host))
      end
      raise ArgumentError, "Invalid arguments when calling sender(port,host)"
    end
    #  Closes the {::Vertx::DatagramSocket} implementation asynchronous
    #  and notifies the handler once done.
    # @yield the handler to notify once complete
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      elsif block_given?
        return @j_del.java_method(:close, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  Return the {::Vertx::SocketAddress} to which
    #  this {::Vertx::DatagramSocket} is bound.
    # @return [::Vertx::SocketAddress] the socket address
    def local_address
      if !block_given?
        if @cached_local_address != nil
          return @cached_local_address
        end
        return @cached_local_address = ::Vertx::SocketAddress.new(@j_del.java_method(:localAddress, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling local_address()"
    end
    #  Joins a multicast group and listens for packets send to it on the given network interface.
    #  The  is notified once the operation completes.
    # @param [String] multicastAddress the address of the multicast group to join
    # @param [String] networkInterface the network interface on which to listen for packets.
    # @param [String] source the address of the source for which we will listen for multicast packets
    # @yield then handler to notify once the operation completes
    # @return [self]
    def listen_multicast_group(multicastAddress=nil,networkInterface=nil,source=nil)
      if multicastAddress.class == String && block_given? && networkInterface == nil && source == nil
        @j_del.java_method(:listenMulticastGroup, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(multicastAddress,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      elsif multicastAddress.class == String && networkInterface.class == String && source.class == String && block_given?
        @j_del.java_method(:listenMulticastGroup, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(multicastAddress,networkInterface,source,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling listen_multicast_group(multicastAddress,networkInterface,source)"
    end
    #  Leaves a multicast group and stops listening for packets send to it on the given network interface.
    #  The  is notified once the operation completes.
    # @param [String] multicastAddress the address of the multicast group to join
    # @param [String] networkInterface the network interface on which to listen for packets.
    # @param [String] source the address of the source for which we will listen for multicast packets
    # @yield the handler to notify once the operation completes
    # @return [self]
    def unlisten_multicast_group(multicastAddress=nil,networkInterface=nil,source=nil)
      if multicastAddress.class == String && block_given? && networkInterface == nil && source == nil
        @j_del.java_method(:unlistenMulticastGroup, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(multicastAddress,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      elsif multicastAddress.class == String && networkInterface.class == String && source.class == String && block_given?
        @j_del.java_method(:unlistenMulticastGroup, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(multicastAddress,networkInterface,source,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling unlisten_multicast_group(multicastAddress,networkInterface,source)"
    end
    #  Block the given address for the given multicast address on the given network interface and notifies
    #  the  once the operation completes.
    # @param [String] multicastAddress the address for which you want to block the source address
    # @param [String] networkInterface the network interface on which the blocking should occur.
    # @param [String] sourceToBlock the source address which should be blocked. You will not receive an multicast packets for it anymore.
    # @yield the handler to notify once the operation completes
    # @return [self]
    def block_multicast_group(multicastAddress=nil,networkInterface=nil,sourceToBlock=nil)
      if multicastAddress.class == String && networkInterface.class == String && block_given? && sourceToBlock == nil
        @j_del.java_method(:blockMulticastGroup, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(multicastAddress,networkInterface,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      elsif multicastAddress.class == String && networkInterface.class == String && sourceToBlock.class == String && block_given?
        @j_del.java_method(:blockMulticastGroup, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(multicastAddress,networkInterface,sourceToBlock,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling block_multicast_group(multicastAddress,networkInterface,sourceToBlock)"
    end
    #  Start listening on the given port and host. The handler will be called when the socket is listening.
    # @param [Fixnum] port the port to listen on
    # @param [String] host the host to listen on
    # @yield the handler will be called when listening
    # @return [self]
    def listen(port=nil,host=nil)
      if port.class == Fixnum && host.class == String && block_given?
        @j_del.java_method(:listen, [Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(port,host,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::DatagramSocket.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling listen(port,host)"
    end
    # @return [self]
    def pause
      if !block_given?
        @j_del.java_method(:pause, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    # @return [self]
    def resume
      if !block_given?
        @j_del.java_method(:resume, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        @j_del.java_method(:endHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        @j_del.java_method(:handler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::DatagramPacket.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
  end
end

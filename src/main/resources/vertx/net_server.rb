require 'vertx/net_socket_stream'
require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetServer
module Vertx
  #  Represents a TCP server
  class NetServer
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::NetServer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::NetServer] the underlying java delegate
    def j_del
      @j_del
    end
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isMetricsEnabled))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
    end
    #  Return the connect stream for this server. The server can only have at most one handler at any one time.
    #  As the server accepts TCP or SSL connections it creates an instance of {::Vertx::NetSocket} and passes it to the
    #  connect stream .
    # @return [::Vertx::NetSocketStream] the connect stream
    def connect_stream
      if !block_given?
        return ::Vertx::NetSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectStream))).invoke(@j_del))
      end
      raise ArgumentError, "Invalid arguments when calling connect_stream()"
    end
    #  Supply a connect handler for this server. The server can only have at most one connect handler at any one time.
    #  As the server accepts TCP or SSL connections it creates an instance of {::Vertx::NetSocket} and passes it to the
    #  connect handler.
    # @yield 
    # @return [::Vertx::NetServer] a reference to this, so the API can be used fluently
    def connect_handler
      if block_given?
        return ::Vertx::NetServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(::Vertx::NetSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling connect_handler()"
    end
    #  Like {::Vertx::NetServer#listen} but providing a handler that will be notified when the server is listening, or fails.
    # @param [Fixnum] port the port to listen on
    # @param [String] host the host to listen on
    # @yield handler that will be notified when listening or failed
    # @return [self]
    def listen(port=nil,host=nil)
      if !block_given? && port == nil && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen))).invoke(@j_del)
        return self
      elsif block_given? && port == nil && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
        return self
      elsif port.class == Fixnum && !block_given? && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class))).invoke(@j_del,port)
        return self
      elsif port.class == Fixnum && host.class == String && !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,port,host)
        return self
      elsif port.class == Fixnum && block_given? && host == nil
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,port,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
        return self
      elsif port.class == Fixnum && host.class == String && block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,port,host,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling listen(port,host)"
    end
    #  Like {::Vertx::NetServer#close} but supplying a handler that will be notified when close is complete.
    # @yield the handler
    # @return [void]
    def close
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
      elsif block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  The actual port the server is listening on. This is useful if you bound the server specifying 0 as port number
    #  signifying an ephemeral port
    # @return [Fixnum] the actual port the server is listening on.
    def actual_port
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:actualPort))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling actual_port()"
    end
  end
end

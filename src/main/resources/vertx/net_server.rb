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
    #  The metric base name
    # @return [String]
    def metric_base_name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metricBaseName))).invoke(@j_del)
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metrics))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    #  Return the connect stream for this server. The server can only have at most one handler at any one time.
    #  As the server accepts TCP or SSL connections it creates an instance of {::Vertx::NetSocket} and passes it to the
    #  connect stream .
    # @return [::Vertx::NetSocketStream]
    def connect_stream
      ::Vertx::NetSocketStream.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectStream))).invoke(@j_del))
    end
    #  Supply a connect handler for this server. The server can only have at most one connect handler at any one time.
    #  As the server accepts TCP or SSL connections it creates an instance of {::Vertx::NetSocket} and passes it to the
    #  connect handler.
    # @param [Proc] handler
    # @return [::Vertx::NetServer]
    def connect_handler(&handler)
      if handler.class == Proc
        return ::Vertx::NetServer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:connectHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::NetSocket.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling connect_handler(handler)"
    end
    #  Like {::Vertx::NetServer#listen} but providing a handler that will be notified when the server is listening, or fails.
    # @overload listen()
    # @overload listen(listenHandler)
    #   @param [Proc] listenHandler handler that will be notified when listening or failed
    # @overload listen(port)
    #   @param [Fixnum] port
    # @overload listen(port,host)
    #   @param [Fixnum] port
    #   @param [String] host
    # @overload listen(port,listenHandler)
    #   @param [Fixnum] port the port to listen on
    #   @param [Proc] listenHandler handler that will be notified when listening or failed
    # @overload listen(port,host,listenHandler)
    #   @param [Fixnum] port the port to listen on
    #   @param [String] host the host to listen on
    #   @param [Proc] listenHandler handler that will be notified when listening or failed
    # @return [self]
    def listen(param_1=nil,param_2=nil,&param_3)
      if param_1.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| param_1.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
        return self
      end
      if param_1.class == Fixnum
        if param_2.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetServer.new(ar.result) : nil) }))
            return self
          end
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,param_1,param_2)
          return self
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen,Java::int.java_class))).invoke(@j_del,param_1)
        return self
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:listen))).invoke(@j_del)
      self
    end
    #  Like {::Vertx::NetServer#close} but supplying a handler that will be notified when close is complete.
    # @param [Proc] completionHandler the handler
    # @return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
    end
    #  The actual port the server is listening on. This is useful if you bound the server specifying 0 as port number
    #  signifying an ephemeral port
    # @return [Fixnum]
    def actual_port
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:actualPort))).invoke(@j_del)
    end
  end
end

require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpConnection
module Vertx
  #  Represents an HTTP/2 connection.<p/>
  class HttpConnection
    # @private
    # @param j_del [::Vertx::HttpConnection] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpConnection] the underlying java delegate
    def j_del
      @j_del
    end
    #  Send a go away frame to the remote endpoint of the connection.<p/>
    # 
    #  <ul>
    #    <li>a  frame is sent to the to the remote endpoint with the <code>errorCode</code> and {@@code debugData}</li>
    #    <li>any stream created after the stream identified by <code>lastStreamId</code> will be closed</li>
    #    <li>for an  is different than  when all the remaining streams are closed this connection will be closed automatically</li>
    #  </ul>
    # @param [Fixnum] errorCode the  error code
    # @param [Fixnum] lastStreamId the last stream id
    # @param [::Vertx::Buffer] debugData additional debug data sent to the remote endpoint
    # @return [self]
    def go_away(errorCode=nil,lastStreamId=nil,debugData=nil)
      if errorCode.class == Fixnum && !block_given? && lastStreamId == nil && debugData == nil
        @j_del.java_method(:goAway, [Java::long.java_class]).call(errorCode)
        return self
      elsif errorCode.class == Fixnum && lastStreamId.class == Fixnum && !block_given? && debugData == nil
        @j_del.java_method(:goAway, [Java::long.java_class,Java::int.java_class]).call(errorCode,lastStreamId)
        return self
      elsif errorCode.class == Fixnum && lastStreamId.class == Fixnum && debugData.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:goAway, [Java::long.java_class,Java::int.java_class,Java::IoVertxCoreBuffer::Buffer.java_class]).call(errorCode,lastStreamId,debugData.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling go_away(errorCode,lastStreamId,debugData)"
    end
    #  Set an handler called when a  frame is received.
    # @yield the handler
    # @return [self]
    def go_away_handler
      if block_given?
        @j_del.java_method(:goAwayHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event != nil ? JSON.parse(event.toJson.encode) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling go_away_handler()"
    end
    #  Set an handler called when a  frame has been sent or received and all connections are closed.
    # @yield the handler
    # @return [self]
    def shutdown_handler
      if block_given?
        @j_del.java_method(:shutdownHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling shutdown_handler()"
    end
    #  Initiate a connection shutdown, a go away frame is sent and the connection is closed when all current streams
    #  will be closed or the <code>timeout</code> is fired.
    # @param [Fixnum] timeoutMs the timeout in milliseconds
    # @return [self]
    def shutdown(timeoutMs=nil)
      if !block_given? && timeoutMs == nil
        @j_del.java_method(:shutdown, []).call()
        return self
      elsif timeoutMs.class == Fixnum && !block_given?
        @j_del.java_method(:shutdown, [Java::long.java_class]).call(timeoutMs)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling shutdown(timeoutMs)"
    end
    #  Set a close handler. The handler will get notified when the connection is closed.
    # @yield the handler to be notified
    # @return [self]
    def close_handler
      if block_given?
        @j_del.java_method(:closeHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling close_handler()"
    end
    #  Close the connection and all the currently active streams. A  frame will be sent before.<p/>
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  @return the latest server settings acknowledged by the remote endpoint
    # @return [Hash]
    def settings
      if !block_given?
        return @j_del.java_method(:settings, []).call() != nil ? JSON.parse(@j_del.java_method(:settings, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling settings()"
    end
    #  Send to the remote endpoint an update of this endpoint settings.<p/>
    # 
    #  The <code>completionHandler</code> will be notified when the remote endpoint has acknowledged the settings.
    # @param [Hash] settings the new settings
    # @yield the handler notified when the settings have been acknowledged by the remote endpoint
    # @return [self]
    def update_settings(settings=nil)
      if settings.class == Hash && !block_given?
        @j_del.java_method(:updateSettings, [Java::IoVertxCoreHttp::Http2Settings.java_class]).call(Java::IoVertxCoreHttp::Http2Settings.new(::Vertx::Util::Utils.to_json_object(settings)))
        return self
      elsif settings.class == Hash && block_given?
        @j_del.java_method(:updateSettings, [Java::IoVertxCoreHttp::Http2Settings.java_class,Java::IoVertxCore::Handler.java_class]).call(Java::IoVertxCoreHttp::Http2Settings.new(::Vertx::Util::Utils.to_json_object(settings)),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling update_settings(settings)"
    end
    #  @return the current remote endpoint settings for this connection
    # @return [Hash]
    def remote_settings
      if !block_given?
        return @j_del.java_method(:remoteSettings, []).call() != nil ? JSON.parse(@j_del.java_method(:remoteSettings, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling remote_settings()"
    end
    #  Set an handler that is called when remote endpoint {Hash} are updated.
    # @yield the handler for remote endpoint settings
    # @return [self]
    def remote_settings_handler
      if block_given?
        @j_del.java_method(:remoteSettingsHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event != nil ? JSON.parse(event.toJson.encode) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling remote_settings_handler()"
    end
    #  Send a  frame to the remote endpoint.
    # @param [::Vertx::Buffer] data the 8 bytes data of the frame
    # @yield an async result handler notified with pong reply or the failure
    # @return [self]
    def ping(data=nil)
      if data.class.method_defined?(:j_del) && block_given?
        @j_del.java_method(:ping, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::IoVertxCore::Handler.java_class]).call(data.j_del,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::Buffer) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling ping(data)"
    end
    #  Set an handler notified when a  frame is received from the remote endpoint.
    # @yield the handler to be called when a  is received
    # @return [self]
    def ping_handler
      if block_given?
        @j_del.java_method(:pingHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling ping_handler()"
    end
    #  Set an handler called when a connection error happens
    # @yield the handler
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
  end
end

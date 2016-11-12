require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpConnection
module Vertx
  #  Represents an HTTP connection.
  #  <p/>
  #  HTTP/1.x connection provides an limited implementation, the following methods are implemented:
  #  <ul>
  #    <li>{::Vertx::HttpConnection#close}</li>
  #    <li>{::Vertx::HttpConnection#close_handler}</li>
  #    <li>{::Vertx::HttpConnection#exception_handler}</li>
  #  </ul>
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == HttpConnection
    end
    def @@j_api_type.wrap(obj)
      HttpConnection.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreHttp::HttpConnection.java_class
    end
    # @return [Fixnum] the current connection window size or <code>-1</code> for HTTP/1.x
    def get_window_size
      if !block_given?
        return @j_del.java_method(:getWindowSize, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_window_size()"
    end
    #  Update the current connection wide window size to a new size.
    #  <p/>
    #  Increasing this value, gives better performance when several data streams are multiplexed
    #  <p/>
    #  This is not implemented for HTTP/1.x.
    # @param [Fixnum] windowSize the new window size
    # @return [self]
    def set_window_size(windowSize=nil)
      if windowSize.class == Fixnum && !block_given?
        @j_del.java_method(:setWindowSize, [Java::int.java_class]).call(windowSize)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_window_size(windowSize)"
    end
    #  Send a go away frame to the remote endpoint of the connection.
    #  <p/>
    #  <ul>
    #    <li>a  frame is sent to the to the remote endpoint with the <code>errorCode</code> and <code>debugData</code></li>
    #    <li>any stream created after the stream identified by <code>lastStreamId</code> will be closed</li>
    #    <li>for an  is different than <code>0</code> when all the remaining streams are closed this connection will be closed automatically</li>
    #  </ul>
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    #  Close the connection and all the currently active streams.
    #  <p/>
    #  An HTTP/2 connection will send a  frame before.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    # @return [Hash] the latest server settings acknowledged by the remote endpoint - this is not implemented for HTTP/1.x
    def settings
      if !block_given?
        return @j_del.java_method(:settings, []).call() != nil ? JSON.parse(@j_del.java_method(:settings, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling settings()"
    end
    #  Send to the remote endpoint an update of this endpoint settings
    #  <p/>
    #  The <code>completionHandler</code> will be notified when the remote endpoint has acknowledged the settings.
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    # @return [Hash] the current remote endpoint settings for this connection - this is not implemented for HTTP/1.x
    def remote_settings
      if !block_given?
        return @j_del.java_method(:remoteSettings, []).call() != nil ? JSON.parse(@j_del.java_method(:remoteSettings, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling remote_settings()"
    end
    #  Set an handler that is called when remote endpoint {Hash} are updated.
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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
    #  <p/>
    #  This is not implemented for HTTP/1.x.
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

require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketFrame
module Vertx
  #  A WebSocket frame that represents either text or binary data.
  #  <p>
  #  A WebSocket message is composed of one or more WebSocket frames.
  #  <p>
  #  If there is a just a single frame in the message then a single text or binary frame should be created with final = true.
  #  <p>
  #  If there are more than one frames in the message, then the first frame should be a text or binary frame with
  #  final = false, followed by one or more continuation frames. The last continuation frame should have final = true.
  class WebSocketFrame
    # @private
    # @param j_del [::Vertx::WebSocketFrame] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WebSocketFrame] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      WebSocketFrame.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreHttp::WebSocketFrame.java_class
    end
    #  Create a binary WebSocket frame.
    # @param [::Vertx::Buffer] data the data for the frame
    # @param [true,false] isFinal true if it's the final frame in the WebSocket message
    # @return [::Vertx::WebSocketFrame] the frame
    def self.binary_frame(data=nil,isFinal=nil)
      if data.class.method_defined?(:j_del) && (isFinal.class == TrueClass || isFinal.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreHttp::WebSocketFrame.java_method(:binaryFrame, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::boolean.java_class]).call(data.j_del,isFinal),::Vertx::WebSocketFrame)
      end
      raise ArgumentError, "Invalid arguments when calling binary_frame(data,isFinal)"
    end
    #  Create a text WebSocket frame.
    # @param [String] str the string for the frame
    # @param [true,false] isFinal true if it's the final frame in the WebSocket message
    # @return [::Vertx::WebSocketFrame] the frame
    def self.text_frame(str=nil,isFinal=nil)
      if str.class == String && (isFinal.class == TrueClass || isFinal.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreHttp::WebSocketFrame.java_method(:textFrame, [Java::java.lang.String.java_class,Java::boolean.java_class]).call(str,isFinal),::Vertx::WebSocketFrame)
      end
      raise ArgumentError, "Invalid arguments when calling text_frame(str,isFinal)"
    end
    #  Create a continuation frame
    # @param [::Vertx::Buffer] data the data for the frame
    # @param [true,false] isFinal true if it's the final frame in the WebSocket message
    # @return [::Vertx::WebSocketFrame] the frame
    def self.continuation_frame(data=nil,isFinal=nil)
      if data.class.method_defined?(:j_del) && (isFinal.class == TrueClass || isFinal.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreHttp::WebSocketFrame.java_method(:continuationFrame, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::boolean.java_class]).call(data.j_del,isFinal),::Vertx::WebSocketFrame)
      end
      raise ArgumentError, "Invalid arguments when calling continuation_frame(data,isFinal)"
    end
    # @return [true,false] true if it's a text frame
    def text?
      if !block_given?
        return @j_del.java_method(:isText, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling text?()"
    end
    # @return [true,false] true if it's a binary frame
    def binary?
      if !block_given?
        return @j_del.java_method(:isBinary, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling binary?()"
    end
    # @return [true,false] true if it's a continuation frame
    def continuation?
      if !block_given?
        return @j_del.java_method(:isContinuation, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling continuation?()"
    end
    # @return [String] the content of this frame as a UTF-8 string and returns the converted string. Only use this for text frames.
    def text_data
      if !block_given?
        if @cached_text_data != nil
          return @cached_text_data
        end
        return @cached_text_data = @j_del.java_method(:textData, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling text_data()"
    end
    # @return [::Vertx::Buffer] the data of the frame
    def binary_data
      if !block_given?
        if @cached_binary_data != nil
          return @cached_binary_data
        end
        return @cached_binary_data = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:binaryData, []).call(),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling binary_data()"
    end
    # @return [true,false] true if this is the final frame.
    def final?
      if !block_given?
        return @j_del.java_method(:isFinal, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling final?()"
    end
  end
end

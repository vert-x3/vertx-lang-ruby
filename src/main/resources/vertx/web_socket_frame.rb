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
    #  Create a binary WebSocket frame.
    # @param [::Vertx::Buffer] data the data for the frame
    # @param [true,false] isFinal true if it's the final frame in the WebSocket message
    # @return [::Vertx::WebSocketFrame]
    def self.binary_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreHttp::WebSocketFrame.java_class.declared_method(:binaryFrame,Java::IoVertxCoreBuffer::Buffer.java_class,Java::boolean.java_class))).invoke(@j_del,data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling binary_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling binary_frame(data,isFinal)"
    end
    #  Create a text WebSocket frame.
    # @param [String] str the string for the frame
    # @param [true,false] isFinal true if it's the final frame in the WebSocket message
    # @return [::Vertx::WebSocketFrame]
    def self.text_frame(str,isFinal)
      if str.class == String
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreHttp::WebSocketFrame.java_class.declared_method(:textFrame,Java::java.lang.String.java_class,Java::boolean.java_class))).invoke(@j_del,str,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling text_frame(str,isFinal)"
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling text_frame(str,isFinal)"
    end
    #  Create a continuation frame
    # @param [::Vertx::Buffer] data the data for the frame
    # @param [true,false] isFinal true if it's the final frame in the WebSocket message
    # @return [::Vertx::WebSocketFrame]
    def self.continuation_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreHttp::WebSocketFrame.java_class.declared_method(:continuationFrame,Java::IoVertxCoreBuffer::Buffer.java_class,Java::boolean.java_class))).invoke(@j_del,data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling continuation_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling continuation_frame(data,isFinal)"
    end
    #  @return true if it's a text frame
    # @return [true,false]
    def is_text
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isText))).invoke(@j_del)
    end
    #  @eturn true if it's a binary frame
    # @return [true,false]
    def is_binary
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isBinary))).invoke(@j_del)
    end
    #  @return true if it's a continuation frame
    # @return [true,false]
    def is_continuation
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isContinuation))).invoke(@j_del)
    end
    #  @return the content of this frame as a UTF-8 string and returns the
    #  converted string. Only use this for text frames.
    # @return [String]
    def text_data
      if @cached_text_data != nil
        return @cached_text_data
      end
      @cached_text_data = (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:textData))).invoke(@j_del)
    end
    #  @return the data of the frame
    # @return [::Vertx::Buffer]
    def binary_data
      if @cached_binary_data != nil
        return @cached_binary_data
      end
      @cached_binary_data = ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:binaryData))).invoke(@j_del))
    end
    #  @return true if this is the final frame.
    # @return [true,false]
    def is_final
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isFinal))).invoke(@j_del)
    end
  end
end

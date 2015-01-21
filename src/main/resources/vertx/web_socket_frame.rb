require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketFrame
module Vertx
  #  A Web Socket frame that represents either text or binary data.
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
    # @param [::Vertx::Buffer] data
    # @param [true,false] isFinal
    # @return [::Vertx::WebSocketFrame]
    def self.binary_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.binaryFrame(data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling binary_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling binary_frame(data,isFinal)"
    end
    # @param [String] str
    # @param [true,false] isFinal
    # @return [::Vertx::WebSocketFrame]
    def self.text_frame(str,isFinal)
      if str.class == String
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.textFrame(str,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling text_frame(str,isFinal)"
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling text_frame(str,isFinal)"
    end
    # @param [::Vertx::Buffer] data
    # @param [true,false] isFinal
    # @return [::Vertx::WebSocketFrame]
    def self.continuation_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.continuationFrame(data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling continuation_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling continuation_frame(data,isFinal)"
    end
    #  Returns <code>true</code> if and only if the content of this frame is a string
    #  encoded in UTF-8.
    # @return [true,false]
    def is_text
      @j_del.isText
    end
    #  Returns <code>true</code> if and only if the content of this frame is an
    #  arbitrary binary data.
    # @return [true,false]
    def is_binary
      @j_del.isBinary
    end
    # @return [true,false]
    def is_continuation
      @j_del.isContinuation
    end
    #  Converts the content of this frame into a UTF-8 string and returns the
    #  converted string.
    # @return [String]
    def text_data
      if @cached_text_data != nil
        return @cached_text_data
      end
      @cached_text_data = @j_del.textData
    end
    # @return [::Vertx::Buffer]
    def binary_data
      if @cached_binary_data != nil
        return @cached_binary_data
      end
      @cached_binary_data = ::Vertx::Buffer.new(@j_del.binaryData)
    end
    #  Returns <code>true</code> if this is the final frame.  This should be <code>true</code> unless a number of 
    #  coninuation frames are expected to follow this frame.
    # @return [true,false]
    def is_final
      @j_del.isFinal
    end
  end
end

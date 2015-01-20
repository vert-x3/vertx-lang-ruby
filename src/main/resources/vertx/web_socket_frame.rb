require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketFrame
module Vertx
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
    # THE METHOD DOC
    #
    # @param [::Vertx::Buffer] data
    # @param [true,false] isFinal
    # @return [::Vertx::WebSocketFrame]: the return value (todo)
    def self.binary_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.binaryFrame(data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling binary_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling binary_frame(data,isFinal)"
    end
    # THE METHOD DOC
    #
    # @param [String] str
    # @param [true,false] isFinal
    # @return [::Vertx::WebSocketFrame]: the return value (todo)
    def self.text_frame(str,isFinal)
      if str.class == String
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.textFrame(str,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling text_frame(str,isFinal)"
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling text_frame(str,isFinal)"
    end
    # THE METHOD DOC
    #
    # @param [::Vertx::Buffer] data
    # @param [true,false] isFinal
    # @return [::Vertx::WebSocketFrame]: the return value (todo)
    def self.continuation_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return ::Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.continuationFrame(data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling continuation_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling continuation_frame(data,isFinal)"
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_text
      @j_del.isText
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_binary
      @j_del.isBinary
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_continuation
      @j_del.isContinuation
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def text_data
      if @cached_text_data != nil
        return @cached_text_data
      end
      @cached_text_data = @j_del.textData
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::Buffer]: the return value (todo)
    def binary_data
      if @cached_binary_data != nil
        return @cached_binary_data
      end
      @cached_binary_data = ::Vertx::Buffer.new(@j_del.binaryData)
    end
    # THE METHOD DOC
    #
    # @return [true,false]: the return value (todo)
    def is_final
      @j_del.isFinal
    end
  end
end

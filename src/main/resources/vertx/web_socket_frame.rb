require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocketFrame
module Vertx
  class WebSocketFrame
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def self.binary_frame(data,is_final)
      if data != nil && data.class.method_defined?(:j_del)
        if is_final != nil && (is_final.class == TrueClass || is_final.class == FalseClass)
          return Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.binaryFrame(data.j_del,is_final))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def self.text_frame(str,is_final)
      if str != nil && str.class == String
        if is_final != nil && (is_final.class == TrueClass || is_final.class == FalseClass)
          return Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.textFrame(str,is_final))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def self.continuation_frame(data,is_final)
      if data != nil && data.class.method_defined?(:j_del)
        if is_final != nil && (is_final.class == TrueClass || is_final.class == FalseClass)
          return Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.continuationFrame(data.j_del,is_final))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def is_text()
      @j_del.isText
    end
    def is_binary()
      @j_del.isBinary
    end
    def is_continuation()
      @j_del.isContinuation
    end
    def text_data()
        if @cached_text_data != nil
          return @cached_text_data
        end
      @cached_text_data = @j_del.textData
    end
    def binary_data()
        if @cached_binary_data != nil
          return @cached_binary_data
        end
      @cached_binary_data = Vertx::Buffer.new(@j_del.binaryData)
    end
    def is_final()
      @j_del.isFinal
    end
  end
end

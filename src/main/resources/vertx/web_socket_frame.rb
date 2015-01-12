require 'vertx/buffer'
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
    def self.binary_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.binaryFrame(data.j_del,isFinal))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def self.text_frame(str,isFinal)
      if str.class == String
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.textFrame(str,isFinal))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def self.continuation_frame(data,isFinal)
      if data.class.method_defined?(:j_del)
        if isFinal.class == TrueClass || isFinal.class == FalseClass
          return Vertx::WebSocketFrame.new(Java::IoVertxCoreHttp::WebSocketFrame.continuationFrame(data.j_del,isFinal))
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

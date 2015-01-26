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
          return ::Vertx::WebSocketFrame.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreHttp::WebSocketFrame.java_class.declared_method(:binaryFrame,Java::IoVertxCoreBuffer::Buffer.java_class,Java::boolean.java_class))).invoke(@j_del,data.j_del,isFinal))
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
          return ::Vertx::WebSocketFrame.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreHttp::WebSocketFrame.java_class.declared_method(:textFrame,Java::java.lang.String.java_class,Java::boolean.java_class))).invoke(@j_del,str,isFinal))
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
          return ::Vertx::WebSocketFrame.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreHttp::WebSocketFrame.java_class.declared_method(:continuationFrame,Java::IoVertxCoreBuffer::Buffer.java_class,Java::boolean.java_class))).invoke(@j_del,data.j_del,isFinal))
        end
        raise ArgumentError, "Invalid argument isFinal=#{isFinal} when calling continuation_frame(data,isFinal)"
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling continuation_frame(data,isFinal)"
    end
    #  Returns <code>true</code> if and only if the content of this frame is a string
    #  encoded in UTF-8.
    # @return [true,false]
    def is_text
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isText))).invoke(@j_del)
    end
    #  Returns <code>true</code> if and only if the content of this frame is an
    #  arbitrary binary data.
    # @return [true,false]
    def is_binary
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isBinary))).invoke(@j_del)
    end
    # @return [true,false]
    def is_continuation
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isContinuation))).invoke(@j_del)
    end
    #  Converts the content of this frame into a UTF-8 string and returns the
    #  converted string.
    # @return [String]
    def text_data
      if @cached_text_data != nil
        return @cached_text_data
      end
      @cached_text_data = (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:textData))).invoke(@j_del)
    end
    # @return [::Vertx::Buffer]
    def binary_data
      if @cached_binary_data != nil
        return @cached_binary_data
      end
      @cached_binary_data = ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:binaryData))).invoke(@j_del))
    end
    #  Returns <code>true</code> if this is the final frame.  This should be <code>true</code> unless a number of 
    #  coninuation frames are expected to follow this frame.
    # @return [true,false]
    def is_final
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isFinal))).invoke(@j_del)
    end
  end
end

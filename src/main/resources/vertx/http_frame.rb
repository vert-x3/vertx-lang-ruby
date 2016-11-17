require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpFrame
module Vertx
  #  An HTTP/2 frame.
  class HttpFrame
    # @private
    # @param j_del [::Vertx::HttpFrame] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpFrame] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == HttpFrame
    end
    def @@j_api_type.wrap(obj)
      HttpFrame.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreHttp::HttpFrame.java_class
    end
    # @return [Fixnum] the 8-bit type of the frame
    def type
      if !block_given?
        if @cached_type != nil
          return @cached_type
        end
        return @cached_type = @j_del.java_method(:type, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling type()"
    end
    # @return [Fixnum] the 8-bit flags specific to the frame
    def flags
      if !block_given?
        if @cached_flags != nil
          return @cached_flags
        end
        return @cached_flags = @j_del.java_method(:flags, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling flags()"
    end
    # @return [::Vertx::Buffer] the frame payload
    def payload
      if !block_given?
        if @cached_payload != nil
          return @cached_payload
        end
        return @cached_payload = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:payload, []).call(),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling payload()"
    end
  end
end

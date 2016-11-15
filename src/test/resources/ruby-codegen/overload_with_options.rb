require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.OverloadWithOptions
module RubyCodegen
  class OverloadWithOptions
    # @private
    # @param j_del [::RubyCodegen::OverloadWithOptions] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::OverloadWithOptions] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == OverloadWithOptions
    end
    def @@j_api_type.wrap(obj)
      OverloadWithOptions.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::OverloadWithOptions.java_class
    end
    # @param [Hash] options 
    # @return [void]
    def method(options=nil)
      if !block_given? && options == nil
        return @j_del.java_method(:method, []).call()
      elsif options.class == Hash && !block_given?
        return @j_del.java_method(:method, [Java::IoVertxCore::DeploymentOptions.java_class]).call(Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(options)))
      end
      raise ArgumentError, "Invalid arguments when calling method(#{options})"
    end
  end
end

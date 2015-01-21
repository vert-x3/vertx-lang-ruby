require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.OverloadWithOptions
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
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
    # @param [Hash] options
    # return [void]
    def method(options=nil)
      if options.class == Hash
        return @j_del.method(Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(options)))
      end
      @j_del.method
    end
  end
end

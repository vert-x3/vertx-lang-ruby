require 'vertx/util/utils.rb'
    # @param j_del [::RubyCodegen::OverloadWithOptions] the java delegate
    # @private
# Generated from io.vertx.test.support.OverloadWithOptions
module RubyCodegen
  class OverloadWithOptions
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
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

require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.OverloadWithOptions
module RubyCodegen
  class OverloadWithOptions
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def method(options=nil)
      if options.class == Hash
        return @j_del.method(Java::IoVertxCore::DeploymentOptions.new(::Vertx::Util::Utils.to_json_object(options)))
      end
      @j_del.method
    end
  end
end

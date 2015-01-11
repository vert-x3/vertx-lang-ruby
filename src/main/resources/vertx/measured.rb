require 'vertx/util/utils.rb'
# Generated from io.vertx.core.metrics.Measured
module Vertx
  module Measured
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics(), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
    end
  end
  class MeasuredImpl
    include Measured
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
  end
end

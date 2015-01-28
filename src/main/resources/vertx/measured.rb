require 'vertx/util/utils.rb'
# Generated from io.vertx.core.metrics.Measured
module Vertx
  module Measured
    #  The metric base name
    # @return [String] the metric base name
    def metric_base_name
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metricBaseName))).invoke(@j_del)
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}] the map of metrics where the key is the name of the metric (excluding the base name) and the value is the json data representing that metric
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:metrics))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
  end
  class MeasuredImpl
    include Measured
    # @private
    # @param j_del [::Vertx::Measured] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Measured] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

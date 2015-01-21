require 'vertx/util/utils.rb'
# Generated from io.vertx.core.metrics.Measured
module Vertx
  module Measured
    #  The metric base name
    # @return [String]
    def metric_base_name
      @j_del.metricBaseName
    end
    #  Will return the metrics that correspond with this measured object.
    # @return [Hash{String => Hash{String => Object}}]
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
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

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.metrics.Measured
module Vertx
  module Measured
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def is_metrics_enabled
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling is_metrics_enabled()"
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

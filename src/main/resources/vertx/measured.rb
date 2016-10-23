require 'vertx/util/utils.rb'
# Generated from io.vertx.core.metrics.Measured
module Vertx
  module Measured
    #  Whether the metrics are enabled for this measured object
    # @return [true,false] true if the metrics are enabled
    def metrics_enabled?
      if !block_given?
        return @j_del.java_method(:isMetricsEnabled, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling metrics_enabled?()"
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      Measured.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreMetrics::Measured.java_class
    end
  end
end

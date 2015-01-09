require 'vertx/util/utils.rb'
module Vertx
  module Measured
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return nil
    end
  end
end

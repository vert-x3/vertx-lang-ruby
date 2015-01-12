require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.SrvRecord
module Vertx
  class SrvRecord
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def priority
      @j_del.priority
    end
    def weight
      @j_del.weight
    end
    def port
      @j_del.port
    end
    def name
      @j_del.name
    end
    def protocol
      @j_del.protocol
    end
    def service
      @j_del.service
    end
    def target
      @j_del.target
    end
  end
end

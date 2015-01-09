require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.MxRecord
module Vertx
  class MxRecord
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def priority()
      return @j_del.priority()
    end
    def name()
      return @j_del.name()
    end
  end
end

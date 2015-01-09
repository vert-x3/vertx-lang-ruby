require 'vertx/util/utils.rb'
module Vertx
  class SrvRecord
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def priority()
      return @j_del.priority()
    end
    def weight()
      return @j_del.weight()
    end
    def port()
      return @j_del.port()
    end
    def name()
      return @j_del.name()
    end
    def protocol()
      return @j_del.protocol()
    end
    def service()
      return @j_del.service()
    end
    def target()
      return @j_del.target()
    end
  end
end

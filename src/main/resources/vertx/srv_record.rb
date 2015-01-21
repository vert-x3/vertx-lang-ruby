require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.SrvRecord
module Vertx
  #  Represent a Service-Record (SRV) which was resolved for a domain.
  class SrvRecord
    # @private
    # @param j_del [::Vertx::SrvRecord] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::SrvRecord] the underlying java delegate
    def j_del
      @j_del
    end
    #  Returns the priority for this service record.
    # @return [Fixnum]
    def priority
      @j_del.priority
    end
    #  Returns the weight of this service record.
    # @return [Fixnum]
    def weight
      @j_del.weight
    end
    #  Returns the port the service is running on.
    # @return [Fixnum]
    def port
      @j_del.port
    end
    #  Returns the name for the server being queried.
    # @return [String]
    def name
      @j_del.name
    end
    #  Returns the protocol for the service being queried (i.e. "_tcp").
    # @return [String]
    def protocol
      @j_del.protocol
    end
    #  Returns the service's name (i.e. "_http").
    # @return [String]
    def service
      @j_del.service
    end
    #  Returns the name of the host for the service.
    # @return [String]
    def target
      @j_del.target
    end
  end
end

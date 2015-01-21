require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.MxRecord
module Vertx
  #  Represent a Mail-Exchange-Record (MX) which was resolved for a domain.
  class MxRecord
    # @private
    # @param j_del [::Vertx::MxRecord] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MxRecord] the underlying java delegate
    def j_del
      @j_del
    end
    #  The priority of the MX record.
    # @return [Fixnum]
    def priority
      @j_del.priority
    end
    #  The name of the MX record
    # @return [String]
    def name
      @j_del.name
    end
  end
end

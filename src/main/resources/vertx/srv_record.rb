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
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:priority))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling priority()"
    end
    #  Returns the weight of this service record.
    # @return [Fixnum]
    def weight
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:weight))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling weight()"
    end
    #  Returns the port the service is running on.
    # @return [Fixnum]
    def port
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:port))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling port()"
    end
    #  Returns the name for the server being queried.
    # @return [String]
    def name
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:name))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling name()"
    end
    #  Returns the protocol for the service being queried (i.e. "_tcp").
    # @return [String]
    def protocol
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:protocol))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling protocol()"
    end
    #  Returns the service's name (i.e. "_http").
    # @return [String]
    def service
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:service))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling service()"
    end
    #  Returns the name of the host for the service.
    # @return [String]
    def target
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:target))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling target()"
    end
  end
end

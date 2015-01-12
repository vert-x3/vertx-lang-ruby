require 'vertx/mx_record'
require 'vertx/srv_record'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.DnsClient
module Vertx
  class DnsClient
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def lookup(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.lookup(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lookup(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling lookup(name,handler)"
    end
    def lookup4(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.lookup4(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lookup4(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling lookup4(name,handler)"
    end
    def lookup6(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.lookup6(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lookup6(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling lookup6(name,handler)"
    end
    def resolve_a(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveA(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_a(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_a(name,handler)"
    end
    def resolve_aaaa(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveAAAA(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_aaaa(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_aaaa(name,handler)"
    end
    def resolve_cname(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveCNAME(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_cname(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_cname(name,handler)"
    end
    def resolve_mx(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveMX(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::MxRecord.new(elt) } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_mx(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_mx(name,handler)"
    end
    def resolve_txt(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveTXT(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_txt(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_txt(name,handler)"
    end
    def resolve_ptr(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolvePTR(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_ptr(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_ptr(name,handler)"
    end
    def resolve_ns(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveNS(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_ns(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_ns(name,handler)"
    end
    def resolve_srv(name,&handler)
      if name.class == String
        if handler.class == Proc
          @j_del.resolveSRV(name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::SrvRecord.new(elt) } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_srv(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_srv(name,handler)"
    end
    def reverse_lookup(ipaddress,&handler)
      if ipaddress.class == String
        if handler.class == Proc
          @j_del.reverseLookup(ipaddress,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling reverse_lookup(ipaddress,handler)"
      end
      raise ArgumentError, "Invalid argument ipaddress=#{ipaddress} when calling reverse_lookup(ipaddress,handler)"
    end
  end
end

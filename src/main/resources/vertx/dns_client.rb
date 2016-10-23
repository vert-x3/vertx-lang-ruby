require 'vertx/mx_record'
require 'vertx/srv_record'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.DnsClient
module Vertx
  #  Provides a way to asynchronously lookup information from DNS servers.
  #  <p>
  #  Please consult the documentation for more information on DNS clients.
  class DnsClient
    # @private
    # @param j_del [::Vertx::DnsClient] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::DnsClient] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      DnsClient.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreDns::DnsClient.java_class
    end
    #  Try to lookup the A (ipv4) or AAAA (ipv6) record for the given name. The first found will be used.
    # @param [String] name the name to resolve
    # @yield the {Proc} to notify with the {AsyncResult}. The handler will get notified with the resolved address if a record was found. If non was found it will get notifed with <code>null</code>. If an error accours it will get failed.
    # @return [self]
    def lookup(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:lookup, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling lookup(name)"
    end
    #  Try to lookup the A (ipv4) record for the given name. The first found will be used.
    # @param [String] name the name to resolve
    # @yield the  to notify with the {AsyncResult}. The handler will get notified with the resolved Inet4Address if a record was found. If non was found it will get notifed with <code>null</code>. If an error accours it will get failed.
    # @return [self]
    def lookup4(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:lookup4, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling lookup4(name)"
    end
    #  Try to lookup the AAAA (ipv6) record for the given name. The first found will be used.
    # @param [String] name the name to resolve
    # @yield the  to notify with the . The handler will get notified with the resolved Inet6Address if a record was found. If non was found it will get notifed with <code>null</code>. If an error accours it will get failed.
    # @return [self]
    def lookup6(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:lookup6, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling lookup6(name)"
    end
    #  Try to resolve all A (ipv4) records for the given name.
    # @param [String] name the name to resolve
    # @yield the {Proc} to notify with the {AsyncResult}. The handler will get notified with a List that contains all the resolved Inet4Addresses. If none was found an empty List will be used. If an error accours it will get failed.
    # @return [self]
    def resolve_a(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveA, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_a(name)"
    end
    #  Try to resolve all AAAA (ipv6) records for the given name.
    # @param [String] name the name to resolve
    # @yield the {Proc} to notify with the {AsyncResult}. The handler will get notified with a List that contains all the resolved Inet6Addresses. If none was found an empty List will be used. If an error accours it will get failed.
    # @return [self]
    def resolve_aaaa(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveAAAA, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_aaaa(name)"
    end
    #  Try to resolve the CNAME record for the given name.
    # @param [String] name the name to resolve the CNAME for
    # @yield the  to notify with the . The handler will get notified with the resolved String if a record was found. If none was found it will get notified with <code>null</code>. If an error accours it will get failed.
    # @return [self]
    def resolve_cname(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveCNAME, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_cname(name)"
    end
    #  Try to resolve the MX records for the given name.
    # @param [String] name the name for which the MX records should be resolved
    # @yield the {Proc} to notify with the {AsyncResult}. The handler will get notified with a List that contains all resolved {::Vertx::MxRecord}s, sorted by their {::Vertx::MxRecord#priority}. If non was found it will get notified with an empty List. If an error accours it will get failed.
    # @return [self]
    def resolve_mx(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveMX, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Vertx::MxRecord) } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_mx(name)"
    end
    #  Try to resolve the TXT records for the given name.
    # @param [String] name the name for which the TXT records should be resolved
    # @yield the  to notify with the . The handler will get notified with a List that contains all resolved Strings. If none was found it will get notified with an empty List. If an error accours it will get failed.
    # @return [self]
    def resolve_txt(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveTXT, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_txt(name)"
    end
    #  Try to resolve the PTR record for the given name.
    # @param [String] name the name to resolve the PTR for
    # @yield the  to notify with the . The handler will get notified with the resolved String if a record was found. If none was found it will get notified with <code>null</code>. If an error accours it will get failed.
    # @return [self]
    def resolve_ptr(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolvePTR, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_ptr(name)"
    end
    #  Try to resolve the NS records for the given name.
    # @param [String] name the name for which the NS records should be resolved
    # @yield the  to notify with the . The handler will get notified with a List that contains all resolved Strings. If none was found it will get notified with an empty List. If an error accours it will get failed.
    # @return [self]
    def resolve_ns(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveNS, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_ns(name)"
    end
    #  Try to resolve the SRV records for the given name.
    # @param [String] name the name for which the SRV records should be resolved
    # @yield the  to notify with the . The handler will get notified with a List that contains all resolved {::Vertx::SrvRecord}s. If none was found it will get notified with an empty List. If an error accours it will get failed.
    # @return [self]
    def resolve_srv(name=nil)
      if name.class == String && block_given?
        @j_del.java_method(:resolveSRV, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(name,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Vertx::SrvRecord) } : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resolve_srv(name)"
    end
    #  Try to do a reverse lookup of an IP address. This is basically the same as doing trying to resolve a PTR record
    #  but allows you to just pass in the IP address and not a valid ptr query string.
    # @param [String] ipaddress the IP address to resolve the PTR for
    # @yield the  to notify with the . The handler will get notified with the resolved String if a record was found. If none was found it will get notified with <code>null</code>. If an error accours it will get failed.
    # @return [self]
    def reverse_lookup(ipaddress=nil)
      if ipaddress.class == String && block_given?
        @j_del.java_method(:reverseLookup, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(ipaddress,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling reverse_lookup(ipaddress)"
    end
  end
end

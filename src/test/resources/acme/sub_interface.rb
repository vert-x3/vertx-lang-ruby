require 'vertx/util/utils.rb'
# Generated from com.acme.pkg.sub.SubInterface
module Acme
  class SubInterface
    # @private
    # @param j_del [::Acme::SubInterface] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Acme::SubInterface] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      SubInterface.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::ComAcmePkgSub::SubInterface.java_class
    end
    # @param [String] s 
    # @return [String]
    def reverse(s=nil)
      if s.class == String && !block_given?
        return @j_del.java_method(:reverse, [Java::java.lang.String.java_class]).call(s)
      end
      raise ArgumentError, "Invalid arguments when calling reverse(s)"
    end
  end
end

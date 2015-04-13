require 'vertx/util/utils.rb'
# Generated from com.acme.pkg.sub.SubInterface
module Acme
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
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
    # @param [String] s
    # @return [String]
    def reverse(s)
      if s.class == String
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:reverse,Java::java.lang.String.java_class))).invoke(@j_del,s)
      end
      raise ArgumentError, "Invalid argument s=#{s} when calling reverse(s)"
    end
  end
end

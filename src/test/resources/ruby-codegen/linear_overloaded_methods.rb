require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.LinearOverloadedMethods
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class LinearOverloadedMethods
    # @private
    # @param j_del [::RubyCodegen::LinearOverloadedMethods] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::LinearOverloadedMethods] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [String] foo
    # @param [String] bar
    # @param [String] juu
    # @param [String] daa
    # return [void]
    def method(foo=nil,bar=nil,juu=nil,daa=nil)
      if foo.class == String
        if bar.class == String
          if juu.class == String
            if daa.class == String
              return @j_del.method(foo,bar,juu,daa)
            end
            return @j_del.method(foo,bar,juu)
          end
          raise ArgumentError, "Invalid argument juu=#{juu} when calling method(foo,bar,juu,daa)"
        end
        return @j_del.method(foo)
      end
      @j_del.method
    end
  end
end

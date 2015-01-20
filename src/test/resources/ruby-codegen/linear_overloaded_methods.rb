require 'vertx/util/utils.rb'
    # @param j_del [::RubyCodegen::LinearOverloadedMethods] the java delegate
    # @private
# Generated from io.vertx.test.support.LinearOverloadedMethods
module RubyCodegen
  class LinearOverloadedMethods
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
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

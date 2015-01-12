require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.LinearOverloadedMethods
module RubyCodegen
  class LinearOverloadedMethods
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def method(foo=nil,bar=nil,juu=nil,daa=nil)
      if foo != nil && foo.class == String
        if bar != nil && bar.class == String
          if juu != nil && juu.class == String
            if daa != nil && daa.class == String
              return @j_del.method(foo,bar,juu,daa)
            end
            return @j_del.method(foo,bar,juu)
          end
          raise ArgumentError, 'dispatch error'
        end
        return @j_del.method(foo)
      end
      @j_del.method
    end
  end
end

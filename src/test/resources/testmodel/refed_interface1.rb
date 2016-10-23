require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.RefedInterface1
module Testmodel
  class RefedInterface1
    # @private
    # @param j_del [::Testmodel::RefedInterface1] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::RefedInterface1] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      RefedInterface1.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::RefedInterface1.java_class
    end
    # @return [String]
    def get_string
      if !block_given?
        return @j_del.java_method(:getString, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_string()"
    end
    # @param [String] str 
    # @return [self]
    def set_string(str=nil)
      if str.class == String && !block_given?
        @j_del.java_method(:setString, [Java::java.lang.String.java_class]).call(str)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_string(str)"
    end
  end
end

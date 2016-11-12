require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.RefedInterface2
module Testmodel
  module RefedInterface2
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
  class RefedInterface2Impl
    include RefedInterface2
    # @private
    # @param j_del [::Testmodel::RefedInterface2] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::RefedInterface2] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == RefedInterface2
    end
    def @@j_api_type.wrap(obj)
      RefedInterface2.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::RefedInterface2.java_class
    end
  end
end

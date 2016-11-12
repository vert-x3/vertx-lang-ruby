require 'testmodel/generic_refed_interface'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.InterfaceWithStringArg
module Testmodel
  class InterfaceWithStringArg < ::Testmodel::GenericRefedInterface
    # @private
    # @param j_del [::Testmodel::InterfaceWithStringArg] the java delegate
    def initialize(j_del)
      super(j_del, nil)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::InterfaceWithStringArg] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == InterfaceWithStringArg
    end
    def @@j_api_type.wrap(obj)
      InterfaceWithStringArg.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::InterfaceWithStringArg.java_class
    end
    # @param [String] value 
    # @return [void]
    def set_value(value=nil)
      if value.class == String && !block_given?
        return @j_del.java_method(:setValue, [Java::java.lang.String.java_class]).call(value)
      end
      raise ArgumentError, "Invalid arguments when calling set_value(value)"
    end
    # @return [String]
    def get_value
      if !block_given?
        return @j_del.java_method(:getValue, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_value()"
    end
    # @return [void]
    def meth
      if !block_given?
        return @j_del.java_method(:meth, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling meth()"
    end
  end
end

require 'testmodel/generic_refed_interface'
require 'testmodel/refed_interface1'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.InterfaceWithApiArg
module Testmodel
  class InterfaceWithApiArg < ::Testmodel::GenericRefedInterface
    # @private
    # @param j_del [::Testmodel::InterfaceWithApiArg] the java delegate
    def initialize(j_del)
      super(j_del, ::Testmodel::RefedInterface1.j_api_type)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::InterfaceWithApiArg] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == InterfaceWithApiArg
    end
    def @@j_api_type.wrap(obj)
      InterfaceWithApiArg.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::InterfaceWithApiArg.java_class
    end
    # @param [::Testmodel::RefedInterface1] value 
    # @return [self]
    def set_value(value=nil)
      if value.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:setValue, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(value.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_value(#{value})"
    end
    # @return [::Testmodel::RefedInterface1]
    def get_value
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:getValue, []).call(),::Testmodel::RefedInterface1)
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

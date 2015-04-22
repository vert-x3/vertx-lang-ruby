require 'testmodel/refed_interface1'
require 'testmodel/concrete_handler_user_type'
require 'testmodel/abstract_handler_user_type'
require 'testmodel/concrete_handler_user_type_extension'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.Factory
module Testmodel
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class Factory
    # @private
    # @param j_del [::Testmodel::Factory] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::Factory] the underlying java delegate
    def j_del
      @j_del
    end
    # @yield 
    # @return [::Testmodel::ConcreteHandlerUserType]
    def self.create_concrete_handler_user_type
      if block_given?
        return ::Testmodel::ConcreteHandlerUserType.new(Java::IoVertxCodegenTestmodel::Factory.java_method(:createConcreteHandlerUserType, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Testmodel::RefedInterface1.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling create_concrete_handler_user_type()"
    end
    # @yield 
    # @return [::Testmodel::AbstractHandlerUserType]
    def self.create_abstract_handler_user_type
      if block_given?
        return ::Testmodel::AbstractHandlerUserTypeImpl.new(Java::IoVertxCodegenTestmodel::Factory.java_method(:createAbstractHandlerUserType, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Testmodel::RefedInterface1.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling create_abstract_handler_user_type()"
    end
    # @yield 
    # @return [::Testmodel::ConcreteHandlerUserTypeExtension]
    def self.create_concrete_handler_user_type_extension
      if block_given?
        return ::Testmodel::ConcreteHandlerUserTypeExtension.new(Java::IoVertxCodegenTestmodel::Factory.java_method(:createConcreteHandlerUserTypeExtension, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Testmodel::RefedInterface1.new(event)) })))
      end
      raise ArgumentError, "Invalid arguments when calling create_concrete_handler_user_type_extension()"
    end
  end
end

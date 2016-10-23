require 'testmodel/refed_interface1'
require 'testmodel/concrete_handler_user_type'
require 'testmodel/abstract_handler_user_type'
require 'testmodel/concrete_handler_user_type_extension'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.Factory
module Testmodel
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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      Factory.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::Factory.java_class
    end
    # @yield 
    # @return [::Testmodel::ConcreteHandlerUserType]
    def self.create_concrete_handler_user_type
      if block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCodegenTestmodel::Factory.java_method(:createConcreteHandlerUserType, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::RefedInterface1)) })),::Testmodel::ConcreteHandlerUserType)
      end
      raise ArgumentError, "Invalid arguments when calling create_concrete_handler_user_type()"
    end
    # @yield 
    # @return [::Testmodel::AbstractHandlerUserType]
    def self.create_abstract_handler_user_type
      if block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCodegenTestmodel::Factory.java_method(:createAbstractHandlerUserType, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::RefedInterface1)) })),::Testmodel::AbstractHandlerUserTypeImpl)
      end
      raise ArgumentError, "Invalid arguments when calling create_abstract_handler_user_type()"
    end
    # @yield 
    # @return [::Testmodel::ConcreteHandlerUserTypeExtension]
    def self.create_concrete_handler_user_type_extension
      if block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCodegenTestmodel::Factory.java_method(:createConcreteHandlerUserTypeExtension, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::RefedInterface1)) })),::Testmodel::ConcreteHandlerUserTypeExtension)
      end
      raise ArgumentError, "Invalid arguments when calling create_concrete_handler_user_type_extension()"
    end
  end
end

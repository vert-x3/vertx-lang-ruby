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
    # @param [Proc] handler
    # @return [::Testmodel::ConcreteHandlerUserType]
    def self.create_concrete_handler_user_type(&handler)
      if handler.class == Proc
        return ::Testmodel::ConcreteHandlerUserType.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCodegenTestmodel::Factory.java_class.declared_method(:createConcreteHandlerUserType,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Testmodel::RefedInterface1.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling create_concrete_handler_user_type(handler)"
    end
    # @param [Proc] handler
    # @return [::Testmodel::AbstractHandlerUserType]
    def self.create_abstract_handler_user_type(&handler)
      if handler.class == Proc
        return ::Testmodel::AbstractHandlerUserTypeImpl.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCodegenTestmodel::Factory.java_class.declared_method(:createAbstractHandlerUserType,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Testmodel::RefedInterface1.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling create_abstract_handler_user_type(handler)"
    end
    # @param [Proc] handler
    # @return [::Testmodel::ConcreteHandlerUserTypeExtension]
    def self.create_concrete_handler_user_type_extension(&handler)
      if handler.class == Proc
        return ::Testmodel::ConcreteHandlerUserTypeExtension.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCodegenTestmodel::Factory.java_class.declared_method(:createConcreteHandlerUserTypeExtension,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Testmodel::RefedInterface1.new(event)) })))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling create_concrete_handler_user_type_extension(handler)"
    end
  end
end

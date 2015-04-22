require 'testmodel/refed_interface1'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.ConcreteHandlerUserType
module Testmodel
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class ConcreteHandlerUserType
    # @private
    # @param j_del [::Testmodel::ConcreteHandlerUserType] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::ConcreteHandlerUserType] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [::Testmodel::RefedInterface1] arg0
    # @return [void]
    def handle(arg0=nil)
      if arg0.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handle, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(arg0.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle(arg0)"
    end
  end
end

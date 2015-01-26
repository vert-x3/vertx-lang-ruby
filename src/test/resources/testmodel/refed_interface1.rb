require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.RefedInterface1
module Testmodel
  #  @author <a href="http://tfox.org">Tim Fox</a>
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
    # @return [String]
    def get_string
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getString))).invoke(@j_del)
    end
    # @param [String] str
    # return [self]
    def set_string(str)
      if str.class == String
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setString,Java::java.lang.String.java_class))).invoke(@j_del,str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling set_string(str)"
    end
  end
end

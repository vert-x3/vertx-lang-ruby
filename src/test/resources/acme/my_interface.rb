require 'acme/sub_interface'
require 'testmodel/test_interface'
require 'vertx/util/utils.rb'
# Generated from com.acme.pkg.MyInterface
module Acme
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class MyInterface
    # @private
    # @param j_del [::Acme::MyInterface] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Acme::MyInterface] the underlying java delegate
    def j_del
      @j_del
    end
    # @return [::Acme::MyInterface]
    def self.create
      if !block_given?
        return ::Acme::MyInterface.new(Java::ComAcmePkg::MyInterface.java_method(:create, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling create()"
    end
    # @return [::Acme::SubInterface]
    def sub
      if !block_given?
        return ::Acme::SubInterface.new(@j_del.java_method(:sub, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling sub()"
    end
    # @return [::Testmodel::TestInterface]
    def method
      if !block_given?
        return ::Testmodel::TestInterface.new(@j_del.java_method(:method, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling method()"
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.SuperInterface2
module Testmodel
  module SuperInterface2
    # @param [Fixnum] b
    # @param [Fixnum] s
    # @param [Fixnum] i
    # @param [Fixnum] l
    # @param [Float] f
    # @param [Float] d
    # @param [true,false] bool
    # @param [Fixnum] ch
    # @param [String] str
    # @return [void]
    def other_super_method_with_basic_params(b=nil,s=nil,i=nil,l=nil,f=nil,d=nil,bool=nil,ch=nil,str=nil)
      if b.class == Fixnum && s.class == Fixnum && i.class == Fixnum && l.class == Fixnum && f.class == Float && d.class == Float && (bool.class == TrueClass || bool.class == FalseClass) && ch.class == Fixnum && str.class == String && !block_given?
        return @j_del.java_method(:otherSuperMethodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
      end
      raise ArgumentError, "Invalid arguments when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
  end
  class SuperInterface2Impl
    include SuperInterface2
    # @private
    # @param j_del [::Testmodel::SuperInterface2] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::SuperInterface2] the underlying java delegate
    def j_del
      @j_del
    end
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.SuperInterface1
module Testmodel
  class SuperInterface1
    # @private
    # @param j_del [::Testmodel::SuperInterface1] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::SuperInterface1] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == SuperInterface1
    end
    def @@j_api_type.wrap(obj)
      SuperInterface1.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::SuperInterface1.java_class
    end
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
    def super_method_with_basic_params(b=nil,s=nil,i=nil,l=nil,f=nil,d=nil,bool=nil,ch=nil,str=nil)
      if b.class == Fixnum && s.class == Fixnum && i.class == Fixnum && l.class == Fixnum && f.class == Float && d.class == Float && (bool.class == TrueClass || bool.class == FalseClass) && ch.class == Fixnum && str.class == String && !block_given?
        return @j_del.java_method(:superMethodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,::Vertx::Util::Utils.to_character(ch),str)
      end
      raise ArgumentError, "Invalid arguments when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
    # @return [Fixnum]
    def super_method_overloaded_by_subclass
      if !block_given?
        return @j_del.java_method(:superMethodOverloadedBySubclass, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling super_method_overloaded_by_subclass()"
    end
  end
end

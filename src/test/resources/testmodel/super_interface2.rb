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
    def other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      if str.class == String
                        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:otherSuperMethodWithBasicParams,Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
                      end
                      raise ArgumentError, "Invalid argument str=#{str} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                    end
                    raise ArgumentError, "Invalid argument ch=#{ch} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                  end
                  raise ArgumentError, "Invalid argument bool=#{bool} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                end
                raise ArgumentError, "Invalid argument d=#{d} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
              end
              raise ArgumentError, "Invalid argument f=#{f} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
            end
            raise ArgumentError, "Invalid argument l=#{l} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
          end
          raise ArgumentError, "Invalid argument i=#{i} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
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

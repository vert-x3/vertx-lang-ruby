require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.SuperInterface1
module Testmodel
  class SuperInterface1
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      if str.class == String
                        return @j_del.superMethodWithBasicParams(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
                      end
                      raise ArgumentError, "Invalid argument str=#{str} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                    end
                    raise ArgumentError, "Invalid argument ch=#{ch} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                  end
                  raise ArgumentError, "Invalid argument bool=#{bool} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                end
                raise ArgumentError, "Invalid argument d=#{d} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
              end
              raise ArgumentError, "Invalid argument f=#{f} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
            end
            raise ArgumentError, "Invalid argument l=#{l} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
          end
          raise ArgumentError, "Invalid argument i=#{i} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
  end
end

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
      if b != nil && b.class == Fixnum
        if s != nil && s.class == Fixnum
          if i != nil && i.class == Fixnum
            if l != nil && l.class == Fixnum
              if f != nil && f.class == Float
                if d != nil && d.class == Float
                  if bool != nil && (bool.class == TrueClass || bool.class == FalseClass)
                    if ch != nil && ch.class == Fixnum
                      if str != nil && str.class == String
                        return @j_del.superMethodWithBasicParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),i,l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch,str)
                      end
                      raise ArgumentError, 'dispatch error'
                    end
                    raise ArgumentError, 'dispatch error'
                  end
                  raise ArgumentError, 'dispatch error'
                end
                raise ArgumentError, 'dispatch error'
              end
              raise ArgumentError, 'dispatch error'
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

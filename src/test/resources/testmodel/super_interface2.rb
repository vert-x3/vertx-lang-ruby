require 'vertx/util/utils.rb'
module Testmodel
  module SuperInterface2
    def other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)
      if b != nil && b.class == Fixnum
        if s != nil && s.class == Fixnum
          if i != nil && i.class == Fixnum
            if l != nil && l.class == Fixnum
              if f != nil && f.class == Float
                if d != nil && d.class == Float
                  if bool != nil && (bool.class == TrueClass || bool.class == FalseClass)
                    if ch != nil && ch.class == Fixnum
                      if str != nil && str.class == String
                        return @j_del.otherSuperMethodWithBasicParams(b,s,i,l,f,d,bool,ch,str)
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

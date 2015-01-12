include_class 'io.vertx.codegen.testmodel.GenericRefedInterface'
include_class 'io.vertx.codegen.testmodel.RefedInterface1'
include_class 'io.vertx.codegen.testmodel.SuperInterface1'
include_class 'io.vertx.codegen.testmodel.RefedInterface2'
include_class 'io.vertx.codegen.testmodel.SuperInterface2'
include_class 'io.vertx.codegen.testmodel.TestOptions'
include_class 'io.vertx.codegen.testmodel.TestOptions'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.TestInterface
module Testmodel
  class TestInterface < Testmodel::SuperInterface1
    include Testmodel::SuperInterface2
    def initialize(j_del)
      super(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
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
                        return @j_del.otherSuperMethodWithBasicParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),i,l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch,str)
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
    def method_with_basic_params(b,s,i,l,f,d,bool,ch,str)
      if b != nil && b.class == Fixnum
        if s != nil && s.class == Fixnum
          if i != nil && i.class == Fixnum
            if l != nil && l.class == Fixnum
              if f != nil && f.class == Float
                if d != nil && d.class == Float
                  if bool != nil && (bool.class == TrueClass || bool.class == FalseClass)
                    if ch != nil && ch.class == Fixnum
                      if str != nil && str.class == String
                        return @j_del.methodWithBasicParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),i,l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch,str)
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
    def method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)
      if b != nil && b.class == Fixnum
        if s != nil && s.class == Fixnum
          if i != nil && i.class == Fixnum
            if l != nil && l.class == Fixnum
              if f != nil && f.class == Float
                if d != nil && d.class == Float
                  if bool != nil && (bool.class == TrueClass || bool.class == FalseClass)
                    if ch != nil && ch.class == Fixnum
                      return @j_del.methodWithBasicBoxedParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),Vertx::Util::Utils.to_integer(i),l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch)
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
    def method_with_handler_basic_types(byte_handler,short_handler,int_handler,long_handler,float_handler,double_handler,boolean_handler,char_handler,string_handler)
      if byte_handler != nil && byte_handler.class == Proc
        if short_handler != nil && short_handler.class == Proc
          if int_handler != nil && int_handler.class == Proc
            if long_handler != nil && long_handler.class == Proc
              if float_handler != nil && float_handler.class == Proc
                if double_handler != nil && double_handler.class == Proc
                  if boolean_handler != nil && boolean_handler.class == Proc
                    if char_handler != nil && char_handler.class == Proc
                      if string_handler != nil && string_handler.class == Proc
                        return @j_del.methodWithHandlerBasicTypes((Proc.new { |event| byte_handler.call(event) }),(Proc.new { |event| short_handler.call(event) }),(Proc.new { |event| int_handler.call(event) }),(Proc.new { |event| long_handler.call(event) }),(Proc.new { |event| float_handler.call(event) }),(Proc.new { |event| double_handler.call(event) }),(Proc.new { |event| boolean_handler.call(event) }),(Proc.new { |event| char_handler.call(event) }),(Proc.new { |event| string_handler.call(event) }))
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
    def method_with_handler_async_result_byte(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultByte(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_short(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultShort(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_integer(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultInteger(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_long(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultLong(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_float(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultFloat(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_double(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultDouble(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_boolean(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultBoolean(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_character(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultCharacter(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_string(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultString(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_options(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultOptions(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? JSON.parse(ar.result.toJson.encode) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_user_types(refed)
      if refed != nil && refed.class.method_defined?(:j_del)
        return @j_del.methodWithUserTypes(refed.j_del)
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_object_param(str,obj)
      if str != nil && str.class == String
        if obj != nil && (obj.class == String  ||obj.class == Hash || obj.class == Array)
          return @j_del.methodWithObjectParam(str,Vertx::Util::Utils.to_object(obj))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_options_param(options)
      if options == nil || options.class == Hash
        return @j_del.methodWithOptionsParam(options != nil ? TestOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil)
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_null_options_param(options)
      if options == nil || options.class == Hash
        return @j_del.methodWithNullOptionsParam(options != nil ? TestOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil)
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_list_params(list_string,list_byte,list_short,list_int,list_long,list_json_object,list_json_array,list_vertx_gen)
      if list_string == nil || list_string.class == Array
        if list_byte == nil || list_byte.class == Array
          if list_short == nil || list_short.class == Array
            if list_int == nil || list_int.class == Array
              if list_long == nil || list_long.class == Array
                if list_json_object == nil || list_json_object.class == Array
                  if list_json_array == nil || list_json_array.class == Array
                    if list_vertx_gen == nil || list_vertx_gen.class == Array
                      return @j_del.methodWithListParams(list_string.map { |element| element },list_byte.map { |element| Vertx::Util::Utils.to_byte(element) },list_short.map { |element| Vertx::Util::Utils.to_short(element) },list_int.map { |element| Vertx::Util::Utils.to_integer(element) },list_long.map { |element| element },list_json_object.map { |element| element != nil ? Vertx::Util::Utils.to_json_object(element) : nil },list_json_array.map { |element| element != nil ? Vertx::Util::Utils.to_json_array(element) : nil },list_vertx_gen.map { |element| element.j_del })
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
    def method_with_set_params(set_string,set_byte,set_short,set_int,set_long,set_json_object,set_json_array,set_vertx_gen)
      if set_string == nil || set_string.class == Set
        if set_byte == nil || set_byte.class == Set
          if set_short == nil || set_short.class == Set
            if set_int == nil || set_int.class == Set
              if set_long == nil || set_long.class == Set
                if set_json_object == nil || set_json_object.class == Set
                  if set_json_array == nil || set_json_array.class == Set
                    if set_vertx_gen == nil || set_vertx_gen.class == Set
                      return @j_del.methodWithSetParams(Java::JavaUtil::LinkedHashSet.new(set_string.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(set_byte.map { |element| Vertx::Util::Utils.to_byte(element) }),Java::JavaUtil::LinkedHashSet.new(set_short.map { |element| Vertx::Util::Utils.to_short(element) }),Java::JavaUtil::LinkedHashSet.new(set_int.map { |element| Vertx::Util::Utils.to_integer(element) }),Java::JavaUtil::LinkedHashSet.new(set_long.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(set_json_object.map { |element| element != nil ? Vertx::Util::Utils.to_json_object(element) : nil }),Java::JavaUtil::LinkedHashSet.new(set_json_array.map { |element| element != nil ? Vertx::Util::Utils.to_json_array(element) : nil }),Java::JavaUtil::LinkedHashSet.new(set_vertx_gen.map { |element| element.j_del }))
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
    def method_with_map_params(map_string,map_byte,map_short,map_int,map_long,map_json_object,map_json_array,map_vertx_gen)
      if map_string == nil || map_string.class == Hash
        if map_byte == nil || map_byte.class == Hash
          if map_short == nil || map_short.class == Hash
            if map_int == nil || map_int.class == Hash
              if map_long == nil || map_long.class == Hash
                if map_json_object == nil || map_json_object.class == Hash
                  if map_json_array == nil || map_json_array.class == Hash
                    if map_vertx_gen == nil || map_vertx_gen.class == Hash
                      return @j_del.methodWithMapParams(Hash[map_string.map { |k,v| [k,v] }],Hash[map_byte.map { |k,v| [k,Vertx::Util::Utils.to_byte(v)] }],Hash[map_short.map { |k,v| [k,Vertx::Util::Utils.to_short(v)] }],Hash[map_int.map { |k,v| [k,Vertx::Util::Utils.to_integer(v)] }],Hash[map_long.map { |k,v| [k,v] }],Hash[map_json_object.map { |k,v| [k,v != nil ? Vertx::Util::Utils.to_json_object(v) : nil] }],Hash[map_json_array.map { |k,v| [k,v != nil ? Vertx::Util::Utils.to_json_array(v) : nil] }],Hash[map_vertx_gen.map { |k,v| [k,v.j_del] }])
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
    def method_with_handler_list_and_set(list_string_handler,list_int_handler,set_string_handler,set_int_handler)
      if list_string_handler != nil && list_string_handler.class == Proc
        if list_int_handler != nil && list_int_handler.class == Proc
          if set_string_handler != nil && set_string_handler.class == Proc
            if set_int_handler != nil && set_int_handler.class == Proc
              return @j_del.methodWithHandlerListAndSet((Proc.new { |event| list_string_handler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| list_int_handler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| set_string_handler.call(event.to_set.map! { |elt| elt }) }),(Proc.new { |event| set_int_handler.call(event.to_set.map! { |elt| elt }) }))
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_string(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListString((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_integer(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListInteger((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_string(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetString((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_integer(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetInteger((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_list_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerListVertxGen((Proc.new { |event| list_handler.call(event.to_a.map { |elt| Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_set_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerSetVertxGen((Proc.new { |event| list_handler.call(event.to_set.map! { |elt| Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_list_abstract_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerListAbstractVertxGen((Proc.new { |event| list_handler.call(event.to_a.map { |elt| Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_set_abstract_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerSetAbstractVertxGen((Proc.new { |event| list_handler.call(event.to_set.map! { |elt| Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_list_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerListJsonObject((Proc.new { |event| list_handler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_list_null_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerListNullJsonObject((Proc.new { |event| list_handler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_set_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerSetJsonObject((Proc.new { |event| list_handler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_set_null_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerSetNullJsonObject((Proc.new { |event| list_handler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_list_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerListJsonArray((Proc.new { |event| list_handler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_list_null_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerListNullJsonArray((Proc.new { |event| list_handler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_set_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerSetJsonArray((Proc.new { |event| list_handler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_set_null_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerSetNullJsonArray((Proc.new { |event| list_handler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListVertxGen((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetVertxGen((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_abstract_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListAbstractVertxGen((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_abstract_vertx_gen(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetAbstractVertxGen((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListJsonObject((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_null_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListNullJsonObject((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetJsonObject((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_null_json_object(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetNullJsonObject((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListJsonArray((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_list_null_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListNullJsonArray((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetJsonArray((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_set_null_json_array(list_handler)
      if list_handler != nil && list_handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetNullJsonArray((Proc.new { |ar| list_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_user_types(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerUserTypes((Proc.new { |event| handler.call(Testmodel::RefedInterface1.new(event)) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_user_types(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultUserTypes((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Testmodel::RefedInterface1.new(ar.result) : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_void(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerVoid(handler)
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_void(send_failure,handler)
      if send_failure != nil && (send_failure.class == TrueClass || send_failure.class == FalseClass)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultVoid(send_failure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_throwable(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerThrowable((Proc.new { |event| handler.call(event) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_options(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerOptions((Proc.new { |event| handler.call(JSON.parse(event.toJson.encode)) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_generic_user_type(value,handler)
      if value != nil && (value.class == String  ||value.class == Hash || value.class == Array)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerGenericUserType(Vertx::Util::Utils.to_object(value),(Proc.new { |event| handler.call(Testmodel::GenericRefedInterface.new(event)) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_generic_user_type(value,handler)
      if value != nil && (value.class == String  ||value.class == Hash || value.class == Array)
        if handler != nil && handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultGenericUserType(Vertx::Util::Utils.to_object(value),(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Testmodel::GenericRefedInterface.new(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_byte_return()
      @j_del.methodWithByteReturn
    end
    def method_with_short_return()
      @j_del.methodWithShortReturn
    end
    def method_with_int_return()
      @j_del.methodWithIntReturn
    end
    def method_with_long_return()
      @j_del.methodWithLongReturn
    end
    def method_with_float_return()
      @j_del.methodWithFloatReturn
    end
    def method_with_double_return()
      @j_del.methodWithDoubleReturn
    end
    def method_with_boolean_return()
      @j_del.methodWithBooleanReturn
    end
    def method_with_char_return()
      @j_del.methodWithCharReturn
    end
    def method_with_string_return()
      @j_del.methodWithStringReturn
    end
    def method_with_vertx_gen_return()
      Testmodel::RefedInterface1.new(@j_del.methodWithVertxGenReturn)
    end
    def method_with_abstract_vertx_gen_return()
      Testmodel::RefedInterface2Impl.new(@j_del.methodWithAbstractVertxGenReturn)
    end
    def overloaded_method(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == Proc
              return @j_del.overloadedMethod(param_1,(Proc.new { |event| param_2.call(event) }))
            end
            if param_2 != nil && param_2.class.method_defined?(:j_del)
                if param_3 != nil && param_3.class == Proc
                  return @j_del.overloadedMethod(param_1,param_2.j_del,(Proc.new { |event| param_3.call(event) }))
                end
                if param_3 != nil && param_3.class == Fixnum
                    if param_4 != nil && param_4.class == Proc
                      return @j_del.overloadedMethod(param_1,param_2.j_del,param_3,(Proc.new { |event| param_4.call(event) }))
                    end
                  raise ArgumentError, 'dispatch error'
                end
              return @j_del.overloadedMethod(param_1,param_2.j_del)
            end
          raise ArgumentError, 'dispatch error'
        end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_generic_return(type)
      if type != nil && type.class == String
        return Vertx::Util::Utils.from_object(@j_del.methodWithGenericReturn(type))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_generic_param(type,u)
      if type != nil && type.class == String
        if u != nil && (u.class == String  ||u.class == Hash || u.class == Array)
          return @j_del.methodWithGenericParam(type,Vertx::Util::Utils.to_object(u))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_generic_handler(type,handler)
      if type != nil && type.class == String
        if handler != nil && handler.class == Proc
          return @j_del.methodWithGenericHandler(type,(Proc.new { |event| handler.call(Vertx::Util::Utils.from_object(event)) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_generic_handler_async_result(type,async_result_handler)
      if type != nil && type.class == String
        if async_result_handler != nil && async_result_handler.class == Proc
          return @j_del.methodWithGenericHandlerAsyncResult(type,(Proc.new { |ar| async_result_handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def fluent_method(str)
      if str != nil && str.class == String
        @j_del.fluentMethod(str)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def self.static_factory_method(foo)
      if foo != nil && foo.class == String
        return Testmodel::RefedInterface1.new(Java::IoVertxCodegenTestmodel::TestInterface.staticFactoryMethod(foo))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_cached_return(foo)
      if foo != nil && foo.class == String
          if @cached_method_with_cached_return != nil
            return @cached_method_with_cached_return
          end
        return @cached_method_with_cached_return = Testmodel::RefedInterface1.new(@j_del.methodWithCachedReturn(foo))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_json_object_return()
      @j_del.methodWithJsonObjectReturn != nil ? JSON.parse(@j_del.methodWithJsonObjectReturn.encode) : nil
    end
    def method_with_null_json_object_return()
      @j_del.methodWithNullJsonObjectReturn != nil ? JSON.parse(@j_del.methodWithNullJsonObjectReturn.encode) : nil
    end
    def method_with_json_array_return()
      @j_del.methodWithJsonArrayReturn != nil ? JSON.parse(@j_del.methodWithJsonArrayReturn.encode) : nil
    end
    def method_with_null_json_array_return()
      @j_del.methodWithNullJsonArrayReturn != nil ? JSON.parse(@j_del.methodWithNullJsonArrayReturn.encode) : nil
    end
    def method_with_json_params(json_object,json_array)
      if json_object == nil || json_object.class == Hash
        if json_array == nil || json_array.class == Array
          return @j_del.methodWithJsonParams(json_object != nil ? Vertx::Util::Utils.to_json_object(json_object) : nil,json_array != nil ? Vertx::Util::Utils.to_json_array(json_array) : nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_null_json_params(json_object,json_array)
      if json_object == nil || json_object.class == Hash
        if json_array == nil || json_array.class == Array
          return @j_del.methodWithNullJsonParams(json_object != nil ? Vertx::Util::Utils.to_json_object(json_object) : nil,json_array != nil ? Vertx::Util::Utils.to_json_array(json_array) : nil)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_json(json_object_handler,json_array_handler)
      if json_object_handler != nil && json_object_handler.class == Proc
        if json_array_handler != nil && json_array_handler.class == Proc
          return @j_del.methodWithHandlerJson((Proc.new { |event| json_object_handler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| json_array_handler.call(event != nil ? JSON.parse(event.encode) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_null_json(json_object_handler,json_array_handler)
      if json_object_handler != nil && json_object_handler.class == Proc
        if json_array_handler != nil && json_array_handler.class == Proc
          return @j_del.methodWithHandlerNullJson((Proc.new { |event| json_object_handler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| json_array_handler.call(event != nil ? JSON.parse(event.encode) : nil) }))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_json_object(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultJsonObject((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_null_json_object(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultNullJsonObject((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_json_array(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultJsonArray((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_handler_async_result_null_json_array(handler)
      if handler != nil && handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultNullJsonArray((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_string_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapStringReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_long_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapLongReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_integer_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapIntegerReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_short_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapShortReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_byte_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapByteReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_character_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapCharacterReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_boolean_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapBooleanReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_float_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapFloatReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_double_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapDoubleReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_json_object_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapJsonObjectReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_map_json_array_return(handler)
      if handler != nil && handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapJsonArrayReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_null_map_return()
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithNullMapReturn, Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_string(val) })
    end
    def method_with_list_string_return()
      @j_del.methodWithListStringReturn.to_a.map { |elt| elt }
    end
    def method_with_list_long_return()
      @j_del.methodWithListLongReturn.to_a.map { |elt| elt }
    end
    def method_with_list_vertx_gen_return()
      @j_del.methodWithListVertxGenReturn.to_a.map { |elt| Testmodel::RefedInterface1.new(elt) }
    end
    def method_with_list_json_object_return()
      @j_del.methodWithListJsonObjectReturn.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    def method_with_list_json_array_return()
      @j_del.methodWithListJsonArrayReturn.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    def method_with_null_list_return()
      @j_del.methodWithNullListReturn.to_a.map { |elt| elt }
    end
    def method_with_set_string_return()
      @j_del.methodWithSetStringReturn.to_set.map! { |elt| elt }
    end
    def method_with_set_long_return()
      @j_del.methodWithSetLongReturn.to_set.map! { |elt| elt }
    end
    def method_with_set_vertx_gen_return()
      @j_del.methodWithSetVertxGenReturn.to_set.map! { |elt| Testmodel::RefedInterface1.new(elt) }
    end
    def method_with_set_json_object_return()
      @j_del.methodWithSetJsonObjectReturn.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    def method_with_set_json_array_return()
      @j_del.methodWithSetJsonArrayReturn.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    def method_with_null_set_return()
      @j_del.methodWithNullSetReturn.to_set.map! { |elt| elt }
    end
    def method_with_enum_param(str_val,weirdo)
      if str_val != nil && str_val.class == String
        if weirdo != nil && weirdo.class == String
          return @j_del.methodWithEnumParam(str_val,Java::IoVertxCodegenTestmodel::TestEnum.valueOf(weirdo))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_enum_return(str_val)
      if str_val != nil && str_val.class == String
        return @j_del.methodWithEnumReturn(str_val).name
      end
      raise ArgumentError, 'dispatch error'
    end
    def method_with_throwable_return(str_val)
      if str_val != nil && str_val.class == String
        return @j_del.methodWithThrowableReturn(str_val)
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

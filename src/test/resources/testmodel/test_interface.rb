require 'testmodel/generic_refed_interface'
require 'testmodel/refed_interface1'
require 'testmodel/super_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/super_interface2'
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
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      if str.class == String
                        return @j_del.otherSuperMethodWithBasicParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),i,l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch,str)
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
    def method_with_basic_params(b,s,i,l,f,d,bool,ch,str)
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      if str.class == String
                        return @j_del.methodWithBasicParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),i,l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch,str)
                      end
                      raise ArgumentError, "Invalid argument str=#{str} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                    end
                    raise ArgumentError, "Invalid argument ch=#{ch} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                  end
                  raise ArgumentError, "Invalid argument bool=#{bool} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                end
                raise ArgumentError, "Invalid argument d=#{d} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
              end
              raise ArgumentError, "Invalid argument f=#{f} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
            end
            raise ArgumentError, "Invalid argument l=#{l} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
          end
          raise ArgumentError, "Invalid argument i=#{i} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
    def method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      return @j_del.methodWithBasicBoxedParams(Vertx::Util::Utils.to_byte(b),Vertx::Util::Utils.to_short(s),Vertx::Util::Utils.to_integer(i),l,Vertx::Util::Utils.to_float(f),Vertx::Util::Utils.to_double(d),bool,ch)
                    end
                    raise ArgumentError, "Invalid argument ch=#{ch} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
                  end
                  raise ArgumentError, "Invalid argument bool=#{bool} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
                end
                raise ArgumentError, "Invalid argument d=#{d} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
              end
              raise ArgumentError, "Invalid argument f=#{f} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
            end
            raise ArgumentError, "Invalid argument l=#{l} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
          end
          raise ArgumentError, "Invalid argument i=#{i} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
    end
    def method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,&stringHandler)
      if byteHandler.class == Proc
        if shortHandler.class == Proc
          if intHandler.class == Proc
            if longHandler.class == Proc
              if floatHandler.class == Proc
                if doubleHandler.class == Proc
                  if booleanHandler.class == Proc
                    if charHandler.class == Proc
                      if stringHandler.class == Proc
                        return @j_del.methodWithHandlerBasicTypes((Proc.new { |event| byteHandler.call(event) }),(Proc.new { |event| shortHandler.call(event) }),(Proc.new { |event| intHandler.call(event) }),(Proc.new { |event| longHandler.call(event) }),(Proc.new { |event| floatHandler.call(event) }),(Proc.new { |event| doubleHandler.call(event) }),(Proc.new { |event| booleanHandler.call(event) }),(Proc.new { |event| charHandler.call(event) }),(Proc.new { |event| stringHandler.call(event) }))
                      end
                      raise ArgumentError, "Invalid argument stringHandler=#{stringHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
                    end
                    raise ArgumentError, "Invalid argument charHandler=#{charHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
                  end
                  raise ArgumentError, "Invalid argument booleanHandler=#{booleanHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
                end
                raise ArgumentError, "Invalid argument doubleHandler=#{doubleHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
              end
              raise ArgumentError, "Invalid argument floatHandler=#{floatHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
            end
            raise ArgumentError, "Invalid argument longHandler=#{longHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
          end
          raise ArgumentError, "Invalid argument intHandler=#{intHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
        end
        raise ArgumentError, "Invalid argument shortHandler=#{shortHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
      end
      raise ArgumentError, "Invalid argument byteHandler=#{byteHandler} when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler,stringHandler)"
    end
    def method_with_handler_async_result_byte(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultByte(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_byte(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_byte(sendFailure,handler)"
    end
    def method_with_handler_async_result_short(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultShort(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_short(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_short(sendFailure,handler)"
    end
    def method_with_handler_async_result_integer(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultInteger(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_integer(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_integer(sendFailure,handler)"
    end
    def method_with_handler_async_result_long(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultLong(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_long(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_long(sendFailure,handler)"
    end
    def method_with_handler_async_result_float(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultFloat(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_float(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_float(sendFailure,handler)"
    end
    def method_with_handler_async_result_double(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultDouble(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_double(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_double(sendFailure,handler)"
    end
    def method_with_handler_async_result_boolean(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultBoolean(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_boolean(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_boolean(sendFailure,handler)"
    end
    def method_with_handler_async_result_character(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultCharacter(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_character(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_character(sendFailure,handler)"
    end
    def method_with_handler_async_result_string(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultString(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_string(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_string(sendFailure,handler)"
    end
    def method_with_handler_async_result_options(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultOptions(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? JSON.parse(ar.result.toJson.encode) : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_options(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_options(sendFailure,handler)"
    end
    def method_with_user_types(refed)
      if refed.class.method_defined?(:j_del)
        return @j_del.methodWithUserTypes(refed.j_del)
      end
      raise ArgumentError, "Invalid argument refed=#{refed} when calling method_with_user_types(refed)"
    end
    def method_with_object_param(str,obj)
      if str.class == String
        if obj.class == String  ||obj.class == Hash || obj.class == Array
          return @j_del.methodWithObjectParam(str,Vertx::Util::Utils.to_object(obj))
        end
        raise ArgumentError, "Invalid argument obj=#{obj} when calling method_with_object_param(str,obj)"
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling method_with_object_param(str,obj)"
    end
    def method_with_options_param(options)
      if options == nil || options.class == Hash
        return @j_del.methodWithOptionsParam(options != nil ? Java::IoVertxCodegenTestmodel::TestOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil)
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling method_with_options_param(options)"
    end
    def method_with_null_options_param(options)
      if options == nil || options.class == Hash
        return @j_del.methodWithNullOptionsParam(options != nil ? Java::IoVertxCodegenTestmodel::TestOptions.new(Vertx::Util::Utils.to_json_object(options)) : nil)
      end
      raise ArgumentError, "Invalid argument options=#{options} when calling method_with_null_options_param(options)"
    end
    def method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)
      if listString.class == Array
        if listByte.class == Array
          if listShort.class == Array
            if listInt.class == Array
              if listLong.class == Array
                if listJsonObject.class == Array
                  if listJsonArray.class == Array
                    if listVertxGen.class == Array
                      return @j_del.methodWithListParams(listString.map { |element| element },listByte.map { |element| Vertx::Util::Utils.to_byte(element) },listShort.map { |element| Vertx::Util::Utils.to_short(element) },listInt.map { |element| Vertx::Util::Utils.to_integer(element) },listLong.map { |element| element },listJsonObject.map { |element| element != nil ? Vertx::Util::Utils.to_json_object(element) : nil },listJsonArray.map { |element| element != nil ? Vertx::Util::Utils.to_json_array(element) : nil },listVertxGen.map { |element| element.j_del })
                    end
                    raise ArgumentError, "Invalid argument listVertxGen=#{listVertxGen} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
                  end
                  raise ArgumentError, "Invalid argument listJsonArray=#{listJsonArray} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
                end
                raise ArgumentError, "Invalid argument listJsonObject=#{listJsonObject} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
              end
              raise ArgumentError, "Invalid argument listLong=#{listLong} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
            end
            raise ArgumentError, "Invalid argument listInt=#{listInt} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
          end
          raise ArgumentError, "Invalid argument listShort=#{listShort} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
        end
        raise ArgumentError, "Invalid argument listByte=#{listByte} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
      end
      raise ArgumentError, "Invalid argument listString=#{listString} when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
    end
    def method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)
      if setString.class == Set
        if setByte.class == Set
          if setShort.class == Set
            if setInt.class == Set
              if setLong.class == Set
                if setJsonObject.class == Set
                  if setJsonArray.class == Set
                    if setVertxGen.class == Set
                      return @j_del.methodWithSetParams(Java::JavaUtil::LinkedHashSet.new(setString.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setByte.map { |element| Vertx::Util::Utils.to_byte(element) }),Java::JavaUtil::LinkedHashSet.new(setShort.map { |element| Vertx::Util::Utils.to_short(element) }),Java::JavaUtil::LinkedHashSet.new(setInt.map { |element| Vertx::Util::Utils.to_integer(element) }),Java::JavaUtil::LinkedHashSet.new(setLong.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setJsonObject.map { |element| element != nil ? Vertx::Util::Utils.to_json_object(element) : nil }),Java::JavaUtil::LinkedHashSet.new(setJsonArray.map { |element| element != nil ? Vertx::Util::Utils.to_json_array(element) : nil }),Java::JavaUtil::LinkedHashSet.new(setVertxGen.map { |element| element.j_del }))
                    end
                    raise ArgumentError, "Invalid argument setVertxGen=#{setVertxGen} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
                  end
                  raise ArgumentError, "Invalid argument setJsonArray=#{setJsonArray} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
                end
                raise ArgumentError, "Invalid argument setJsonObject=#{setJsonObject} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
              end
              raise ArgumentError, "Invalid argument setLong=#{setLong} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
            end
            raise ArgumentError, "Invalid argument setInt=#{setInt} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
          end
          raise ArgumentError, "Invalid argument setShort=#{setShort} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
        end
        raise ArgumentError, "Invalid argument setByte=#{setByte} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
      end
      raise ArgumentError, "Invalid argument setString=#{setString} when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
    end
    def method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)
      if mapString.class == Hash
        if mapByte.class == Hash
          if mapShort.class == Hash
            if mapInt.class == Hash
              if mapLong.class == Hash
                if mapJsonObject.class == Hash
                  if mapJsonArray.class == Hash
                    if mapVertxGen.class == Hash
                      return @j_del.methodWithMapParams(Hash[mapString.map { |k,v| [k,v] }],Hash[mapByte.map { |k,v| [k,Vertx::Util::Utils.to_byte(v)] }],Hash[mapShort.map { |k,v| [k,Vertx::Util::Utils.to_short(v)] }],Hash[mapInt.map { |k,v| [k,Vertx::Util::Utils.to_integer(v)] }],Hash[mapLong.map { |k,v| [k,v] }],Hash[mapJsonObject.map { |k,v| [k,v != nil ? Vertx::Util::Utils.to_json_object(v) : nil] }],Hash[mapJsonArray.map { |k,v| [k,v != nil ? Vertx::Util::Utils.to_json_array(v) : nil] }],Hash[mapVertxGen.map { |k,v| [k,v.j_del] }])
                    end
                    raise ArgumentError, "Invalid argument mapVertxGen=#{mapVertxGen} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
                  end
                  raise ArgumentError, "Invalid argument mapJsonArray=#{mapJsonArray} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
                end
                raise ArgumentError, "Invalid argument mapJsonObject=#{mapJsonObject} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
              end
              raise ArgumentError, "Invalid argument mapLong=#{mapLong} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
            end
            raise ArgumentError, "Invalid argument mapInt=#{mapInt} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
          end
          raise ArgumentError, "Invalid argument mapShort=#{mapShort} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
        end
        raise ArgumentError, "Invalid argument mapByte=#{mapByte} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
      end
      raise ArgumentError, "Invalid argument mapString=#{mapString} when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
    end
    def method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,&setIntHandler)
      if listStringHandler.class == Proc
        if listIntHandler.class == Proc
          if setStringHandler.class == Proc
            if setIntHandler.class == Proc
              return @j_del.methodWithHandlerListAndSet((Proc.new { |event| listStringHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| listIntHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| setStringHandler.call(event.to_set.map! { |elt| elt }) }),(Proc.new { |event| setIntHandler.call(event.to_set.map! { |elt| elt }) }))
            end
            raise ArgumentError, "Invalid argument setIntHandler=#{setIntHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
          end
          raise ArgumentError, "Invalid argument setStringHandler=#{setStringHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
        end
        raise ArgumentError, "Invalid argument listIntHandler=#{listIntHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
      end
      raise ArgumentError, "Invalid argument listStringHandler=#{listStringHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
    end
    def method_with_handler_async_result_list_string(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListString((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_list_string(handler)"
    end
    def method_with_handler_async_result_list_integer(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListInteger((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_list_integer(handler)"
    end
    def method_with_handler_async_result_set_string(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetString((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_set_string(handler)"
    end
    def method_with_handler_async_result_set_integer(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetInteger((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_set_integer(handler)"
    end
    def method_with_handler_list_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerListVertxGen((Proc.new { |event| listHandler.call(event.to_a.map { |elt| Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_vertx_gen(listHandler)"
    end
    def method_with_handler_set_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerSetVertxGen((Proc.new { |event| listHandler.call(event.to_set.map! { |elt| Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_vertx_gen(listHandler)"
    end
    def method_with_handler_list_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerListAbstractVertxGen((Proc.new { |event| listHandler.call(event.to_a.map { |elt| Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_abstract_vertx_gen(listHandler)"
    end
    def method_with_handler_set_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerSetAbstractVertxGen((Proc.new { |event| listHandler.call(event.to_set.map! { |elt| Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_abstract_vertx_gen(listHandler)"
    end
    def method_with_handler_list_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerListJsonObject((Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_json_object(listHandler)"
    end
    def method_with_handler_list_null_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerListNullJsonObject((Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_null_json_object(listHandler)"
    end
    def method_with_handler_set_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerSetJsonObject((Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_json_object(listHandler)"
    end
    def method_with_handler_set_null_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerSetNullJsonObject((Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_null_json_object(listHandler)"
    end
    def method_with_handler_list_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerListJsonArray((Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_json_array(listHandler)"
    end
    def method_with_handler_list_null_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerListNullJsonArray((Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_null_json_array(listHandler)"
    end
    def method_with_handler_set_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerSetJsonArray((Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_json_array(listHandler)"
    end
    def method_with_handler_set_null_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerSetNullJsonArray((Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_null_json_array(listHandler)"
    end
    def method_with_handler_async_result_list_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListVertxGen((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_vertx_gen(listHandler)"
    end
    def method_with_handler_async_result_set_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetVertxGen((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_vertx_gen(listHandler)"
    end
    def method_with_handler_async_result_list_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListAbstractVertxGen((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_abstract_vertx_gen(listHandler)"
    end
    def method_with_handler_async_result_set_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetAbstractVertxGen((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_abstract_vertx_gen(listHandler)"
    end
    def method_with_handler_async_result_list_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListJsonObject((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_json_object(listHandler)"
    end
    def method_with_handler_async_result_list_null_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListNullJsonObject((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_null_json_object(listHandler)"
    end
    def method_with_handler_async_result_set_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetJsonObject((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_json_object(listHandler)"
    end
    def method_with_handler_async_result_set_null_json_object(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetNullJsonObject((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_null_json_object(listHandler)"
    end
    def method_with_handler_async_result_list_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListJsonArray((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_json_array(listHandler)"
    end
    def method_with_handler_async_result_list_null_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultListNullJsonArray((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_null_json_array(listHandler)"
    end
    def method_with_handler_async_result_set_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetJsonArray((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_json_array(listHandler)"
    end
    def method_with_handler_async_result_set_null_json_array(&listHandler)
      if listHandler.class == Proc
        return @j_del.methodWithHandlerAsyncResultSetNullJsonArray((Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_null_json_array(listHandler)"
    end
    def method_with_handler_user_types(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerUserTypes((Proc.new { |event| handler.call(Testmodel::RefedInterface1.new(event)) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_user_types(handler)"
    end
    def method_with_handler_async_result_user_types(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultUserTypes((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Testmodel::RefedInterface1.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_user_types(handler)"
    end
    def method_with_handler_void(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerVoid(handler)
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_void(handler)"
    end
    def method_with_handler_async_result_void(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultVoid(sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_void(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_void(sendFailure,handler)"
    end
    def method_with_handler_throwable(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerThrowable((Proc.new { |event| handler.call(event) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_throwable(handler)"
    end
    def method_with_handler_options(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerOptions((Proc.new { |event| handler.call(JSON.parse(event.toJson.encode)) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_options(handler)"
    end
    def method_with_handler_generic_user_type(value,&handler)
      if value.class == String  ||value.class == Hash || value.class == Array
        if handler.class == Proc
          return @j_del.methodWithHandlerGenericUserType(Vertx::Util::Utils.to_object(value),(Proc.new { |event| handler.call(Testmodel::GenericRefedInterface.new(event)) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_generic_user_type(value,handler)"
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling method_with_handler_generic_user_type(value,handler)"
    end
    def method_with_handler_async_result_generic_user_type(value,&handler)
      if value.class == String  ||value.class == Hash || value.class == Array
        if handler.class == Proc
          return @j_del.methodWithHandlerAsyncResultGenericUserType(Vertx::Util::Utils.to_object(value),(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Testmodel::GenericRefedInterface.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_generic_user_type(value,handler)"
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling method_with_handler_async_result_generic_user_type(value,handler)"
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
    def overloaded_method(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          return @j_del.overloadedMethod(param_1,(Proc.new { |event| param_2.call(event) }))
        end
        if param_2.class.method_defined?(:j_del)
          if param_3.class == Proc
            return @j_del.overloadedMethod(param_1,param_2.j_del,(Proc.new { |event| param_3.call(event) }))
          end
          if param_3.class == Fixnum
            if param_4.class == Proc
              return @j_del.overloadedMethod(param_1,param_2.j_del,param_3,(Proc.new { |event| param_4.call(event) }))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling overloaded_method(param_1,param_2,param_3,param_4)"
          end
          return @j_del.overloadedMethod(param_1,param_2.j_del)
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling overloaded_method(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling overloaded_method(param_1,param_2,param_3,param_4)"
    end
    def method_with_generic_return(type)
      if type.class == String
        return Vertx::Util::Utils.from_object(@j_del.methodWithGenericReturn(type))
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_return(type)"
    end
    def method_with_generic_param(type,u)
      if type.class == String
        if u.class == String  ||u.class == Hash || u.class == Array
          return @j_del.methodWithGenericParam(type,Vertx::Util::Utils.to_object(u))
        end
        raise ArgumentError, "Invalid argument u=#{u} when calling method_with_generic_param(type,u)"
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_param(type,u)"
    end
    def method_with_generic_handler(type,&handler)
      if type.class == String
        if handler.class == Proc
          return @j_del.methodWithGenericHandler(type,(Proc.new { |event| handler.call(Vertx::Util::Utils.from_object(event)) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_generic_handler(type,handler)"
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_handler(type,handler)"
    end
    def method_with_generic_handler_async_result(type,&asyncResultHandler)
      if type.class == String
        if asyncResultHandler.class == Proc
          return @j_del.methodWithGenericHandlerAsyncResult(type,(Proc.new { |ar| asyncResultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument asyncResultHandler=#{asyncResultHandler} when calling method_with_generic_handler_async_result(type,asyncResultHandler)"
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_handler_async_result(type,asyncResultHandler)"
    end
    def fluent_method(str)
      if str.class == String
        @j_del.fluentMethod(str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling fluent_method(str)"
    end
    def self.static_factory_method(foo)
      if foo.class == String
        return Testmodel::RefedInterface1.new(Java::IoVertxCodegenTestmodel::TestInterface.staticFactoryMethod(foo))
      end
      raise ArgumentError, "Invalid argument foo=#{foo} when calling static_factory_method(foo)"
    end
    def method_with_cached_return(foo)
      if foo.class == String
          if @cached_method_with_cached_return != nil
            return @cached_method_with_cached_return
          end
        return @cached_method_with_cached_return = Testmodel::RefedInterface1.new(@j_del.methodWithCachedReturn(foo))
      end
      raise ArgumentError, "Invalid argument foo=#{foo} when calling method_with_cached_return(foo)"
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
    def method_with_json_params(jsonObject,jsonArray)
      if jsonObject == nil || jsonObject.class == Hash
        if jsonArray == nil || jsonArray.class == Array
          return @j_del.methodWithJsonParams(jsonObject != nil ? Vertx::Util::Utils.to_json_object(jsonObject) : nil,jsonArray != nil ? Vertx::Util::Utils.to_json_array(jsonArray) : nil)
        end
        raise ArgumentError, "Invalid argument jsonArray=#{jsonArray} when calling method_with_json_params(jsonObject,jsonArray)"
      end
      raise ArgumentError, "Invalid argument jsonObject=#{jsonObject} when calling method_with_json_params(jsonObject,jsonArray)"
    end
    def method_with_null_json_params(jsonObject,jsonArray)
      if jsonObject == nil || jsonObject.class == Hash
        if jsonArray == nil || jsonArray.class == Array
          return @j_del.methodWithNullJsonParams(jsonObject != nil ? Vertx::Util::Utils.to_json_object(jsonObject) : nil,jsonArray != nil ? Vertx::Util::Utils.to_json_array(jsonArray) : nil)
        end
        raise ArgumentError, "Invalid argument jsonArray=#{jsonArray} when calling method_with_null_json_params(jsonObject,jsonArray)"
      end
      raise ArgumentError, "Invalid argument jsonObject=#{jsonObject} when calling method_with_null_json_params(jsonObject,jsonArray)"
    end
    def method_with_handler_json(jsonObjectHandler,&jsonArrayHandler)
      if jsonObjectHandler.class == Proc
        if jsonArrayHandler.class == Proc
          return @j_del.methodWithHandlerJson((Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| jsonArrayHandler.call(event != nil ? JSON.parse(event.encode) : nil) }))
        end
        raise ArgumentError, "Invalid argument jsonArrayHandler=#{jsonArrayHandler} when calling method_with_handler_json(jsonObjectHandler,jsonArrayHandler)"
      end
      raise ArgumentError, "Invalid argument jsonObjectHandler=#{jsonObjectHandler} when calling method_with_handler_json(jsonObjectHandler,jsonArrayHandler)"
    end
    def method_with_handler_null_json(jsonObjectHandler,&jsonArrayHandler)
      if jsonObjectHandler.class == Proc
        if jsonArrayHandler.class == Proc
          return @j_del.methodWithHandlerNullJson((Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| jsonArrayHandler.call(event != nil ? JSON.parse(event.encode) : nil) }))
        end
        raise ArgumentError, "Invalid argument jsonArrayHandler=#{jsonArrayHandler} when calling method_with_handler_null_json(jsonObjectHandler,jsonArrayHandler)"
      end
      raise ArgumentError, "Invalid argument jsonObjectHandler=#{jsonObjectHandler} when calling method_with_handler_null_json(jsonObjectHandler,jsonArrayHandler)"
    end
    def method_with_handler_async_result_json_object(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultJsonObject((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_json_object(handler)"
    end
    def method_with_handler_async_result_null_json_object(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultNullJsonObject((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_null_json_object(handler)"
    end
    def method_with_handler_async_result_json_array(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultJsonArray((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_json_array(handler)"
    end
    def method_with_handler_async_result_null_json_array(&handler)
      if handler.class == Proc
        return @j_del.methodWithHandlerAsyncResultNullJsonArray((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_null_json_array(handler)"
    end
    def method_with_map_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_return(handler)"
    end
    def method_with_map_string_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapStringReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_string_return(handler)"
    end
    def method_with_map_long_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapLongReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_long_return(handler)"
    end
    def method_with_map_integer_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapIntegerReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_integer_return(handler)"
    end
    def method_with_map_short_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapShortReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_short_return(handler)"
    end
    def method_with_map_byte_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapByteReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_byte_return(handler)"
    end
    def method_with_map_character_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapCharacterReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_character_return(handler)"
    end
    def method_with_map_boolean_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapBooleanReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_boolean_return(handler)"
    end
    def method_with_map_float_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapFloatReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_float_return(handler)"
    end
    def method_with_map_double_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapDoubleReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_double_return(handler)"
    end
    def method_with_map_json_object_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapJsonObjectReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_json_object_return(handler)"
    end
    def method_with_map_json_array_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.methodWithMapJsonArrayReturn((Proc.new { |event| handler.call(event) })), Proc.new { |val| Vertx::Util::Utils.from_object(val) }, Proc.new { |val| Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_json_array_return(handler)"
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
    def method_with_enum_param(strVal,weirdo)
      if strVal.class == String
        if weirdo.class == String
          return @j_del.methodWithEnumParam(strVal,Java::IoVertxCodegenTestmodel::TestEnum.valueOf(weirdo))
        end
        raise ArgumentError, "Invalid argument weirdo=#{weirdo} when calling method_with_enum_param(strVal,weirdo)"
      end
      raise ArgumentError, "Invalid argument strVal=#{strVal} when calling method_with_enum_param(strVal,weirdo)"
    end
    def method_with_enum_return(strVal)
      if strVal.class == String
        return @j_del.methodWithEnumReturn(strVal).name
      end
      raise ArgumentError, "Invalid argument strVal=#{strVal} when calling method_with_enum_return(strVal)"
    end
    def method_with_throwable_return(strVal)
      if strVal.class == String
        return @j_del.methodWithThrowableReturn(strVal)
      end
      raise ArgumentError, "Invalid argument strVal=#{strVal} when calling method_with_throwable_return(strVal)"
    end
  end
end

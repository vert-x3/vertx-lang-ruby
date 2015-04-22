require 'testmodel/generic_refed_interface'
require 'testmodel/refed_interface1'
require 'testmodel/super_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/concrete_handler_user_type'
require 'testmodel/abstract_handler_user_type'
require 'testmodel/concrete_handler_user_type_extension'
require 'testmodel/super_interface2'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.TestInterface
module Testmodel
  #  @author <a href="http://tfox.org">Tim Fox</a>
  class TestInterface < ::Testmodel::SuperInterface1
    include ::Testmodel::SuperInterface2
    # @private
    # @param j_del [::Testmodel::TestInterface] the java delegate
    def initialize(j_del)
      super(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::TestInterface] the underlying java delegate
    def j_del
      @j_del
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
    def other_super_method_with_basic_params(b=nil,s=nil,i=nil,l=nil,f=nil,d=nil,bool=nil,ch=nil,str=nil)
      if b.class == Fixnum && s.class == Fixnum && i.class == Fixnum && l.class == Fixnum && f.class == Float && d.class == Float && (bool.class == TrueClass || bool.class == FalseClass) && ch.class == Fixnum && str.class == String && !block_given?
        return @j_del.java_method(:otherSuperMethodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
      end
      raise ArgumentError, "Invalid arguments when calling other_super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
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
    def method_with_basic_params(b=nil,s=nil,i=nil,l=nil,f=nil,d=nil,bool=nil,ch=nil,str=nil)
      if b.class == Fixnum && s.class == Fixnum && i.class == Fixnum && l.class == Fixnum && f.class == Float && d.class == Float && (bool.class == TrueClass || bool.class == FalseClass) && ch.class == Fixnum && str.class == String && !block_given?
        return @j_del.java_method(:methodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
    # @param [Fixnum] b
    # @param [Fixnum] s
    # @param [Fixnum] i
    # @param [Fixnum] l
    # @param [Float] f
    # @param [Float] d
    # @param [true,false] bool
    # @param [Fixnum] ch
    # @return [void]
    def method_with_basic_boxed_params(b=nil,s=nil,i=nil,l=nil,f=nil,d=nil,bool=nil,ch=nil)
      if b.class == Fixnum && s.class == Fixnum && i.class == Fixnum && l.class == Fixnum && f.class == Float && d.class == Float && (bool.class == TrueClass || bool.class == FalseClass) && ch.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithBasicBoxedParams, [Java::JavaLang::Byte.java_class,Java::JavaLang::Short.java_class,Java::JavaLang::Integer.java_class,Java::JavaLang::Long.java_class,Java::JavaLang::Float.java_class,Java::JavaLang::Double.java_class,Java::JavaLang::Boolean.java_class,Java::JavaLang::Character.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),::Vertx::Util::Utils.to_integer(i),l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)"
    end
    # @param [Proc] byteHandler
    # @param [Proc] shortHandler
    # @param [Proc] intHandler
    # @param [Proc] longHandler
    # @param [Proc] floatHandler
    # @param [Proc] doubleHandler
    # @param [Proc] booleanHandler
    # @param [Proc] charHandler
    # @yield 
    # @return [void]
    def method_with_handler_basic_types(byteHandler=nil,shortHandler=nil,intHandler=nil,longHandler=nil,floatHandler=nil,doubleHandler=nil,booleanHandler=nil,charHandler=nil)
      if byteHandler.class == Proc && shortHandler.class == Proc && intHandler.class == Proc && longHandler.class == Proc && floatHandler.class == Proc && doubleHandler.class == Proc && booleanHandler.class == Proc && charHandler.class == Proc && block_given?
        return @j_del.java_method(:methodWithHandlerBasicTypes, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| byteHandler.call(event) }),(Proc.new { |event| shortHandler.call(event) }),(Proc.new { |event| intHandler.call(event) }),(Proc.new { |event| longHandler.call(event) }),(Proc.new { |event| floatHandler.call(event) }),(Proc.new { |event| doubleHandler.call(event) }),(Proc.new { |event| booleanHandler.call(event) }),(Proc.new { |event| charHandler.call(event) }),(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_basic_types(byteHandler,shortHandler,intHandler,longHandler,floatHandler,doubleHandler,booleanHandler,charHandler)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_byte(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultByte, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_byte(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_short(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultShort, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_short(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_integer(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultInteger, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_integer(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_long(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultLong, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_long(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_float(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultFloat, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_float(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_double(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultDouble, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_double(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_boolean(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultBoolean, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_boolean(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_character(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultCharacter, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_character(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_string(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultString, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_string(sendFailure)"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_data_object(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultDataObject, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? JSON.parse(ar.result.toJson.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_data_object(sendFailure)"
    end
    # @param [::Testmodel::RefedInterface1] refed
    # @return [void]
    def method_with_user_types(refed=nil)
      if refed.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:methodWithUserTypes, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(refed.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_user_types(refed)"
    end
    # @param [String] str
    # @param [Object] obj
    # @return [void]
    def method_with_object_param(str=nil,obj=nil)
      if str.class == String && (obj.class == String  || obj.class == Hash || obj.class == Array || obj.class == NilClass || obj.class == TrueClass || obj.class == FalseClass || obj.class == Fixnum || obj.class == Float) && !block_given?
        return @j_del.java_method(:methodWithObjectParam, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(str,::Vertx::Util::Utils.to_object(obj))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_object_param(str,obj)"
    end
    # @param [Hash] dataObject
    # @return [void]
    def method_with_data_object_param(dataObject=nil)
      if dataObject.class == Hash && !block_given?
        return @j_del.java_method(:methodWithDataObjectParam, [Java::IoVertxCodegenTestmodel::TestDataObject.java_class]).call(Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_param(dataObject)"
    end
    # @param [Hash] dataObject
    # @return [void]
    def method_with_null_data_object_param(dataObject=nil)
      if dataObject.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullDataObjectParam, [Java::IoVertxCodegenTestmodel::TestDataObject.java_class]).call(Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_data_object_param(dataObject)"
    end
    # @param [Array<String>] listString
    # @param [Array<Fixnum>] listByte
    # @param [Array<Fixnum>] listShort
    # @param [Array<Fixnum>] listInt
    # @param [Array<Fixnum>] listLong
    # @param [Array<Hash{String => Object}>] listJsonObject
    # @param [Array<Array<String,Object>>] listJsonArray
    # @param [Array<::Testmodel::RefedInterface1>] listVertxGen
    # @return [void]
    def method_with_list_params(listString=nil,listByte=nil,listShort=nil,listInt=nil,listLong=nil,listJsonObject=nil,listJsonArray=nil,listVertxGen=nil)
      if listString.class == Array && listByte.class == Array && listShort.class == Array && listInt.class == Array && listLong.class == Array && listJsonObject.class == Array && listJsonArray.class == Array && listVertxGen.class == Array && !block_given?
        return @j_del.java_method(:methodWithListParams, [Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class]).call(listString.map { |element| element },listByte.map { |element| ::Vertx::Util::Utils.to_byte(element) },listShort.map { |element| ::Vertx::Util::Utils.to_short(element) },listInt.map { |element| ::Vertx::Util::Utils.to_integer(element) },listLong.map { |element| element },listJsonObject.map { |element| ::Vertx::Util::Utils.to_json_object(element) },listJsonArray.map { |element| ::Vertx::Util::Utils.to_json_array(element) },listVertxGen.map { |element| element.j_del })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)"
    end
    # @param [Set<String>] setString
    # @param [Set<Fixnum>] setByte
    # @param [Set<Fixnum>] setShort
    # @param [Set<Fixnum>] setInt
    # @param [Set<Fixnum>] setLong
    # @param [Set<Hash{String => Object}>] setJsonObject
    # @param [Set<Array<String,Object>>] setJsonArray
    # @param [Set<::Testmodel::RefedInterface1>] setVertxGen
    # @return [void]
    def method_with_set_params(setString=nil,setByte=nil,setShort=nil,setInt=nil,setLong=nil,setJsonObject=nil,setJsonArray=nil,setVertxGen=nil)
      if setString.class == Set && setByte.class == Set && setShort.class == Set && setInt.class == Set && setLong.class == Set && setJsonObject.class == Set && setJsonArray.class == Set && setVertxGen.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetParams, [Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(setString.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setByte.map { |element| ::Vertx::Util::Utils.to_byte(element) }),Java::JavaUtil::LinkedHashSet.new(setShort.map { |element| ::Vertx::Util::Utils.to_short(element) }),Java::JavaUtil::LinkedHashSet.new(setInt.map { |element| ::Vertx::Util::Utils.to_integer(element) }),Java::JavaUtil::LinkedHashSet.new(setLong.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setJsonObject.map { |element| ::Vertx::Util::Utils.to_json_object(element) }),Java::JavaUtil::LinkedHashSet.new(setJsonArray.map { |element| ::Vertx::Util::Utils.to_json_array(element) }),Java::JavaUtil::LinkedHashSet.new(setVertxGen.map { |element| element.j_del }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)"
    end
    # @param [Hash{String => String}] mapString
    # @param [Hash{String => Fixnum}] mapByte
    # @param [Hash{String => Fixnum}] mapShort
    # @param [Hash{String => Fixnum}] mapInt
    # @param [Hash{String => Fixnum}] mapLong
    # @param [Hash{String => Hash{String => Object}}] mapJsonObject
    # @param [Hash{String => Array<String,Object>}] mapJsonArray
    # @param [Hash{String => ::Testmodel::RefedInterface1}] mapVertxGen
    # @return [void]
    def method_with_map_params(mapString=nil,mapByte=nil,mapShort=nil,mapInt=nil,mapLong=nil,mapJsonObject=nil,mapJsonArray=nil,mapVertxGen=nil)
      if mapString.class == Hash && mapByte.class == Hash && mapShort.class == Hash && mapInt.class == Hash && mapLong.class == Hash && mapJsonObject.class == Hash && mapJsonArray.class == Hash && mapVertxGen.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapParams, [Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class]).call(Hash[mapString.map { |k,v| [k,v] }],Hash[mapByte.map { |k,v| [k,::Vertx::Util::Utils.to_byte(v)] }],Hash[mapShort.map { |k,v| [k,::Vertx::Util::Utils.to_short(v)] }],Hash[mapInt.map { |k,v| [k,::Vertx::Util::Utils.to_integer(v)] }],Hash[mapLong.map { |k,v| [k,v] }],Hash[mapJsonObject.map { |k,v| [k,::Vertx::Util::Utils.to_json_object(v)] }],Hash[mapJsonArray.map { |k,v| [k,::Vertx::Util::Utils.to_json_array(v)] }],Hash[mapVertxGen.map { |k,v| [k,v.j_del] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)"
    end
    # @param [Proc] listStringHandler
    # @param [Proc] listIntHandler
    # @param [Proc] setStringHandler
    # @yield 
    # @return [void]
    def method_with_handler_list_and_set(listStringHandler=nil,listIntHandler=nil,setStringHandler=nil)
      if listStringHandler.class == Proc && listIntHandler.class == Proc && setStringHandler.class == Proc && block_given?
        return @j_del.java_method(:methodWithHandlerListAndSet, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| listStringHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| listIntHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| setStringHandler.call(event.to_set.map! { |elt| elt }) }),(Proc.new { |event| yield(event.to_set.map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler)"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_string
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListString, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_string()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_integer
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListInteger, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_integer()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_string
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetString, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_string()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_integer
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetInteger, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_integer()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerListVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| ::Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_set.map! { |elt| ::Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerListAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| ::Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_abstract_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_set.map! { |elt| ::Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_abstract_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerListJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_null_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerListNullJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_null_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_null_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetNullJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_null_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerListJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_null_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerListNullJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_null_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_null_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetNullJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_null_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| ::Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_abstract_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| ::Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_abstract_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_null_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListNullJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_null_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_null_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetNullJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_null_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_null_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListNullJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_null_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_null_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetNullJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_null_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_user_types
      if block_given?
        return @j_del.java_method(:methodWithHandlerUserTypes, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Testmodel::RefedInterface1.new(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_user_types()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_user_types
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultUserTypes, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Testmodel::RefedInterface1.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_user_types()"
    end
    # @param [::Testmodel::ConcreteHandlerUserType] handler
    # @return [void]
    def method_with_concrete_handler_user_type_subtype(handler=nil)
      if handler.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:methodWithConcreteHandlerUserTypeSubtype, [Java::IoVertxCodegenTestmodel::ConcreteHandlerUserType.java_class]).call(handler.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_concrete_handler_user_type_subtype(handler)"
    end
    # @param [::Testmodel::AbstractHandlerUserType] handler
    # @return [void]
    def method_with_abstract_handler_user_type_subtype(handler=nil)
      if handler.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:methodWithAbstractHandlerUserTypeSubtype, [Java::IoVertxCodegenTestmodel::AbstractHandlerUserType.java_class]).call(handler.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_abstract_handler_user_type_subtype(handler)"
    end
    # @param [::Testmodel::ConcreteHandlerUserTypeExtension] handler
    # @return [void]
    def method_with_concrete_handler_user_type_subtype_extension(handler=nil)
      if handler.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:methodWithConcreteHandlerUserTypeSubtypeExtension, [Java::IoVertxCodegenTestmodel::ConcreteHandlerUserTypeExtension.java_class]).call(handler.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_concrete_handler_user_type_subtype_extension(handler)"
    end
    # @yield 
    # @return [void]
    def method_with_handler_void
      if block_given?
        return @j_del.java_method(:methodWithHandlerVoid, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_void()"
    end
    # @param [true,false] sendFailure
    # @yield 
    # @return [void]
    def method_with_handler_async_result_void(sendFailure=nil)
      if (sendFailure.class == TrueClass || sendFailure.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultVoid, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_void(sendFailure)"
    end
    # @yield 
    # @return [void]
    def method_with_handler_throwable
      if block_given?
        return @j_del.java_method(:methodWithHandlerThrowable, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_throwable()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_data_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerDataObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(JSON.parse(event.toJson.encode)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_data_object()"
    end
    # @param [Object] value
    # @yield 
    # @return [void]
    def method_with_handler_generic_user_type(value=nil)
      if (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && block_given?
        return @j_del.java_method(:methodWithHandlerGenericUserType, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(value),(Proc.new { |event| yield(::Testmodel::GenericRefedInterface.new(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_generic_user_type(value)"
    end
    # @param [Object] value
    # @yield 
    # @return [void]
    def method_with_handler_async_result_generic_user_type(value=nil)
      if (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultGenericUserType, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(value),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Testmodel::GenericRefedInterface.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_generic_user_type(value)"
    end
    # @return [Fixnum]
    def method_with_byte_return
      if !block_given?
        return @j_del.java_method(:methodWithByteReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_byte_return()"
    end
    # @return [Fixnum]
    def method_with_short_return
      if !block_given?
        return @j_del.java_method(:methodWithShortReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_short_return()"
    end
    # @return [Fixnum]
    def method_with_int_return
      if !block_given?
        return @j_del.java_method(:methodWithIntReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_int_return()"
    end
    # @return [Fixnum]
    def method_with_long_return
      if !block_given?
        return @j_del.java_method(:methodWithLongReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_long_return()"
    end
    # @return [Float]
    def method_with_float_return
      if !block_given?
        return @j_del.java_method(:methodWithFloatReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_float_return()"
    end
    # @return [Float]
    def method_with_double_return
      if !block_given?
        return @j_del.java_method(:methodWithDoubleReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_double_return()"
    end
    # @return [true,false]
    def method_with_boolean_return
      if !block_given?
        return @j_del.java_method(:methodWithBooleanReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_boolean_return()"
    end
    # @return [Fixnum]
    def method_with_char_return
      if !block_given?
        return @j_del.java_method(:methodWithCharReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_char_return()"
    end
    # @return [String]
    def method_with_string_return
      if !block_given?
        return @j_del.java_method(:methodWithStringReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_string_return()"
    end
    # @return [::Testmodel::RefedInterface1]
    def method_with_vertx_gen_return
      if !block_given?
        return ::Testmodel::RefedInterface1.new(@j_del.java_method(:methodWithVertxGenReturn, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling method_with_vertx_gen_return()"
    end
    # @return [::Testmodel::RefedInterface2]
    def method_with_abstract_vertx_gen_return
      if !block_given?
        return ::Testmodel::RefedInterface2Impl.new(@j_del.java_method(:methodWithAbstractVertxGenReturn, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling method_with_abstract_vertx_gen_return()"
    end
    # @param [String] str
    # @param [::Testmodel::RefedInterface1] refed
    # @param [Fixnum] period
    # @yield 
    # @return [String]
    def overloaded_method(str=nil,refed=nil,period=nil)
      if str.class == String && block_given? && refed == nil && period == nil
        return @j_del.java_method(:overloadedMethod, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(str,(Proc.new { |event| yield(event) }))
      elsif str.class == String && refed.class.method_defined?(:j_del) && !block_given? && period == nil
        return @j_del.java_method(:overloadedMethod, [Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(str,refed.j_del)
      elsif str.class == String && refed.class.method_defined?(:j_del) && block_given? && period == nil
        return @j_del.java_method(:overloadedMethod, [Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class,Java::IoVertxCore::Handler.java_class]).call(str,refed.j_del,(Proc.new { |event| yield(event) }))
      elsif str.class == String && refed.class.method_defined?(:j_del) && period.class == Fixnum && block_given?
        return @j_del.java_method(:overloadedMethod, [Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class]).call(str,refed.j_del,period,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling overloaded_method(str,refed,period)"
    end
    # @param [String] type
    # @return [Object]
    def method_with_generic_return(type=nil)
      if type.class == String && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:methodWithGenericReturn, [Java::java.lang.String.java_class]).call(type))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_return(type)"
    end
    # @param [String] type
    # @param [Object] u
    # @return [void]
    def method_with_generic_param(type=nil,u=nil)
      if type.class == String && (u.class == String  || u.class == Hash || u.class == Array || u.class == NilClass || u.class == TrueClass || u.class == FalseClass || u.class == Fixnum || u.class == Float) && !block_given?
        return @j_del.java_method(:methodWithGenericParam, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(type,::Vertx::Util::Utils.to_object(u))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_param(type,u)"
    end
    # @param [String] type
    # @yield 
    # @return [void]
    def method_with_generic_handler(type=nil)
      if type.class == String && block_given?
        return @j_del.java_method(:methodWithGenericHandler, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(type,(Proc.new { |event| yield(::Vertx::Util::Utils.from_object(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_handler(type)"
    end
    # @param [String] type
    # @yield 
    # @return [void]
    def method_with_generic_handler_async_result(type=nil)
      if type.class == String && block_given?
        return @j_del.java_method(:methodWithGenericHandlerAsyncResult, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(type,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_handler_async_result(type)"
    end
    # @param [String] str
    # @return [self]
    def fluent_method(str=nil)
      if str.class == String && !block_given?
        @j_del.java_method(:fluentMethod, [Java::java.lang.String.java_class]).call(str)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling fluent_method(str)"
    end
    # @param [String] foo
    # @return [::Testmodel::RefedInterface1]
    def self.static_factory_method(foo=nil)
      if foo.class == String && !block_given?
        return ::Testmodel::RefedInterface1.new(Java::IoVertxCodegenTestmodel::TestInterface.java_method(:staticFactoryMethod, [Java::java.lang.String.java_class]).call(foo))
      end
      raise ArgumentError, "Invalid arguments when calling static_factory_method(foo)"
    end
    # @param [String] foo
    # @return [::Testmodel::RefedInterface1]
    def method_with_cached_return(foo=nil)
      if foo.class == String && !block_given?
        if @cached_method_with_cached_return != nil
          return @cached_method_with_cached_return
        end
        return @cached_method_with_cached_return = ::Testmodel::RefedInterface1.new(@j_del.java_method(:methodWithCachedReturn, [Java::java.lang.String.java_class]).call(foo))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_cached_return(foo)"
    end
    # @param [Fixnum] arg
    # @return [Fixnum]
    def method_with_cached_return_primitive(arg=nil)
      if arg.class == Fixnum && !block_given?
        if @cached_method_with_cached_return_primitive != nil
          return @cached_method_with_cached_return_primitive
        end
        return @cached_method_with_cached_return_primitive = @j_del.java_method(:methodWithCachedReturnPrimitive, [Java::int.java_class]).call(arg)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_cached_return_primitive(arg)"
    end
    # @return [Hash{String => Object}]
    def method_with_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithJsonObjectReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithJsonObjectReturn, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_object_return()"
    end
    # @return [Hash{String => Object}]
    def method_with_null_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithNullJsonObjectReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithNullJsonObjectReturn, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_json_object_return()"
    end
    # @return [Array<String,Object>]
    def method_with_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithJsonArrayReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithJsonArrayReturn, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_array_return()"
    end
    # @return [Array<String,Object>]
    def method_with_null_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithNullJsonArrayReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithNullJsonArrayReturn, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_json_array_return()"
    end
    # @param [Hash{String => Object}] jsonObject
    # @param [Array<String,Object>] jsonArray
    # @return [void]
    def method_with_json_params(jsonObject=nil,jsonArray=nil)
      if jsonObject.class == Hash && jsonArray.class == Array && !block_given?
        return @j_del.java_method(:methodWithJsonParams, [Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCoreJson::JsonArray.java_class]).call(::Vertx::Util::Utils.to_json_object(jsonObject),::Vertx::Util::Utils.to_json_array(jsonArray))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_params(jsonObject,jsonArray)"
    end
    # @param [Hash{String => Object}] jsonObject
    # @param [Array<String,Object>] jsonArray
    # @return [void]
    def method_with_null_json_params(jsonObject=nil,jsonArray=nil)
      if jsonObject.class == Hash && jsonArray.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullJsonParams, [Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCoreJson::JsonArray.java_class]).call(::Vertx::Util::Utils.to_json_object(jsonObject),::Vertx::Util::Utils.to_json_array(jsonArray))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_json_params(jsonObject,jsonArray)"
    end
    # @param [Proc] jsonObjectHandler
    # @yield 
    # @return [void]
    def method_with_handler_json(jsonObjectHandler=nil)
      if jsonObjectHandler.class == Proc && block_given?
        return @j_del.java_method(:methodWithHandlerJson, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| yield(event != nil ? JSON.parse(event.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_json(jsonObjectHandler)"
    end
    # @param [Proc] jsonObjectHandler
    # @yield 
    # @return [void]
    def method_with_handler_null_json(jsonObjectHandler=nil)
      if jsonObjectHandler.class == Proc && block_given?
        return @j_del.java_method(:methodWithHandlerNullJson, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| yield(event != nil ? JSON.parse(event.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_null_json(jsonObjectHandler)"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_null_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultNullJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_null_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_null_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultNullJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_null_json_array()"
    end
    # @yield 
    # @return [Hash{String => String}]
    def method_with_map_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_return()"
    end
    # @yield 
    # @return [Hash{String => String}]
    def method_with_map_string_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapStringReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_string_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_long_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapLongReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_long_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_integer_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapIntegerReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_integer_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_short_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapShortReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_short_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_byte_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapByteReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_byte_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_character_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapCharacterReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_character_return()"
    end
    # @yield 
    # @return [Hash{String => true,false}]
    def method_with_map_boolean_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapBooleanReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_boolean_return()"
    end
    # @yield 
    # @return [Hash{String => Float}]
    def method_with_map_float_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapFloatReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_float_return()"
    end
    # @yield 
    # @return [Hash{String => Float}]
    def method_with_map_double_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapDoubleReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_double_return()"
    end
    # @yield 
    # @return [Hash{String => Hash{String => Object}}]
    def method_with_map_json_object_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapJsonObjectReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_json_object_return()"
    end
    # @yield 
    # @return [Hash{String => Array<String,Object>}]
    def method_with_map_json_array_return
      if block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithMapJsonArrayReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_json_array_return()"
    end
    # @return [Hash{String => String}]
    def method_with_null_map_return
      if !block_given?
        return Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.java_method(:methodWithNullMapReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_map_return()"
    end
    # @return [Array<String>]
    def method_with_list_string_return
      if !block_given?
        return @j_del.java_method(:methodWithListStringReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_string_return()"
    end
    # @return [Array<Fixnum>]
    def method_with_list_long_return
      if !block_given?
        return @j_del.java_method(:methodWithListLongReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_long_return()"
    end
    # @return [Array<::Testmodel::RefedInterface1>]
    def method_with_list_vertx_gen_return
      if !block_given?
        return @j_del.java_method(:methodWithListVertxGenReturn, []).call().to_a.map { |elt| ::Testmodel::RefedInterface1.new(elt) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_vertx_gen_return()"
    end
    # @return [Array<Hash{String => Object}>]
    def method_with_list_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithListJsonObjectReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_json_object_return()"
    end
    # @return [Array<Array<String,Object>>]
    def method_with_list_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithListJsonArrayReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_json_array_return()"
    end
    # @return [Array<String>]
    def method_with_null_list_return
      if !block_given?
        return @j_del.java_method(:methodWithNullListReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_list_return()"
    end
    # @return [Set<String>]
    def method_with_set_string_return
      if !block_given?
        return @j_del.java_method(:methodWithSetStringReturn, []).call().to_set.map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_string_return()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_long_return
      if !block_given?
        return @j_del.java_method(:methodWithSetLongReturn, []).call().to_set.map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_long_return()"
    end
    # @return [Set<::Testmodel::RefedInterface1>]
    def method_with_set_vertx_gen_return
      if !block_given?
        return @j_del.java_method(:methodWithSetVertxGenReturn, []).call().to_set.map! { |elt| ::Testmodel::RefedInterface1.new(elt) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_vertx_gen_return()"
    end
    # @return [Set<Hash{String => Object}>]
    def method_with_set_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithSetJsonObjectReturn, []).call().to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_json_object_return()"
    end
    # @return [Set<Array<String,Object>>]
    def method_with_set_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithSetJsonArrayReturn, []).call().to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_json_array_return()"
    end
    # @return [Set<String>]
    def method_with_null_set_return
      if !block_given?
        return @j_del.java_method(:methodWithNullSetReturn, []).call().to_set.map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_null_set_return()"
    end
    # @param [String] strVal
    # @param [:TIM,:JULIEN,:NICK,:WESTON] weirdo
    # @return [String]
    def method_with_enum_param(strVal=nil,weirdo=nil)
      if strVal.class == String && weirdo.class == Symbol && !block_given?
        return @j_del.java_method(:methodWithEnumParam, [Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::TestEnum.java_class]).call(strVal,Java::IoVertxCodegenTestmodel::TestEnum.valueOf(weirdo))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_enum_param(strVal,weirdo)"
    end
    # @param [String] strVal
    # @return [:TIM,:JULIEN,:NICK,:WESTON]
    def method_with_enum_return(strVal=nil)
      if strVal.class == String && !block_given?
        return @j_del.java_method(:methodWithEnumReturn, [Java::java.lang.String.java_class]).call(strVal).name.intern
      end
      raise ArgumentError, "Invalid arguments when calling method_with_enum_return(strVal)"
    end
    # @param [String] strVal
    # @return [Nil]
    def method_with_throwable_return(strVal=nil)
      if strVal.class == String && !block_given?
        return @j_del.java_method(:methodWithThrowableReturn, [Java::java.lang.String.java_class]).call(strVal)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_throwable_return(strVal)"
    end
  end
end

require 'testmodel/refed_interface1'
require 'testmodel/refed_interface2'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.CollectionTCK
module Testmodel
  class CollectionTCK
    # @private
    # @param j_del [::Testmodel::CollectionTCK] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::CollectionTCK] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == CollectionTCK
    end
    def @@j_api_type.wrap(obj)
      CollectionTCK.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::CollectionTCK.java_class
    end
    # @param [Array<String>] listString 
    # @param [Array<Fixnum>] listByte 
    # @param [Array<Fixnum>] listShort 
    # @param [Array<Fixnum>] listInt 
    # @param [Array<Fixnum>] listLong 
    # @param [Array<Hash{String => Object}>] listJsonObject 
    # @param [Array<Array<String,Object>>] listJsonArray 
    # @param [Array<::Testmodel::RefedInterface1>] listVertxGen 
    # @param [Array<Hash>] listDataObject 
    # @param [Array<:TIM,:JULIEN,:NICK,:WESTON>] listEnum 
    # @return [void]
    def method_with_list_params(listString=nil,listByte=nil,listShort=nil,listInt=nil,listLong=nil,listJsonObject=nil,listJsonArray=nil,listVertxGen=nil,listDataObject=nil,listEnum=nil)
      if listString.class == Array && listByte.class == Array && listShort.class == Array && listInt.class == Array && listLong.class == Array && listJsonObject.class == Array && listJsonArray.class == Array && listVertxGen.class == Array && listDataObject.class == Array && listEnum.class == Array && !block_given?
        return @j_del.java_method(:methodWithListParams, [Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class]).call(listString.map { |element| element },listByte.map { |element| ::Vertx::Util::Utils.to_byte(element) },listShort.map { |element| ::Vertx::Util::Utils.to_short(element) },listInt.map { |element| ::Vertx::Util::Utils.to_integer(element) },listLong.map { |element| element },listJsonObject.map { |element| ::Vertx::Util::Utils.to_json_object(element) },listJsonArray.map { |element| ::Vertx::Util::Utils.to_json_array(element) },listVertxGen.map { |element| element.j_del },listDataObject.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) },listEnum.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_params(#{listString},#{listByte},#{listShort},#{listInt},#{listLong},#{listJsonObject},#{listJsonArray},#{listVertxGen},#{listDataObject},#{listEnum})"
    end
    # @param [Set<String>] setString 
    # @param [Set<Fixnum>] setByte 
    # @param [Set<Fixnum>] setShort 
    # @param [Set<Fixnum>] setInt 
    # @param [Set<Fixnum>] setLong 
    # @param [Set<Hash{String => Object}>] setJsonObject 
    # @param [Set<Array<String,Object>>] setJsonArray 
    # @param [Set<::Testmodel::RefedInterface1>] setVertxGen 
    # @param [Set<Hash>] setDataObject 
    # @param [Set<:TIM,:JULIEN,:NICK,:WESTON>] setEnum 
    # @return [void]
    def method_with_set_params(setString=nil,setByte=nil,setShort=nil,setInt=nil,setLong=nil,setJsonObject=nil,setJsonArray=nil,setVertxGen=nil,setDataObject=nil,setEnum=nil)
      if setString.class == Set && setByte.class == Set && setShort.class == Set && setInt.class == Set && setLong.class == Set && setJsonObject.class == Set && setJsonArray.class == Set && setVertxGen.class == Set && setDataObject.class == Set && setEnum.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetParams, [Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(setString.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setByte.map { |element| ::Vertx::Util::Utils.to_byte(element) }),Java::JavaUtil::LinkedHashSet.new(setShort.map { |element| ::Vertx::Util::Utils.to_short(element) }),Java::JavaUtil::LinkedHashSet.new(setInt.map { |element| ::Vertx::Util::Utils.to_integer(element) }),Java::JavaUtil::LinkedHashSet.new(setLong.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setJsonObject.map { |element| ::Vertx::Util::Utils.to_json_object(element) }),Java::JavaUtil::LinkedHashSet.new(setJsonArray.map { |element| ::Vertx::Util::Utils.to_json_array(element) }),Java::JavaUtil::LinkedHashSet.new(setVertxGen.map { |element| element.j_del }),Java::JavaUtil::LinkedHashSet.new(setDataObject.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) }),Java::JavaUtil::LinkedHashSet.new(setEnum.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_params(#{setString},#{setByte},#{setShort},#{setInt},#{setLong},#{setJsonObject},#{setJsonArray},#{setVertxGen},#{setDataObject},#{setEnum})"
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
      raise ArgumentError, "Invalid arguments when calling method_with_map_params(#{mapString},#{mapByte},#{mapShort},#{mapInt},#{mapLong},#{mapJsonObject},#{mapJsonArray},#{mapVertxGen})"
    end
    # @param [Proc] listStringHandler 
    # @param [Proc] listIntHandler 
    # @param [Proc] setStringHandler 
    # @yield 
    # @return [void]
    def method_with_handler_list_and_set(listStringHandler=nil,listIntHandler=nil,setStringHandler=nil)
      if listStringHandler.class == Proc && listIntHandler.class == Proc && setStringHandler.class == Proc && block_given?
        return @j_del.java_method(:methodWithHandlerListAndSet, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| listStringHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| listIntHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| setStringHandler.call(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }),(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_and_set(#{listStringHandler},#{listIntHandler},#{setStringHandler})"
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
    def method_with_handler_list_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerListVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerListAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface2Impl) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_abstract_vertx_gen()"
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
    def method_with_handler_list_complex_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerListComplexJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_complex_json_object()"
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
    def method_with_handler_list_complex_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerListComplexJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_complex_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_data_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerListDataObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_data_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_list_enum
      if block_given?
        return @j_del.java_method(:methodWithHandlerListEnum, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_list_enum()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_string
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetString, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_string()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_integer
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetInteger, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_integer()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface2Impl) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_abstract_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_complex_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetComplexJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_complex_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_complex_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetComplexJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_complex_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_data_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetDataObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_data_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_set_enum
      if block_given?
        return @j_del.java_method(:methodWithHandlerSetEnum, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_set_enum()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface2Impl) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_abstract_vertx_gen()"
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
    def method_with_handler_async_result_list_complex_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListComplexJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_complex_json_object()"
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
    def method_with_handler_async_result_list_complex_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListComplexJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_complex_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_data_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListDataObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_data_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_list_enum
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultListEnum, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_list_enum()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_abstract_vertx_gen
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetAbstractVertxGen, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface2Impl) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_abstract_vertx_gen()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_complex_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetComplexJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_complex_json_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_complex_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetComplexJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_complex_json_array()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_data_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetDataObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_data_object()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_set_enum
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultSetEnum, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_set_enum()"
    end
    # @yield 
    # @return [Hash{String => String}]
    def method_with_map_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_return()"
    end
    # @yield 
    # @return [Hash{String => String}]
    def method_with_map_string_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapStringReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_string_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_long_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapLongReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_long_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_integer_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapIntegerReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_integer_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_short_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapShortReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_short_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_byte_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapByteReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_byte_return()"
    end
    # @yield 
    # @return [Hash{String => Fixnum}]
    def method_with_map_character_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapCharacterReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_character_return()"
    end
    # @yield 
    # @return [Hash{String => true,false}]
    def method_with_map_boolean_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapBooleanReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_boolean_return()"
    end
    # @yield 
    # @return [Hash{String => Float}]
    def method_with_map_float_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapFloatReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_float_return()"
    end
    # @yield 
    # @return [Hash{String => Float}]
    def method_with_map_double_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapDoubleReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_double_return()"
    end
    # @yield 
    # @return [Hash{String => Hash{String => Object}}]
    def method_with_map_json_object_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapJsonObjectReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_json_object_return()"
    end
    # @yield 
    # @return [Hash{String => Hash{String => Object}}]
    def method_with_map_complex_json_object_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapComplexJsonObjectReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_complex_json_object_return()"
    end
    # @yield 
    # @return [Hash{String => Array<String,Object>}]
    def method_with_map_json_array_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapJsonArrayReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_json_array_return()"
    end
    # @yield 
    # @return [Hash{String => Array<String,Object>}]
    def method_with_map_complex_json_array_return
      if block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapComplexJsonArrayReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_complex_json_array_return()"
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
        return @j_del.java_method(:methodWithListVertxGenReturn, []).call().to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
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
    # @return [Array<Hash{String => Object}>]
    def method_with_list_complex_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithListComplexJsonObjectReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_complex_json_object_return()"
    end
    # @return [Array<Array<String,Object>>]
    def method_with_list_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithListJsonArrayReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_json_array_return()"
    end
    # @return [Array<Array<String,Object>>]
    def method_with_list_complex_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithListComplexJsonArrayReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_complex_json_array_return()"
    end
    # @return [Array<Hash>]
    def method_with_list_data_object_return
      if !block_given?
        return @j_del.java_method(:methodWithListDataObjectReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_data_object_return()"
    end
    # @return [Array<:TIM,:JULIEN,:NICK,:WESTON>]
    def method_with_list_enum_return
      if !block_given?
        return @j_del.java_method(:methodWithListEnumReturn, []).call().to_a.map { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_enum_return()"
    end
    # @return [Set<String>]
    def method_with_set_string_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetStringReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_string_return()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_long_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetLongReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_long_return()"
    end
    # @return [Set<::Testmodel::RefedInterface1>]
    def method_with_set_vertx_gen_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetVertxGenReturn, []).call()).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_vertx_gen_return()"
    end
    # @return [Set<Hash{String => Object}>]
    def method_with_set_json_object_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetJsonObjectReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_json_object_return()"
    end
    # @return [Set<Hash{String => Object}>]
    def method_with_set_complex_json_object_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetComplexJsonObjectReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_complex_json_object_return()"
    end
    # @return [Set<Array<String,Object>>]
    def method_with_set_json_array_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetJsonArrayReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_json_array_return()"
    end
    # @return [Set<Array<String,Object>>]
    def method_with_set_complex_json_array_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetComplexJsonArrayReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_complex_json_array_return()"
    end
    # @return [Set<Hash>]
    def method_with_set_data_object_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetDataObjectReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_data_object_return()"
    end
    # @return [Set<:TIM,:JULIEN,:NICK,:WESTON>]
    def method_with_set_enum_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetEnumReturn, []).call()).map! { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_enum_return()"
    end
  end
end

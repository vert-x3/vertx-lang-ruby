require 'testmodel/generic_refed_interface'
require 'testmodel/refed_interface1'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.FunctionParamTCK
module Testmodel
  class FunctionParamTCK
    # @private
    # @param j_del [::Testmodel::FunctionParamTCK] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::FunctionParamTCK] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == FunctionParamTCK
    end
    def @@j_api_type.wrap(obj)
      FunctionParamTCK.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::FunctionParamTCK.java_class
    end
    # @param [Proc] byteFunc 
    # @param [Proc] shortFunc 
    # @param [Proc] integerFunc 
    # @param [Proc] longFunc 
    # @param [Proc] floatFunc 
    # @param [Proc] doubleFunc 
    # @param [Proc] booleanFunc 
    # @param [Proc] charFunc 
    # @yield 
    # @return [Array<String>]
    def method_with_basic_param(byteFunc=nil,shortFunc=nil,integerFunc=nil,longFunc=nil,floatFunc=nil,doubleFunc=nil,booleanFunc=nil,charFunc=nil,stringFunc=nil)
      if byteFunc.class == Proc && shortFunc.class == Proc && integerFunc.class == Proc && longFunc.class == Proc && floatFunc.class == Proc && doubleFunc.class == Proc && booleanFunc.class == Proc && charFunc.class == Proc && block_given? && stringFunc == nil
        return @j_del.java_method(:methodWithBasicParam, [Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| byteFunc.call(event) }),(Proc.new { |event| shortFunc.call(event) }),(Proc.new { |event| integerFunc.call(event) }),(Proc.new { |event| longFunc.call(event) }),(Proc.new { |event| floatFunc.call(event) }),(Proc.new { |event| doubleFunc.call(event) }),(Proc.new { |event| booleanFunc.call(event) }),(Proc.new { |event| charFunc.call(event) }),(Proc.new { |event| yield(event) })).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_basic_param(#{byteFunc},#{shortFunc},#{integerFunc},#{longFunc},#{floatFunc},#{doubleFunc},#{booleanFunc},#{charFunc},#{stringFunc})"
    end
    # @param [Proc] objectFunc 
    # @yield 
    # @return [Array<String>]
    def method_with_json_param(objectFunc=nil,arrayFunc=nil)
      if objectFunc.class == Proc && block_given? && arrayFunc == nil
        return @j_del.java_method(:methodWithJsonParam, [Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| objectFunc.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| yield(event != nil ? JSON.parse(event.encode) : nil) })).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_param(#{objectFunc},#{arrayFunc})"
    end
    # @yield 
    # @return [String]
    def method_with_void_param(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithVoidParam, [Java::JavaUtilFunction::Function.java_class]).call(Proc.new { yield })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_void_param(#{func})"
    end
    # @param [::Testmodel::RefedInterface1] arg 
    # @yield 
    # @return [String]
    def method_with_user_type_param(arg=nil,func=nil)
      if arg.class.method_defined?(:j_del) && block_given? && func == nil
        return @j_del.java_method(:methodWithUserTypeParam, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class,Java::JavaUtilFunction::Function.java_class]).call(arg.j_del,(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::RefedInterface1)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_user_type_param(#{arg},#{func})"
    end
    # @param [Object] arg 
    # @yield 
    # @return [String]
    def method_with_object_param(arg=nil,func=nil)
      if ::Vertx::Util::unknown_type.accept?(arg) && block_given? && func == nil
        return @j_del.java_method(:methodWithObjectParam, [Java::java.lang.Object.java_class,Java::JavaUtilFunction::Function.java_class]).call(::Vertx::Util::Utils.to_object(arg),(Proc.new { |event| yield(::Vertx::Util::Utils.from_object(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_object_param(#{arg},#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_data_object_param(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithDataObjectParam, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(event != nil ? JSON.parse(event.toJson.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_param(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_enum_param(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithEnumParam, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(event.name.intern) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_enum_param(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_list_param(stringFunc=nil)
      if block_given? && stringFunc == nil
        return @j_del.java_method(:methodWithListParam, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_param(#{stringFunc})"
    end
    # @yield 
    # @return [String]
    def method_with_set_param(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithSetParam, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_param(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_map_param(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithMapParam, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_param(#{func})"
    end
    # @param [Object] t 
    # @yield 
    # @return [String]
    def method_with_generic_param(t=nil,func=nil)
      if ::Vertx::Util::unknown_type.accept?(t) && block_given? && func == nil
        return @j_del.java_method(:methodWithGenericParam, [Java::java.lang.Object.java_class,Java::JavaUtilFunction::Function.java_class]).call(::Vertx::Util::Utils.to_object(t),(Proc.new { |event| yield(::Vertx::Util::Utils.from_object(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_param(#{t},#{func})"
    end
    # @param [Object] t 
    # @yield 
    # @return [String]
    def method_with_generic_user_type_param(t=nil,func=nil)
      if ::Vertx::Util::unknown_type.accept?(t) && block_given? && func == nil
        return @j_del.java_method(:methodWithGenericUserTypeParam, [Java::java.lang.Object.java_class,Java::JavaUtilFunction::Function.java_class]).call(::Vertx::Util::Utils.to_object(t),(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_user_type_param(#{t},#{func})"
    end
    # @param [Proc] byteFunc 
    # @param [Proc] shortFunc 
    # @param [Proc] integerFunc 
    # @param [Proc] longFunc 
    # @param [Proc] floatFunc 
    # @param [Proc] doubleFunc 
    # @param [Proc] booleanFunc 
    # @param [Proc] charFunc 
    # @yield 
    # @return [String]
    def method_with_basic_return(byteFunc=nil,shortFunc=nil,integerFunc=nil,longFunc=nil,floatFunc=nil,doubleFunc=nil,booleanFunc=nil,charFunc=nil,stringFunc=nil)
      if byteFunc.class == Proc && shortFunc.class == Proc && integerFunc.class == Proc && longFunc.class == Proc && floatFunc.class == Proc && doubleFunc.class == Proc && booleanFunc.class == Proc && charFunc.class == Proc && block_given? && stringFunc == nil
        return @j_del.java_method(:methodWithBasicReturn, [Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| ::Vertx::Util::Utils.to_byte(byteFunc.call(event)) }),(Proc.new { |event| ::Vertx::Util::Utils.to_short(shortFunc.call(event)) }),(Proc.new { |event| ::Vertx::Util::Utils.to_integer(integerFunc.call(event)) }),(Proc.new { |event| longFunc.call(event) }),(Proc.new { |event| ::Vertx::Util::Utils.to_float(floatFunc.call(event)) }),(Proc.new { |event| ::Vertx::Util::Utils.to_double(doubleFunc.call(event)) }),(Proc.new { |event| booleanFunc.call(event) }),(Proc.new { |event| ::Vertx::Util::Utils.to_character(charFunc.call(event)) }),(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_basic_return(#{byteFunc},#{shortFunc},#{integerFunc},#{longFunc},#{floatFunc},#{doubleFunc},#{booleanFunc},#{charFunc},#{stringFunc})"
    end
    # @param [Proc] objectFunc 
    # @yield 
    # @return [String]
    def method_with_json_return(objectFunc=nil,arrayFunc=nil)
      if objectFunc.class == Proc && block_given? && arrayFunc == nil
        return @j_del.java_method(:methodWithJsonReturn, [Java::JavaUtilFunction::Function.java_class,Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| ::Vertx::Util::Utils.to_json_object(objectFunc.call(event)) }),(Proc.new { |event| ::Vertx::Util::Utils.to_json_array(yield(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_return(#{objectFunc},#{arrayFunc})"
    end
    # @yield 
    # @return [String]
    def method_with_object_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithObjectReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| ::Vertx::Util::Utils.to_object(yield(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_object_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_data_object_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithDataObjectReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(yield(event))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_enum_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithEnumReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(yield(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_enum_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_list_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithListReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(event).map { |element| element } }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_set_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithSetReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| Java::JavaUtil::LinkedHashSet.new(yield(event).map { |element| element }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_map_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithMapReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| Hash[yield(event).map { |k,v| [k,v] }] }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_generic_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithGenericReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| ::Vertx::Util::Utils.to_object(yield(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_generic_user_type_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithGenericUserTypeReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)).j_del }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_generic_user_type_return(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_nullable_list_param(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithNullableListParam, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_param(#{func})"
    end
    # @yield 
    # @return [String]
    def method_with_nullable_list_return(func=nil)
      if block_given? && func == nil
        return @j_del.java_method(:methodWithNullableListReturn, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(event).map { |element| element } }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_return(#{func})"
    end
  end
end

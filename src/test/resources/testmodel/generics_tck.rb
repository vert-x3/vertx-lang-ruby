require 'testmodel/generic_refed_interface'
require 'testmodel/interface_with_api_arg'
require 'testmodel/interface_with_variable_arg'
require 'testmodel/interface_with_string_arg'
require 'testmodel/refed_interface1'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.GenericsTCK
module Testmodel
  class GenericsTCK
    # @private
    # @param j_del [::Testmodel::GenericsTCK] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::GenericsTCK] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == GenericsTCK
    end
    def @@j_api_type.wrap(obj)
      GenericsTCK.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::GenericsTCK.java_class
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_byte_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithByteParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_byte_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_short_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithShortParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_short_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_integer_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithIntegerParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_integer_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_long_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithLongParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_long_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_float_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithFloatParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_float_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_double_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithDoubleParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_double_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_boolean_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithBooleanParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_boolean_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_character_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithCharacterParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_character_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_string_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithStringParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_string_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_json_object_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithJsonObjectParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_object_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_json_array_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithJsonArrayParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_json_array_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_data_object_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithDataObjectParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface,::Vertx::Util::data_object_type(Java::IoVertxCodegenTestmodel::TestDataObject))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_enum_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithEnumParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestEnum))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_enum_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_gen_enum_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithGenEnumParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestGenEnum))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_gen_enum_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_user_type_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithUserTypeParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface,::Testmodel::RefedInterface1.j_api_type)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_user_type_parameterized_return()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_byte_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerByteParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_byte_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_short_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerShortParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_short_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_integer_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerIntegerParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_integer_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_long_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerLongParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_long_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_float_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerFloatParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_float_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_double_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerDoubleParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_double_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_boolean_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerBooleanParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_boolean_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_character_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerCharacterParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_character_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_string_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerStringParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_string_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_json_object_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerJsonObjectParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_json_object_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_json_array_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerJsonArrayParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_json_array_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_data_object_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerDataObjectParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Vertx::Util::data_object_type(Java::IoVertxCodegenTestmodel::TestDataObject))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_data_object_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestEnum))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_enum_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_gen_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerGenEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestGenEnum))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_gen_enum_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_user_type_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerUserTypeParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Testmodel::RefedInterface1.j_api_type)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_user_type_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_byte_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultByteParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_byte_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_short_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultShortParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_short_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_integer_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultIntegerParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_integer_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_long_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultLongParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_long_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_float_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultFloatParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_float_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_double_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultDoubleParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_double_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_boolean_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultBooleanParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_boolean_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_character_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultCharacterParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_character_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_string_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultStringParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_string_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_json_object_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultJsonObjectParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_json_object_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_json_array_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultJsonArrayParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_json_array_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_data_object_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultDataObjectParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface,::Vertx::Util::data_object_type(Java::IoVertxCodegenTestmodel::TestDataObject)) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_data_object_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestEnum)) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_enum_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_gen_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultGenEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestGenEnum)) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_gen_enum_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_user_type_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultUserTypeParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface,::Testmodel::RefedInterface1.j_api_type) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_user_type_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_byte_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamByteParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_byte_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_short_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamShortParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_short_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_integer_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamIntegerParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_integer_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_long_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamLongParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_long_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_float_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamFloatParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_float_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_double_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamDoubleParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_double_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_boolean_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamBooleanParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_boolean_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_character_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamCharacterParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_character_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_string_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamStringParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_string_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_json_object_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamJsonObjectParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_json_object_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_json_array_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamJsonArrayParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_json_array_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_data_object_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamDataObjectParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Vertx::Util::data_object_type(Java::IoVertxCodegenTestmodel::TestDataObject))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_data_object_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_enum_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamEnumParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestEnum))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_enum_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_gen_enum_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamGenEnumParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Vertx::Util::java_enum_type(Java::IoVertxCodegenTestmodel::TestGenEnum))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_gen_enum_parameterized(#{handler})"
    end
    # @yield 
    # @return [void]
    def method_with_function_param_user_type_parameterized(handler=nil)
      if block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamUserTypeParameterized, [Java::JavaUtilFunction::Function.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface,::Testmodel::RefedInterface1.j_api_type)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_user_type_parameterized(#{handler})"
    end
    # @param [Nil] type 
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_class_type_parameterized_return(type=nil)
      if type.class == Class && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithClassTypeParameterizedReturn, [Java::JavaLang::Class.java_class]).call(::Vertx::Util::Utils.j_class_of(type)),::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_parameterized_return(#{type})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_handler_class_type_parameterized(type=nil)
      if type.class == Class && block_given?
        return @j_del.java_method(:methodWithHandlerClassTypeParameterized, [Java::JavaLang::Class.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_class_type_parameterized(#{type})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_handler_async_result_class_type_parameterized(type=nil)
      if type.class == Class && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultClassTypeParameterized, [Java::JavaLang::Class.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type)) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_class_type_parameterized(#{type})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_function_param_class_type_parameterized(type=nil,handler=nil)
      if type.class == Class && block_given? && handler == nil
        return @j_del.java_method(:methodWithFunctionParamClassTypeParameterized, [Java::JavaLang::Class.java_class,Java::JavaUtilFunction::Function.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_function_param_class_type_parameterized(#{type},#{handler})"
    end
    # @param [Nil] type 
    # @param [Object] u 
    # @return [void]
    def method_with_class_type_param(type=nil,u=nil)
      if type.class == Class && ::Vertx::Util::Utils.v_type_of(type).accept?(u) && !block_given?
        return @j_del.java_method(:methodWithClassTypeParam, [Java::JavaLang::Class.java_class,Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.j_class_of(type),::Vertx::Util::Utils.v_type_of(type).unwrap(u))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_param(#{type},#{u})"
    end
    # @param [Nil] type 
    # @return [Object]
    def method_with_class_type_return(type=nil)
      if type.class == Class && !block_given?
        return ::Vertx::Util::Utils.v_type_of(type).wrap(@j_del.java_method(:methodWithClassTypeReturn, [Java::JavaLang::Class.java_class]).call(::Vertx::Util::Utils.j_class_of(type)))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_return(#{type})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_class_type_handler(type=nil)
      if type.class == Class && block_given?
        return @j_del.java_method(:methodWithClassTypeHandler, [Java::JavaLang::Class.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |event| yield(::Vertx::Util::Utils.v_type_of(type).wrap(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_handler(#{type})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_class_type_handler_async_result(type=nil)
      if type.class == Class && block_given?
        return @j_del.java_method(:methodWithClassTypeHandlerAsyncResult, [Java::JavaLang::Class.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.v_type_of(type).wrap(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_handler_async_result(#{type})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_class_type_function_param(type=nil,f=nil)
      if type.class == Class && block_given? && f == nil
        return @j_del.java_method(:methodWithClassTypeFunctionParam, [Java::JavaLang::Class.java_class,Java::JavaUtilFunction::Function.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |event| yield(::Vertx::Util::Utils.v_type_of(type).wrap(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_function_param(#{type},#{f})"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_class_type_function_return(type=nil,f=nil)
      if type.class == Class && block_given? && f == nil
        return @j_del.java_method(:methodWithClassTypeFunctionReturn, [Java::JavaLang::Class.java_class,Java::JavaUtilFunction::Function.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |event| ::Vertx::Util::Utils.v_type_of(type).unwrap(yield(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_function_return(#{type},#{f})"
    end
    # @param [::Testmodel::RefedInterface1] value 
    # @return [::Testmodel::InterfaceWithApiArg]
    def interface_with_api_arg(value=nil)
      if value.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:interfaceWithApiArg, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(value.j_del),::Testmodel::InterfaceWithApiArg)
      end
      raise ArgumentError, "Invalid arguments when calling interface_with_api_arg(#{value})"
    end
    # @param [String] value 
    # @return [::Testmodel::InterfaceWithStringArg]
    def interface_with_string_arg(value=nil)
      if value.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:interfaceWithStringArg, [Java::java.lang.String.java_class]).call(value),::Testmodel::InterfaceWithStringArg)
      end
      raise ArgumentError, "Invalid arguments when calling interface_with_string_arg(#{value})"
    end
    # @param [Object] value1 
    # @param [Nil] type 
    # @param [Object] value2 
    # @return [::Testmodel::InterfaceWithVariableArg]
    def interface_with_variable_arg(value1=nil,type=nil,value2=nil)
      if ::Vertx::Util::unknown_type.accept?(value1) && type.class == Class && ::Vertx::Util::Utils.v_type_of(type).accept?(value2) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:interfaceWithVariableArg, [Java::java.lang.Object.java_class,Java::JavaLang::Class.java_class,Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(value1),::Vertx::Util::Utils.j_class_of(type),::Vertx::Util::Utils.v_type_of(type).unwrap(value2)),::Testmodel::InterfaceWithVariableArg, nil, ::Vertx::Util::Utils.v_type_of(type))
      end
      raise ArgumentError, "Invalid arguments when calling interface_with_variable_arg(#{value1},#{type},#{value2})"
    end
  end
end

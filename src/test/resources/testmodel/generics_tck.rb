require 'testmodel/generic_refed_interface'
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
      true
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
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithDataObjectParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_enum_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithEnumParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_enum_parameterized_return()"
    end
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_gen_enum_parameterized_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithGenEnumParameterizedReturn, []).call(),::Testmodel::GenericRefedInterface, nil)
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
        return @j_del.java_method(:methodWithHandlerDataObjectParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_data_object_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_enum_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_gen_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerGenEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, nil)) }))
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
        return @j_del.java_method(:methodWithHandlerAsyncResultDataObjectParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_data_object_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_enum_parameterized()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_gen_enum_parameterized
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultGenEnumParameterized, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, nil) : nil) }))
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
    # @param [Nil] type 
    # @return [::Testmodel::GenericRefedInterface]
    def method_with_class_type_parameterized_return(type=nil)
      if type.class == Class && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithClassTypeParameterizedReturn, [Java::JavaLang::Class.java_class]).call(::Vertx::Util::Utils.j_class_of(type)),::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_class_type_parameterized_return(type)"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_handler_class_type_parameterized(type=nil)
      if type.class == Class && block_given?
        return @j_del.java_method(:methodWithHandlerClassTypeParameterized, [Java::JavaLang::Class.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type))) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_class_type_parameterized(type)"
    end
    # @param [Nil] type 
    # @yield 
    # @return [void]
    def method_with_handler_async_result_class_type_parameterized(type=nil)
      if type.class == Class && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultClassTypeParameterized, [Java::JavaLang::Class.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.j_class_of(type),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface, ::Vertx::Util::Utils.v_type_of(type)) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_class_type_parameterized(type)"
    end
  end
end

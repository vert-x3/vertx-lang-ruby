require 'testmodel/refed_interface1'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.NullableTCK
module Testmodel
  #  The TCK for @Nullable.
  class NullableTCK
    # @private
    # @param j_del [::Testmodel::NullableTCK] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::NullableTCK] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Fixnum] param 
    # @return [true,false]
    def method_with_non_nullable_byte_param?(param=nil)
      if param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNonNullableByteParam, [Java::JavaLang::Byte.java_class]).call(::Vertx::Util::Utils.to_byte(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_byte_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Fixnum] param 
    # @return [void]
    def method_with_nullable_byte_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNullableByteParam, [Java::boolean.java_class,Java::JavaLang::Byte.java_class]).call(expectNull,::Vertx::Util::Utils.to_byte(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_byte_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_byte_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableByteHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_byte_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_byte_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableByteHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_byte_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Fixnum]
    def method_with_nullable_byte_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableByteReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_byte_return(notNull)"
    end
    # @param [Fixnum] param 
    # @return [true,false]
    def method_with_non_nullable_short_param?(param=nil)
      if param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNonNullableShortParam, [Java::JavaLang::Short.java_class]).call(::Vertx::Util::Utils.to_short(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_short_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Fixnum] param 
    # @return [void]
    def method_with_nullable_short_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNullableShortParam, [Java::boolean.java_class,Java::JavaLang::Short.java_class]).call(expectNull,::Vertx::Util::Utils.to_short(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_short_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_short_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableShortHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_short_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_short_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableShortHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_short_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Fixnum]
    def method_with_nullable_short_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableShortReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_short_return(notNull)"
    end
    # @param [Fixnum] param 
    # @return [true,false]
    def method_with_non_nullable_integer_param?(param=nil)
      if param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNonNullableIntegerParam, [Java::JavaLang::Integer.java_class]).call(::Vertx::Util::Utils.to_integer(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_integer_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Fixnum] param 
    # @return [void]
    def method_with_nullable_integer_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNullableIntegerParam, [Java::boolean.java_class,Java::JavaLang::Integer.java_class]).call(expectNull,::Vertx::Util::Utils.to_integer(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_integer_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_integer_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableIntegerHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_integer_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_integer_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableIntegerHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_integer_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Fixnum]
    def method_with_nullable_integer_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableIntegerReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_integer_return(notNull)"
    end
    # @param [Fixnum] param 
    # @return [true,false]
    def method_with_non_nullable_long_param?(param=nil)
      if param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNonNullableLongParam, [Java::JavaLang::Long.java_class]).call(param)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_long_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Fixnum] param 
    # @return [void]
    def method_with_nullable_long_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNullableLongParam, [Java::boolean.java_class,Java::JavaLang::Long.java_class]).call(expectNull,param)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_long_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_long_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableLongHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_long_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_long_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableLongHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_long_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Fixnum]
    def method_with_nullable_long_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableLongReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_long_return(notNull)"
    end
    # @param [Float] param 
    # @return [true,false]
    def method_with_non_nullable_float_param?(param=nil)
      if param.class == Float && !block_given?
        return @j_del.java_method(:methodWithNonNullableFloatParam, [Java::JavaLang::Float.java_class]).call(::Vertx::Util::Utils.to_float(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_float_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Float] param 
    # @return [void]
    def method_with_nullable_float_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Float && !block_given?
        return @j_del.java_method(:methodWithNullableFloatParam, [Java::boolean.java_class,Java::JavaLang::Float.java_class]).call(expectNull,::Vertx::Util::Utils.to_float(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_float_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_float_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableFloatHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_float_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_float_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableFloatHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_float_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Float]
    def method_with_nullable_float_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableFloatReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_float_return(notNull)"
    end
    # @param [Float] param 
    # @return [true,false]
    def method_with_non_nullable_double_param?(param=nil)
      if param.class == Float && !block_given?
        return @j_del.java_method(:methodWithNonNullableDoubleParam, [Java::JavaLang::Double.java_class]).call(::Vertx::Util::Utils.to_double(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_double_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Float] param 
    # @return [void]
    def method_with_nullable_double_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Float && !block_given?
        return @j_del.java_method(:methodWithNullableDoubleParam, [Java::boolean.java_class,Java::JavaLang::Double.java_class]).call(expectNull,::Vertx::Util::Utils.to_double(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_double_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_double_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableDoubleHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_double_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_double_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableDoubleHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_double_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Float]
    def method_with_nullable_double_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableDoubleReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_double_return(notNull)"
    end
    # @param [true,false] param 
    # @return [true,false]
    def method_with_non_nullable_boolean_param?(param=nil)
      if (param.class == TrueClass || param.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNonNullableBooleanParam, [Java::JavaLang::Boolean.java_class]).call(param)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_boolean_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [true,false] param 
    # @return [void]
    def method_with_nullable_boolean_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && (param.class == TrueClass || param.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableBooleanParam, [Java::boolean.java_class,Java::JavaLang::Boolean.java_class]).call(expectNull,param)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_boolean_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_boolean_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableBooleanHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_boolean_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_boolean_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableBooleanHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_boolean_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [true,false]
    def method_with_nullable_boolean_return?(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableBooleanReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_boolean_return?(notNull)"
    end
    # @param [String] param 
    # @return [true,false]
    def method_with_non_nullable_string_param?(param=nil)
      if param.class == String && !block_given?
        return @j_del.java_method(:methodWithNonNullableStringParam, [Java::java.lang.String.java_class]).call(param)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_string_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [String] param 
    # @return [void]
    def method_with_nullable_string_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == String && !block_given?
        return @j_del.java_method(:methodWithNullableStringParam, [Java::boolean.java_class,Java::java.lang.String.java_class]).call(expectNull,param)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_string_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_string_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableStringHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_string_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_string_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableStringHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_string_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [String]
    def method_with_nullable_string_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableStringReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_string_return(notNull)"
    end
    # @param [Fixnum] param 
    # @return [true,false]
    def method_with_non_nullable_char_param?(param=nil)
      if param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNonNullableCharParam, [Java::JavaLang::Character.java_class]).call(::Vertx::Util::Utils.to_character(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_char_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Fixnum] param 
    # @return [void]
    def method_with_nullable_char_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Fixnum && !block_given?
        return @j_del.java_method(:methodWithNullableCharParam, [Java::boolean.java_class,Java::JavaLang::Character.java_class]).call(expectNull,::Vertx::Util::Utils.to_character(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_char_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_char_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableCharHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_char_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_char_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableCharHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_char_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Fixnum]
    def method_with_nullable_char_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableCharReturn, [Java::boolean.java_class]).call(notNull)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_char_return(notNull)"
    end
    # @param [Hash{String => Object}] param 
    # @return [true,false]
    def method_with_non_nullable_json_object_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableJsonObjectParam, [Java::IoVertxCoreJson::JsonObject.java_class]).call(::Vertx::Util::Utils.to_json_object(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_json_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Object}] param 
    # @return [void]
    def method_with_nullable_json_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableJsonObjectParam, [Java::boolean.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(expectNull,::Vertx::Util::Utils.to_json_object(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_json_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableJsonObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event != nil ? JSON.parse(event.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_json_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableJsonObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Object}]
    def method_with_nullable_json_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableJsonObjectReturn, [Java::boolean.java_class]).call(notNull) != nil ? JSON.parse(@j_del.java_method(:methodWithNullableJsonObjectReturn, [Java::boolean.java_class]).call(notNull).encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_object_return(notNull)"
    end
    # @param [Array<String,Object>] param 
    # @return [true,false]
    def method_with_non_nullable_json_array_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableJsonArrayParam, [Java::IoVertxCoreJson::JsonArray.java_class]).call(::Vertx::Util::Utils.to_json_array(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_json_array_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<String,Object>] param 
    # @return [void]
    def method_with_nullable_json_array_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableJsonArrayParam, [Java::boolean.java_class,Java::IoVertxCoreJson::JsonArray.java_class]).call(expectNull,::Vertx::Util::Utils.to_json_array(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_array_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_json_array_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableJsonArrayHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event != nil ? JSON.parse(event.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_array_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_json_array_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableJsonArrayHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_array_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<String,Object>]
    def method_with_nullable_json_array_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableJsonArrayReturn, [Java::boolean.java_class]).call(notNull) != nil ? JSON.parse(@j_del.java_method(:methodWithNullableJsonArrayReturn, [Java::boolean.java_class]).call(notNull).encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_json_array_return(notNull)"
    end
    # @param [::Testmodel::RefedInterface1] param 
    # @return [true,false]
    def method_with_non_nullable_api_param?(param=nil)
      if param.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:methodWithNonNullableApiParam, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(param.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_api_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [::Testmodel::RefedInterface1] param 
    # @return [void]
    def method_with_nullable_api_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:methodWithNullableApiParam, [Java::boolean.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(expectNull,param.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_api_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_api_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableApiHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::RefedInterface1)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_api_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_api_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableApiHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::RefedInterface1) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_api_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [::Testmodel::RefedInterface1]
    def method_with_nullable_api_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithNullableApiReturn, [Java::boolean.java_class]).call(notNull),::Testmodel::RefedInterface1)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_api_return(notNull)"
    end
    # @param [Hash] param 
    # @return [true,false]
    def method_with_non_nullable_data_object_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableDataObjectParam, [Java::IoVertxCodegenTestmodel::TestDataObject.java_class]).call(Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(param)))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_data_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash] param 
    # @return [void]
    def method_with_nullable_data_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableDataObjectParam, [Java::boolean.java_class,Java::IoVertxCodegenTestmodel::TestDataObject.java_class]).call(expectNull,Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(param)))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_data_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_data_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableDataObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event != nil ? JSON.parse(event.toJson.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_data_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_data_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableDataObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.toJson.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_data_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash]
    def method_with_nullable_data_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableDataObjectReturn, [Java::boolean.java_class]).call(notNull) != nil ? JSON.parse(@j_del.java_method(:methodWithNullableDataObjectReturn, [Java::boolean.java_class]).call(notNull).toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_data_object_return(notNull)"
    end
    # @param [:TIM,:JULIEN,:NICK,:WESTON] param 
    # @return [true,false]
    def method_with_non_nullable_enum_param?(param=nil)
      if param.class == Symbol && !block_given?
        return @j_del.java_method(:methodWithNonNullableEnumParam, [Java::IoVertxCodegenTestmodel::TestEnum.java_class]).call(Java::IoVertxCodegenTestmodel::TestEnum.valueOf(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_enum_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [:TIM,:JULIEN,:NICK,:WESTON] param 
    # @return [void]
    def method_with_nullable_enum_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Symbol && !block_given?
        return @j_del.java_method(:methodWithNullableEnumParam, [Java::boolean.java_class,Java::IoVertxCodegenTestmodel::TestEnum.java_class]).call(expectNull,Java::IoVertxCodegenTestmodel::TestEnum.valueOf(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_enum_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_enum_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableEnumHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.name.intern) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_enum_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_enum_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableEnumHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_enum_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [:TIM,:JULIEN,:NICK,:WESTON]
    def method_with_nullable_enum_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableEnumReturn, [Java::boolean.java_class]).call(notNull).name.intern
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_enum_return(notNull)"
    end
    # @param [:LAURA,:BOB,:MIKE,:LELAND] param 
    # @return [true,false]
    def method_with_non_nullable_gen_enum_param?(param=nil)
      if param.class == Symbol && !block_given?
        return @j_del.java_method(:methodWithNonNullableGenEnumParam, [Java::IoVertxCodegenTestmodel::TestGenEnum.java_class]).call(Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_gen_enum_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [:LAURA,:BOB,:MIKE,:LELAND] param 
    # @return [void]
    def method_with_nullable_gen_enum_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Symbol && !block_given?
        return @j_del.java_method(:methodWithNullableGenEnumParam, [Java::boolean.java_class,Java::IoVertxCodegenTestmodel::TestGenEnum.java_class]).call(expectNull,Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_gen_enum_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_gen_enum_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableGenEnumHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.name.intern) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_gen_enum_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_gen_enum_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableGenEnumHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,nil)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_gen_enum_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [:LAURA,:BOB,:MIKE,:LELAND]
    def method_with_nullable_gen_enum_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableGenEnumReturn, [Java::boolean.java_class]).call(notNull).name.intern
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_gen_enum_return(notNull)"
    end
    # @param [true,false] expectNull 
    # @param [Object] param 
    # @return [void]
    def method_with_nullable_type_variable_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && (param.class == String  || param.class == Hash || param.class == Array || param.class == NilClass || param.class == TrueClass || param.class == FalseClass || param.class == Fixnum || param.class == Float) && !block_given?
        return @j_del.java_method(:methodWithNullableTypeVariableParam, [Java::boolean.java_class,Java::java.lang.Object.java_class]).call(expectNull,::Vertx::Util::Utils.to_object(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_type_variable_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @param [Object] value 
    # @yield 
    # @return [void]
    def method_with_nullable_type_variable_handler(notNull=nil,value=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && block_given?
        return @j_del.java_method(:methodWithNullableTypeVariableHandler, [Java::boolean.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,::Vertx::Util::Utils.to_object(value),(Proc.new { |event| yield(::Vertx::Util::Utils.from_object(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_type_variable_handler(notNull,value)"
    end
    # @param [true,false] notNull 
    # @param [Object] value 
    # @yield 
    # @return [void]
    def method_with_nullable_type_variable_handler_async_result(notNull=nil,value=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && block_given?
        return @j_del.java_method(:methodWithNullableTypeVariableHandlerAsyncResult, [Java::boolean.java_class,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,::Vertx::Util::Utils.to_object(value),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_type_variable_handler_async_result(notNull,value)"
    end
    # @param [true,false] notNull 
    # @param [Object] value 
    # @return [Object]
    def method_with_nullable_type_variable_return(notNull=nil,value=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:methodWithNullableTypeVariableReturn, [Java::boolean.java_class,Java::java.lang.Object.java_class]).call(notNull,::Vertx::Util::Utils.to_object(value)))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_type_variable_return(notNull,value)"
    end
    # @param [true,false] expectNull 
    # @param [Object] param 
    # @return [void]
    def method_with_nullable_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && (param.class == String  || param.class == Hash || param.class == Array || param.class == NilClass || param.class == TrueClass || param.class == FalseClass || param.class == Fixnum || param.class == Float) && !block_given?
        return @j_del.java_method(:methodWithNullableObjectParam, [Java::boolean.java_class,Java::java.lang.Object.java_class]).call(expectNull,::Vertx::Util::Utils.to_object(param))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_object_param(expectNull,param)"
    end
    # @param [Array<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_list_byte_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListByteParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_byte(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_byte_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_nullable_list_byte_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListByteParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_byte(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_byte_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_byte_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListByteHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_byte_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_byte_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListByteHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_byte_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Fixnum>]
    def method_with_nullable_list_byte_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListByteReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_byte_return(notNull)"
    end
    # @param [Array<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_list_short_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListShortParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_short(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_short_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_nullable_list_short_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListShortParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_short(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_short_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_short_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListShortHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_short_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_short_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListShortHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_short_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Fixnum>]
    def method_with_nullable_list_short_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListShortReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_short_return(notNull)"
    end
    # @param [Array<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_list_integer_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListIntegerParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_integer(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_integer_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_nullable_list_integer_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListIntegerParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_integer(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_integer_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_integer_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListIntegerHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_integer_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_integer_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListIntegerHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_integer_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Fixnum>]
    def method_with_nullable_list_integer_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListIntegerReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_integer_return(notNull)"
    end
    # @param [Array<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_list_long_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListLongParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_long_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_nullable_list_long_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListLongParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_long_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_long_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListLongHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_long_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_long_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListLongHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_long_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Fixnum>]
    def method_with_nullable_list_long_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListLongReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_long_return(notNull)"
    end
    # @param [Array<Float>] param 
    # @return [true,false]
    def method_with_non_nullable_list_float_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListFloatParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_float(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_float_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Float>] param 
    # @return [void]
    def method_with_nullable_list_float_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListFloatParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_float(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_float_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_float_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListFloatHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_float_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_float_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListFloatHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_float_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Float>]
    def method_with_nullable_list_float_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListFloatReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_float_return(notNull)"
    end
    # @param [Array<Float>] param 
    # @return [true,false]
    def method_with_non_nullable_list_double_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListDoubleParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_double(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_double_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Float>] param 
    # @return [void]
    def method_with_nullable_list_double_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListDoubleParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_double(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_double_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_double_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListDoubleHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_double_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_double_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListDoubleHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_double_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Float>]
    def method_with_nullable_list_double_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListDoubleReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_double_return(notNull)"
    end
    # @param [Array<true,false>] param 
    # @return [true,false]
    def method_with_non_nullable_list_boolean_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListBooleanParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_boolean_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<true,false>] param 
    # @return [void]
    def method_with_nullable_list_boolean_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListBooleanParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_boolean_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_boolean_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListBooleanHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_boolean_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_boolean_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListBooleanHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_boolean_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<true,false>]
    def method_with_nullable_list_boolean_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListBooleanReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_boolean_return(notNull)"
    end
    # @param [Array<String>] param 
    # @return [true,false]
    def method_with_non_nullable_list_string_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListStringParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_string_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<String>] param 
    # @return [void]
    def method_with_nullable_list_string_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListStringParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_string_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_string_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListStringHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_string_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_string_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListStringHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_string_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<String>]
    def method_with_nullable_list_string_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListStringReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_string_return(notNull)"
    end
    # @param [Array<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_list_char_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListCharParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_character(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_char_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_nullable_list_char_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListCharParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_character(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_char_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_char_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListCharHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_char_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_char_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListCharHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_char_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Fixnum>]
    def method_with_nullable_list_char_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListCharReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_char_return(notNull)"
    end
    # @param [Array<Hash{String => Object}>] param 
    # @return [true,false]
    def method_with_non_nullable_list_json_object_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListJsonObjectParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_json_object(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_json_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Hash{String => Object}>] param 
    # @return [void]
    def method_with_nullable_list_json_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListJsonObjectParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_json_object(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_json_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListJsonObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_json_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListJsonObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Hash{String => Object}>]
    def method_with_nullable_list_json_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListJsonObjectReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_object_return(notNull)"
    end
    # @param [Array<Array<String,Object>>] param 
    # @return [true,false]
    def method_with_non_nullable_list_json_array_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListJsonArrayParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_json_array(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_json_array_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Array<String,Object>>] param 
    # @return [void]
    def method_with_nullable_list_json_array_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListJsonArrayParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| ::Vertx::Util::Utils.to_json_array(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_array_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_json_array_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListJsonArrayHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_array_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_json_array_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListJsonArrayHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_array_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Array<String,Object>>]
    def method_with_nullable_list_json_array_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListJsonArrayReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_json_array_return(notNull)"
    end
    # @param [Array<::Testmodel::RefedInterface1>] param 
    # @return [true,false]
    def method_with_non_nullable_list_api_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListApiParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element.j_del })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_api_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<::Testmodel::RefedInterface1>] param 
    # @return [void]
    def method_with_nullable_list_api_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListApiParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| element.j_del })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_api_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_api_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListApiHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_api_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_api_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListApiHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_api_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<::Testmodel::RefedInterface1>]
    def method_with_nullable_list_api_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListApiReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_api_return(notNull)"
    end
    # @param [Array<Hash>] param 
    # @return [true,false]
    def method_with_non_nullable_list_data_object_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListDataObjectParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_data_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<Hash>] param 
    # @return [void]
    def method_with_nullable_list_data_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListDataObjectParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_data_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_data_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListDataObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_data_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_data_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListDataObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_data_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<Hash>]
    def method_with_nullable_list_data_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListDataObjectReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_data_object_return(notNull)"
    end
    # @param [Array<:TIM,:JULIEN,:NICK,:WESTON>] param 
    # @return [true,false]
    def method_with_non_nullable_list_enum_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListEnumParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_enum_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<:TIM,:JULIEN,:NICK,:WESTON>] param 
    # @return [void]
    def method_with_nullable_list_enum_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListEnumParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_enum_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_enum_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListEnumHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_enum_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_enum_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListEnumHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_enum_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<:TIM,:JULIEN,:NICK,:WESTON>]
    def method_with_nullable_list_enum_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListEnumReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_enum_return(notNull)"
    end
    # @param [Array<:LAURA,:BOB,:MIKE,:LELAND>] param 
    # @return [true,false]
    def method_with_non_nullable_list_gen_enum_param?(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNonNullableListGenEnumParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_list_gen_enum_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Array<:LAURA,:BOB,:MIKE,:LELAND>] param 
    # @return [void]
    def method_with_nullable_list_gen_enum_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Array && !block_given?
        return @j_del.java_method(:methodWithNullableListGenEnumParam, [Java::boolean.java_class,Java::JavaUtil::List.java_class]).call(expectNull,param.map { |element| Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_gen_enum_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_gen_enum_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListGenEnumHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(event.to_a.map { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_gen_enum_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_list_gen_enum_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableListGenEnumHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_gen_enum_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Array<:LAURA,:BOB,:MIKE,:LELAND>]
    def method_with_nullable_list_gen_enum_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return @j_del.java_method(:methodWithNullableListGenEnumReturn, [Java::boolean.java_class]).call(notNull).to_a.map { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_list_gen_enum_return(notNull)"
    end
    # @param [Set<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_set_byte_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetByteParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_byte(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_byte_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_nullable_set_byte_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetByteParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_byte(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_byte_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_byte_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetByteHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_byte_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_byte_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetByteHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_byte_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Fixnum>]
    def method_with_nullable_set_byte_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetByteReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_byte_return(notNull)"
    end
    # @param [Set<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_set_short_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetShortParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_short(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_short_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_nullable_set_short_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetShortParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_short(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_short_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_short_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetShortHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_short_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_short_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetShortHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_short_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Fixnum>]
    def method_with_nullable_set_short_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetShortReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_short_return(notNull)"
    end
    # @param [Set<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_set_integer_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetIntegerParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_integer(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_integer_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_nullable_set_integer_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetIntegerParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_integer(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_integer_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_integer_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetIntegerHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_integer_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_integer_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetIntegerHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_integer_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Fixnum>]
    def method_with_nullable_set_integer_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetIntegerReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_integer_return(notNull)"
    end
    # @param [Set<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_set_long_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetLongParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_long_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_nullable_set_long_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetLongParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_long_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_long_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetLongHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_long_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_long_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetLongHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_long_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Fixnum>]
    def method_with_nullable_set_long_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetLongReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_long_return(notNull)"
    end
    # @param [Set<Float>] param 
    # @return [true,false]
    def method_with_non_nullable_set_float_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetFloatParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_float(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_float_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Float>] param 
    # @return [void]
    def method_with_nullable_set_float_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetFloatParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_float(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_float_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_float_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetFloatHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_float_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_float_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetFloatHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_float_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Float>]
    def method_with_nullable_set_float_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetFloatReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_float_return(notNull)"
    end
    # @param [Set<Float>] param 
    # @return [true,false]
    def method_with_non_nullable_set_double_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetDoubleParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_double(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_double_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Float>] param 
    # @return [void]
    def method_with_nullable_set_double_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetDoubleParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_double(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_double_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_double_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetDoubleHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_double_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_double_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetDoubleHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_double_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Float>]
    def method_with_nullable_set_double_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetDoubleReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_double_return(notNull)"
    end
    # @param [Set<true,false>] param 
    # @return [true,false]
    def method_with_non_nullable_set_boolean_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetBooleanParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_boolean_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<true,false>] param 
    # @return [void]
    def method_with_nullable_set_boolean_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetBooleanParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_boolean_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_boolean_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetBooleanHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_boolean_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_boolean_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetBooleanHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_boolean_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<true,false>]
    def method_with_nullable_set_boolean_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetBooleanReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_boolean_return(notNull)"
    end
    # @param [Set<String>] param 
    # @return [true,false]
    def method_with_non_nullable_set_string_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetStringParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_string_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<String>] param 
    # @return [void]
    def method_with_nullable_set_string_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetStringParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_string_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_string_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetStringHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_string_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_string_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetStringHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_string_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<String>]
    def method_with_nullable_set_string_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetStringReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_string_return(notNull)"
    end
    # @param [Set<Fixnum>] param 
    # @return [true,false]
    def method_with_non_nullable_set_char_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetCharParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_character(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_char_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_nullable_set_char_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetCharParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_character(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_char_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_char_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetCharHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_char_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_char_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetCharHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_char_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Fixnum>]
    def method_with_nullable_set_char_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetCharReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_char_return(notNull)"
    end
    # @param [Set<Hash{String => Object}>] param 
    # @return [true,false]
    def method_with_non_nullable_set_json_object_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetJsonObjectParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_json_object(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_json_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Hash{String => Object}>] param 
    # @return [void]
    def method_with_nullable_set_json_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetJsonObjectParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_json_object(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_json_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetJsonObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_json_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetJsonObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Hash{String => Object}>]
    def method_with_nullable_set_json_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetJsonObjectReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_object_return(notNull)"
    end
    # @param [Set<Array<String,Object>>] param 
    # @return [true,false]
    def method_with_non_nullable_set_json_array_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetJsonArrayParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_json_array(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_json_array_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Array<String,Object>>] param 
    # @return [void]
    def method_with_nullable_set_json_array_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetJsonArrayParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_json_array(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_array_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_json_array_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetJsonArrayHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_array_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_json_array_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetJsonArrayHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_array_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Array<String,Object>>]
    def method_with_nullable_set_json_array_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetJsonArrayReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_json_array_return(notNull)"
    end
    # @param [Set<::Testmodel::RefedInterface1>] param 
    # @return [true,false]
    def method_with_non_nullable_set_api_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetApiParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element.j_del }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_api_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<::Testmodel::RefedInterface1>] param 
    # @return [void]
    def method_with_nullable_set_api_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetApiParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| element.j_del }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_api_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_api_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetApiHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_api_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_api_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetApiHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_api_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<::Testmodel::RefedInterface1>]
    def method_with_nullable_set_api_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetApiReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_api_return(notNull)"
    end
    # @param [Set<Hash>] param 
    # @return [true,false]
    def method_with_non_nullable_set_data_object_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetDataObjectParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_data_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<Hash>] param 
    # @return [void]
    def method_with_nullable_set_data_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetDataObjectParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_data_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_data_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetDataObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_data_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_data_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetDataObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_data_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<Hash>]
    def method_with_nullable_set_data_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetDataObjectReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_data_object_return(notNull)"
    end
    # @param [Set<:TIM,:JULIEN,:NICK,:WESTON>] param 
    # @return [true,false]
    def method_with_non_nullable_set_enum_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetEnumParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_enum_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<:TIM,:JULIEN,:NICK,:WESTON>] param 
    # @return [void]
    def method_with_nullable_set_enum_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetEnumParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_enum_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_enum_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetEnumHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_enum_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_enum_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetEnumHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_enum_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<:TIM,:JULIEN,:NICK,:WESTON>]
    def method_with_nullable_set_enum_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetEnumReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_enum_return(notNull)"
    end
    # @param [Set<:LAURA,:BOB,:MIKE,:LELAND>] param 
    # @return [true,false]
    def method_with_non_nullable_set_gen_enum_param?(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNonNullableSetGenEnumParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_set_gen_enum_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Set<:LAURA,:BOB,:MIKE,:LELAND>] param 
    # @return [void]
    def method_with_nullable_set_gen_enum_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Set && !block_given?
        return @j_del.java_method(:methodWithNullableSetGenEnumParam, [Java::boolean.java_class,Java::JavaUtil::Set.java_class]).call(expectNull,Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_gen_enum_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_gen_enum_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetGenEnumHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_gen_enum_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_set_gen_enum_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableSetGenEnumHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_gen_enum_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Set<:LAURA,:BOB,:MIKE,:LELAND>]
    def method_with_nullable_set_gen_enum_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithNullableSetGenEnumReturn, [Java::boolean.java_class]).call(notNull)).map! { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_set_gen_enum_return(notNull)"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [true,false]
    def method_with_non_nullable_map_byte_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapByteParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_byte(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_byte_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_nullable_map_byte_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapByteParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_byte(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_byte_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_byte_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapByteHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_byte_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_byte_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapByteHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_byte_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Fixnum}]
    def method_with_nullable_map_byte_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapByteReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_byte_return(notNull)"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [true,false]
    def method_with_non_nullable_map_short_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapShortParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_short(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_short_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_nullable_map_short_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapShortParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_short(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_short_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_short_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapShortHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_short_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_short_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapShortHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_short_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Fixnum}]
    def method_with_nullable_map_short_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapShortReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_short_return(notNull)"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [true,false]
    def method_with_non_nullable_map_integer_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapIntegerParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_integer(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_integer_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_nullable_map_integer_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapIntegerParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_integer(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_integer_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_integer_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapIntegerHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_integer_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_integer_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapIntegerHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_integer_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Fixnum}]
    def method_with_nullable_map_integer_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapIntegerReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_integer_return(notNull)"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [true,false]
    def method_with_non_nullable_map_long_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapLongParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_long_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_nullable_map_long_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapLongParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_long_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_long_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapLongHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_long_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_long_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapLongHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_long_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Fixnum}]
    def method_with_nullable_map_long_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapLongReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_long_return(notNull)"
    end
    # @param [Hash{String => Float}] param 
    # @return [true,false]
    def method_with_non_nullable_map_float_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapFloatParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_float(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_float_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Float}] param 
    # @return [void]
    def method_with_nullable_map_float_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapFloatParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_float(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_float_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_float_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapFloatHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_float_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_float_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapFloatHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_float_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Float}]
    def method_with_nullable_map_float_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapFloatReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_float_return(notNull)"
    end
    # @param [Hash{String => Float}] param 
    # @return [true,false]
    def method_with_non_nullable_map_double_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapDoubleParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_double(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_double_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Float}] param 
    # @return [void]
    def method_with_nullable_map_double_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapDoubleParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_double(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_double_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_double_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapDoubleHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_double_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_double_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapDoubleHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_double_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Float}]
    def method_with_nullable_map_double_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapDoubleReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_double_return(notNull)"
    end
    # @param [Hash{String => true,false}] param 
    # @return [true,false]
    def method_with_non_nullable_map_boolean_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapBooleanParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_boolean_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => true,false}] param 
    # @return [void]
    def method_with_nullable_map_boolean_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapBooleanParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_boolean_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_boolean_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapBooleanHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_boolean_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_boolean_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapBooleanHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_boolean_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => true,false}]
    def method_with_nullable_map_boolean_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapBooleanReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_boolean_return(notNull)"
    end
    # @param [Hash{String => String}] param 
    # @return [true,false]
    def method_with_non_nullable_map_string_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapStringParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_string_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => String}] param 
    # @return [void]
    def method_with_nullable_map_string_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapStringParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_string_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_string_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapStringHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_string_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_string_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapStringHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_string_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => String}]
    def method_with_nullable_map_string_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapStringReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_string_return(notNull)"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [true,false]
    def method_with_non_nullable_map_char_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapCharParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_character(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_char_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_nullable_map_char_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapCharParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_character(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_char_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_char_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapCharHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_char_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_char_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapCharHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_char_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Fixnum}]
    def method_with_nullable_map_char_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapCharReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_char_return(notNull)"
    end
    # @param [Hash{String => Hash{String => Object}}] param 
    # @return [true,false]
    def method_with_non_nullable_map_json_object_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapJsonObjectParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_json_object(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_json_object_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Hash{String => Object}}] param 
    # @return [void]
    def method_with_nullable_map_json_object_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapJsonObjectParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_json_object(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_object_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_json_object_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapJsonObjectHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_object_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_json_object_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapJsonObjectHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_object_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Hash{String => Object}}]
    def method_with_nullable_map_json_object_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapJsonObjectReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_object_return(notNull)"
    end
    # @param [Hash{String => Array<String,Object>}] param 
    # @return [true,false]
    def method_with_non_nullable_map_json_array_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapJsonArrayParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_json_array(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_json_array_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => Array<String,Object>}] param 
    # @return [void]
    def method_with_nullable_map_json_array_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapJsonArrayParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_json_array(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_array_param(expectNull,param)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_json_array_handler(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapJsonArrayHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_array_handler(notNull)"
    end
    # @param [true,false] notNull 
    # @yield 
    # @return [void]
    def method_with_nullable_map_json_array_handler_async_result(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableMapJsonArrayHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(notNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_array_handler_async_result(notNull)"
    end
    # @param [true,false] notNull 
    # @return [Hash{String => Array<String,Object>}]
    def method_with_nullable_map_json_array_return(notNull=nil)
      if (notNull.class == TrueClass || notNull.class == FalseClass) && !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithNullableMapJsonArrayReturn, [Java::boolean.java_class]).call(notNull), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_json_array_return(notNull)"
    end
    # @param [Hash{String => ::Testmodel::RefedInterface1}] param 
    # @return [true,false]
    def method_with_non_nullable_map_api_param?(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNonNullableMapApiParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v.j_del] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_non_nullable_map_api_param?(param)"
    end
    # @param [true,false] expectNull 
    # @param [Hash{String => ::Testmodel::RefedInterface1}] param 
    # @return [void]
    def method_with_nullable_map_api_param(expectNull=nil,param=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithNullableMapApiParam, [Java::boolean.java_class,Java::JavaUtil::Map.java_class]).call(expectNull,Hash[param.map { |k,v| [k,v.j_del] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_map_api_param(expectNull,param)"
    end
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_list_nullable_byte_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableByteParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_byte(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_byte_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_byte_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableByteHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_byte_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_byte_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableByteHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_byte_handler_async_result()"
    end
    # @return [Array<Fixnum>]
    def method_with_list_nullable_byte_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableByteReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_byte_return()"
    end
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_list_nullable_short_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableShortParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_short(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_short_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_short_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableShortHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_short_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_short_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableShortHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_short_handler_async_result()"
    end
    # @return [Array<Fixnum>]
    def method_with_list_nullable_short_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableShortReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_short_return()"
    end
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_list_nullable_integer_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableIntegerParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_integer(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_integer_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_integer_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableIntegerHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_integer_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_integer_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableIntegerHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_integer_handler_async_result()"
    end
    # @return [Array<Fixnum>]
    def method_with_list_nullable_integer_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableIntegerReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_integer_return()"
    end
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_list_nullable_long_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableLongParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_long_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_long_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableLongHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_long_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_long_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableLongHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_long_handler_async_result()"
    end
    # @return [Array<Fixnum>]
    def method_with_list_nullable_long_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableLongReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_long_return()"
    end
    # @param [Array<true,false>] param 
    # @return [void]
    def method_with_list_nullable_boolean_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableBooleanParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_boolean_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_boolean_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableBooleanHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_boolean_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_boolean_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableBooleanHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_boolean_handler_async_result()"
    end
    # @return [Array<true,false>]
    def method_with_list_nullable_boolean_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableBooleanReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_boolean_return()"
    end
    # @param [Array<Float>] param 
    # @return [void]
    def method_with_list_nullable_float_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableFloatParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_float(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_float_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_float_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableFloatHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_float_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_float_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableFloatHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_float_handler_async_result()"
    end
    # @return [Array<Float>]
    def method_with_list_nullable_float_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableFloatReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_float_return()"
    end
    # @param [Array<Float>] param 
    # @return [void]
    def method_with_list_nullable_double_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableDoubleParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_double(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_double_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_double_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableDoubleHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_double_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_double_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableDoubleHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_double_handler_async_result()"
    end
    # @return [Array<Float>]
    def method_with_list_nullable_double_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableDoubleReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_double_return()"
    end
    # @param [Array<String>] param 
    # @return [void]
    def method_with_list_nullable_string_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableStringParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_string_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_string_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableStringHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_string_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_string_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableStringHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_string_handler_async_result()"
    end
    # @return [Array<String>]
    def method_with_list_nullable_string_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableStringReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_string_return()"
    end
    # @param [Array<Fixnum>] param 
    # @return [void]
    def method_with_list_nullable_char_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableCharParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_character(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_char_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_char_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableCharHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_char_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_char_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableCharHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_char_handler_async_result()"
    end
    # @return [Array<Fixnum>]
    def method_with_list_nullable_char_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableCharReturn, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_char_return()"
    end
    # @param [Array<Hash{String => Object}>] param 
    # @return [void]
    def method_with_list_nullable_json_object_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableJsonObjectParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_json_object(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_object_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_json_object_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableJsonObjectHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_object_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_json_object_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableJsonObjectHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_object_handler_async_result()"
    end
    # @return [Array<Hash{String => Object}>]
    def method_with_list_nullable_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableJsonObjectReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_object_return()"
    end
    # @param [Array<Array<String,Object>>] param 
    # @return [void]
    def method_with_list_nullable_json_array_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableJsonArrayParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| ::Vertx::Util::Utils.to_json_array(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_array_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_json_array_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableJsonArrayHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_array_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_json_array_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableJsonArrayHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_array_handler_async_result()"
    end
    # @return [Array<Array<String,Object>>]
    def method_with_list_nullable_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableJsonArrayReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_json_array_return()"
    end
    # @param [Array<::Testmodel::RefedInterface1>] param 
    # @return [void]
    def method_with_list_nullable_api_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableApiParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| element.j_del })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_api_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_api_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableApiHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_api_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_api_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableApiHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_api_handler_async_result()"
    end
    # @return [Array<::Testmodel::RefedInterface1>]
    def method_with_list_nullable_api_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableApiReturn, []).call().to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_api_return()"
    end
    # @param [Array<Hash>] param 
    # @return [void]
    def method_with_list_nullable_data_object_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableDataObjectParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_data_object_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_data_object_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableDataObjectHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_data_object_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_data_object_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableDataObjectHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_data_object_handler_async_result()"
    end
    # @return [Array<Hash>]
    def method_with_list_nullable_data_object_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableDataObjectReturn, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_data_object_return()"
    end
    # @param [Array<:TIM,:JULIEN,:NICK,:WESTON>] param 
    # @return [void]
    def method_with_list_nullable_enum_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableEnumParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_enum_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_enum_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableEnumHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_enum_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_enum_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableEnumHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_enum_handler_async_result()"
    end
    # @return [Array<:TIM,:JULIEN,:NICK,:WESTON>]
    def method_with_list_nullable_enum_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableEnumReturn, []).call().to_a.map { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_enum_return()"
    end
    # @param [Array<:LAURA,:BOB,:MIKE,:LELAND>] param 
    # @return [void]
    def method_with_list_nullable_gen_enum_param(param=nil)
      if param.class == Array && !block_given?
        return @j_del.java_method(:methodWithListNullableGenEnumParam, [Java::JavaUtil::List.java_class]).call(param.map { |element| Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(element) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_gen_enum_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_gen_enum_handler
      if block_given?
        return @j_del.java_method(:methodWithListNullableGenEnumHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event.to_a.map { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_gen_enum_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_list_nullable_gen_enum_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithListNullableGenEnumHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_gen_enum_handler_async_result()"
    end
    # @return [Array<:LAURA,:BOB,:MIKE,:LELAND>]
    def method_with_list_nullable_gen_enum_return
      if !block_given?
        return @j_del.java_method(:methodWithListNullableGenEnumReturn, []).call().to_a.map { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_list_nullable_gen_enum_return()"
    end
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_set_nullable_byte_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableByteParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_byte(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_byte_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_byte_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableByteHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_byte_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_byte_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableByteHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_byte_handler_async_result()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_nullable_byte_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableByteReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_byte_return()"
    end
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_set_nullable_short_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableShortParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_short(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_short_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_short_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableShortHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_short_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_short_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableShortHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_short_handler_async_result()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_nullable_short_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableShortReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_short_return()"
    end
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_set_nullable_integer_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableIntegerParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_integer(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_integer_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_integer_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableIntegerHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_integer_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_integer_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableIntegerHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_integer_handler_async_result()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_nullable_integer_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableIntegerReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_integer_return()"
    end
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_set_nullable_long_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableLongParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_long_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_long_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableLongHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_long_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_long_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableLongHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_long_handler_async_result()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_nullable_long_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableLongReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_long_return()"
    end
    # @param [Set<true,false>] param 
    # @return [void]
    def method_with_set_nullable_boolean_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableBooleanParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_boolean_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_boolean_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableBooleanHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_boolean_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_boolean_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableBooleanHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_boolean_handler_async_result()"
    end
    # @return [Set<true,false>]
    def method_with_set_nullable_boolean_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableBooleanReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_boolean_return()"
    end
    # @param [Set<Float>] param 
    # @return [void]
    def method_with_set_nullable_float_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableFloatParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_float(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_float_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_float_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableFloatHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_float_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_float_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableFloatHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_float_handler_async_result()"
    end
    # @return [Set<Float>]
    def method_with_set_nullable_float_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableFloatReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_float_return()"
    end
    # @param [Set<Float>] param 
    # @return [void]
    def method_with_set_nullable_double_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableDoubleParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_double(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_double_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_double_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableDoubleHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_double_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_double_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableDoubleHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_double_handler_async_result()"
    end
    # @return [Set<Float>]
    def method_with_set_nullable_double_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableDoubleReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_double_return()"
    end
    # @param [Set<String>] param 
    # @return [void]
    def method_with_set_nullable_string_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableStringParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_string_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_string_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableStringHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_string_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_string_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableStringHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_string_handler_async_result()"
    end
    # @return [Set<String>]
    def method_with_set_nullable_string_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableStringReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_string_return()"
    end
    # @param [Set<Fixnum>] param 
    # @return [void]
    def method_with_set_nullable_char_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableCharParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_character(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_char_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_char_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableCharHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_char_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_char_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableCharHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_char_handler_async_result()"
    end
    # @return [Set<Fixnum>]
    def method_with_set_nullable_char_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableCharReturn, []).call()).map! { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_char_return()"
    end
    # @param [Set<Hash{String => Object}>] param 
    # @return [void]
    def method_with_set_nullable_json_object_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableJsonObjectParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_json_object(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_object_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_json_object_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableJsonObjectHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_object_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_json_object_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableJsonObjectHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_object_handler_async_result()"
    end
    # @return [Set<Hash{String => Object}>]
    def method_with_set_nullable_json_object_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableJsonObjectReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_object_return()"
    end
    # @param [Set<Array<String,Object>>] param 
    # @return [void]
    def method_with_set_nullable_json_array_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableJsonArrayParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| ::Vertx::Util::Utils.to_json_array(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_array_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_json_array_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableJsonArrayHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_array_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_json_array_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableJsonArrayHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_array_handler_async_result()"
    end
    # @return [Set<Array<String,Object>>]
    def method_with_set_nullable_json_array_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableJsonArrayReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_json_array_return()"
    end
    # @param [Set<::Testmodel::RefedInterface1>] param 
    # @return [void]
    def method_with_set_nullable_api_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableApiParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| element.j_del }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_api_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_api_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableApiHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_api_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_api_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableApiHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_api_handler_async_result()"
    end
    # @return [Set<::Testmodel::RefedInterface1>]
    def method_with_set_nullable_api_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableApiReturn, []).call()).map! { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_api_return()"
    end
    # @param [Set<Hash>] param 
    # @return [void]
    def method_with_set_nullable_data_object_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableDataObjectParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(element)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_data_object_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_data_object_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableDataObjectHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_data_object_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_data_object_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableDataObjectHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_data_object_handler_async_result()"
    end
    # @return [Set<Hash>]
    def method_with_set_nullable_data_object_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableDataObjectReturn, []).call()).map! { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_data_object_return()"
    end
    # @param [Set<:TIM,:JULIEN,:NICK,:WESTON>] param 
    # @return [void]
    def method_with_set_nullable_enum_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableEnumParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_enum_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_enum_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableEnumHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_enum_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_enum_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableEnumHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_enum_handler_async_result()"
    end
    # @return [Set<:TIM,:JULIEN,:NICK,:WESTON>]
    def method_with_set_nullable_enum_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableEnumReturn, []).call()).map! { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_enum_return()"
    end
    # @param [Set<:LAURA,:BOB,:MIKE,:LELAND>] param 
    # @return [void]
    def method_with_set_nullable_gen_enum_param(param=nil)
      if param.class == Set && !block_given?
        return @j_del.java_method(:methodWithSetNullableGenEnumParam, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(param.map { |element| Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(element) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_gen_enum_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_gen_enum_handler
      if block_given?
        return @j_del.java_method(:methodWithSetNullableGenEnumHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.to_set(event).map! { |elt| elt.name.intern }) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_gen_enum_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_set_nullable_gen_enum_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithSetNullableGenEnumHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.to_set(ar.result).map! { |elt| elt.name.intern } : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_gen_enum_handler_async_result()"
    end
    # @return [Set<:LAURA,:BOB,:MIKE,:LELAND>]
    def method_with_set_nullable_gen_enum_return
      if !block_given?
        return ::Vertx::Util::Utils.to_set(@j_del.java_method(:methodWithSetNullableGenEnumReturn, []).call()).map! { |elt| elt.name.intern }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_set_nullable_gen_enum_return()"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_map_nullable_byte_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableByteParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_byte(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_byte_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_byte_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableByteHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_byte_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_byte_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableByteHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_byte_handler_async_result()"
    end
    # @return [Hash{String => Fixnum}]
    def method_with_map_nullable_byte_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableByteReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_byte_return()"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_map_nullable_short_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableShortParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_short(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_short_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_short_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableShortHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_short_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_short_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableShortHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_short_handler_async_result()"
    end
    # @return [Hash{String => Fixnum}]
    def method_with_map_nullable_short_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableShortReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_short_return()"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_map_nullable_integer_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableIntegerParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_integer(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_integer_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_integer_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableIntegerHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_integer_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_integer_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableIntegerHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_integer_handler_async_result()"
    end
    # @return [Hash{String => Fixnum}]
    def method_with_map_nullable_integer_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableIntegerReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_integer_return()"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_map_nullable_long_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableLongParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_long_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_long_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableLongHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_long_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_long_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableLongHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_long_handler_async_result()"
    end
    # @return [Hash{String => Fixnum}]
    def method_with_map_nullable_long_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableLongReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_long_return()"
    end
    # @param [Hash{String => true,false}] param 
    # @return [void]
    def method_with_map_nullable_boolean_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableBooleanParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_boolean_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_boolean_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableBooleanHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_boolean_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_boolean_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableBooleanHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_boolean_handler_async_result()"
    end
    # @return [Hash{String => true,false}]
    def method_with_map_nullable_boolean_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableBooleanReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_boolean_return()"
    end
    # @param [Hash{String => Float}] param 
    # @return [void]
    def method_with_map_nullable_float_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableFloatParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_float(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_float_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_float_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableFloatHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_float_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_float_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableFloatHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_float_handler_async_result()"
    end
    # @return [Hash{String => Float}]
    def method_with_map_nullable_float_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableFloatReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_float_return()"
    end
    # @param [Hash{String => Float}] param 
    # @return [void]
    def method_with_map_nullable_double_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableDoubleParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_double(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_double_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_double_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableDoubleHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_double_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_double_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableDoubleHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_double_handler_async_result()"
    end
    # @return [Hash{String => Float}]
    def method_with_map_nullable_double_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableDoubleReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_double_return()"
    end
    # @param [Hash{String => String}] param 
    # @return [void]
    def method_with_map_nullable_string_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableStringParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_string_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_string_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableStringHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_string_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_string_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableStringHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_string_handler_async_result()"
    end
    # @return [Hash{String => String}]
    def method_with_map_nullable_string_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableStringReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_string_return()"
    end
    # @param [Hash{String => Fixnum}] param 
    # @return [void]
    def method_with_map_nullable_char_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableCharParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_character(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_char_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_char_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableCharHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_char_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_char_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableCharHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_char_handler_async_result()"
    end
    # @return [Hash{String => Fixnum}]
    def method_with_map_nullable_char_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableCharReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_char_return()"
    end
    # @param [Hash{String => Hash{String => Object}}] param 
    # @return [void]
    def method_with_map_nullable_json_object_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableJsonObjectParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_json_object(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_object_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_json_object_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableJsonObjectHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_object_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_json_object_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableJsonObjectHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_object_handler_async_result()"
    end
    # @return [Hash{String => Hash{String => Object}}]
    def method_with_map_nullable_json_object_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableJsonObjectReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_object_return()"
    end
    # @param [Hash{String => Array<String,Object>}] param 
    # @return [void]
    def method_with_map_nullable_json_array_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableJsonArrayParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,::Vertx::Util::Utils.to_json_array(v)] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_array_param(param)"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_json_array_handler
      if block_given?
        return @j_del.java_method(:methodWithMapNullableJsonArrayHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(Java::IoVertxLangRuby::Helper.adaptingMap(event, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_array_handler()"
    end
    # @yield 
    # @return [void]
    def method_with_map_nullable_json_array_handler_async_result
      if block_given?
        return @j_del.java_method(:methodWithMapNullableJsonArrayHandlerAsyncResult, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? Java::IoVertxLangRuby::Helper.adaptingMap(ar.result, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) }) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_array_handler_async_result()"
    end
    # @return [Hash{String => Array<String,Object>}]
    def method_with_map_nullable_json_array_return
      if !block_given?
        return Java::IoVertxLangRuby::Helper.adaptingMap(@j_del.java_method(:methodWithMapNullableJsonArrayReturn, []).call(), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_json_array_return()"
    end
    # @param [Hash{String => ::Testmodel::RefedInterface1}] param 
    # @return [void]
    def method_with_map_nullable_api_param(param=nil)
      if param.class == Hash && !block_given?
        return @j_del.java_method(:methodWithMapNullableApiParam, [Java::JavaUtil::Map.java_class]).call(Hash[param.map { |k,v| [k,v.j_del] }])
      end
      raise ArgumentError, "Invalid arguments when calling method_with_map_nullable_api_param(param)"
    end
    # @param [true,false] expectNull 
    # @yield 
    # @return [void]
    def method_with_nullable_handler(expectNull=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableHandler, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(expectNull,(Proc.new { |event| yield(event) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_handler(expectNull)"
    end
    # @param [true,false] expectNull 
    # @yield 
    # @return [void]
    def method_with_nullable_handler_async_result(expectNull=nil)
      if (expectNull.class == TrueClass || expectNull.class == FalseClass) && block_given?
        return @j_del.java_method(:methodWithNullableHandlerAsyncResult, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(expectNull,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_nullable_handler_async_result(expectNull)"
    end
  end
end

require 'testmodel/generic_refed_interface'
require 'testmodel/refed_interface1'
require 'testmodel/abstract_handler_user_type'
require 'testmodel/concrete_handler_user_type'
require 'testmodel/concrete_handler_user_type_extension'
require 'testmodel/super_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/super_interface2'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.TestInterface
module Testmodel
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
        return @j_del.java_method(:otherSuperMethodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,::Vertx::Util::Utils.to_character(ch),str)
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
    def super_method_with_basic_params(b=nil,s=nil,i=nil,l=nil,f=nil,d=nil,bool=nil,ch=nil,str=nil)
      if b.class == Fixnum && s.class == Fixnum && i.class == Fixnum && l.class == Fixnum && f.class == Float && d.class == Float && (bool.class == TrueClass || bool.class == FalseClass) && ch.class == Fixnum && str.class == String && !block_given?
        return @j_del.java_method(:superMethodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,::Vertx::Util::Utils.to_character(ch),str)
      end
      raise ArgumentError, "Invalid arguments when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
    # @param [String] s 
    # @return [Fixnum]
    def super_method_overloaded_by_subclass(s=nil)
      if !block_given? && s == nil
        return @j_del.java_method(:superMethodOverloadedBySubclass, []).call()
      elsif s.class == String && !block_given?
        return @j_del.java_method(:superMethodOverloadedBySubclass, [Java::java.lang.String.java_class]).call(s)
      end
      raise ArgumentError, "Invalid arguments when calling super_method_overloaded_by_subclass(s)"
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
        return @j_del.java_method(:methodWithBasicParams, [Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,::Vertx::Util::Utils.to_character(ch),str)
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
        return @j_del.java_method(:methodWithBasicBoxedParams, [Java::JavaLang::Byte.java_class,Java::JavaLang::Short.java_class,Java::JavaLang::Integer.java_class,Java::JavaLang::Long.java_class,Java::JavaLang::Float.java_class,Java::JavaLang::Double.java_class,Java::JavaLang::Boolean.java_class,Java::JavaLang::Character.java_class]).call(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),::Vertx::Util::Utils.to_integer(i),l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,::Vertx::Util::Utils.to_character(ch))
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
    # @param [String] expected 
    # @return [Proc]
    def method_with_handler_string_return(expected=nil)
      if expected.class == String && !block_given?
        return ::Vertx::Util::Utils.to_handler_proc(@j_del.java_method(:methodWithHandlerStringReturn, [Java::java.lang.String.java_class]).call(expected)) { |val| val }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_string_return(expected)"
    end
    # @yield 
    # @return [Proc]
    def method_with_handler_generic_return
      if block_given?
        return ::Vertx::Util::Utils.to_handler_proc(@j_del.java_method(:methodWithHandlerGenericReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_object(event)) }))) { |val| ::Vertx::Util::Utils.to_object(val) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_generic_return()"
    end
    # @param [String] expected 
    # @return [Proc]
    def method_with_handler_vertx_gen_return(expected=nil)
      if expected.class == String && !block_given?
        return ::Vertx::Util::Utils.to_handler_proc(@j_del.java_method(:methodWithHandlerVertxGenReturn, [Java::java.lang.String.java_class]).call(expected)) { |val| val.j_del }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_vertx_gen_return(expected)"
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
        return @j_del.java_method(:methodWithHandlerAsyncResultDataObject, [Java::boolean.java_class,Java::IoVertxCore::Handler.java_class]).call(sendFailure,(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.toJson.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_data_object(sendFailure)"
    end
    # @param [String] expected 
    # @param [true,false] fail 
    # @return [Proc]
    def method_with_handler_async_result_string_return(expected=nil,fail=nil)
      if expected.class == String && (fail.class == TrueClass || fail.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_async_result_handler_proc(@j_del.java_method(:methodWithHandlerAsyncResultStringReturn, [Java::java.lang.String.java_class,Java::boolean.java_class]).call(expected,fail)) { |val| val }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_string_return(expected,fail)"
    end
    # @yield 
    # @return [Proc]
    def method_with_handler_async_result_generic_return
      if block_given?
        return ::Vertx::Util::Utils.to_async_result_handler_proc(@j_del.java_method(:methodWithHandlerAsyncResultGenericReturn, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))) { |val| ::Vertx::Util::Utils.to_object(val) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_generic_return()"
    end
    # @param [String] expected 
    # @param [true,false] fail 
    # @return [Proc]
    def method_with_handler_async_result_vertx_gen_return(expected=nil,fail=nil)
      if expected.class == String && (fail.class == TrueClass || fail.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.to_async_result_handler_proc(@j_del.java_method(:methodWithHandlerAsyncResultVertxGenReturn, [Java::java.lang.String.java_class,Java::boolean.java_class]).call(expected,fail)) { |val| val.j_del }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_vertx_gen_return(expected,fail)"
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
    # @yield 
    # @return [void]
    def method_with_handler_user_types
      if block_given?
        return @j_del.java_method(:methodWithHandlerUserTypes, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::RefedInterface1)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_user_types()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_async_result_user_types
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultUserTypes, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::RefedInterface1) : nil) }))
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
        return @j_del.java_method(:methodWithHandlerThrowable, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_throwable()"
    end
    # @yield 
    # @return [void]
    def method_with_handler_data_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerDataObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event != nil ? JSON.parse(event.toJson.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_data_object()"
    end
    # @param [Object] value 
    # @yield 
    # @return [void]
    def method_with_handler_generic_user_type(value=nil)
      if (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && block_given?
        return @j_del.java_method(:methodWithHandlerGenericUserType, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(value),(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Testmodel::GenericRefedInterface)) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_generic_user_type(value)"
    end
    # @param [Object] value 
    # @yield 
    # @return [void]
    def method_with_handler_async_result_generic_user_type(value=nil)
      if (value.class == String  || value.class == Hash || value.class == Array || value.class == NilClass || value.class == TrueClass || value.class == FalseClass || value.class == Fixnum || value.class == Float) && block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultGenericUserType, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(value),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Testmodel::GenericRefedInterface) : nil) }))
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
    def method_with_boolean_return?
      if !block_given?
        return @j_del.java_method(:methodWithBooleanReturn, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling method_with_boolean_return?()"
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
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithVertxGenReturn, []).call(),::Testmodel::RefedInterface1)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_vertx_gen_return()"
    end
    # @return [::Testmodel::RefedInterface1]
    def method_with_vertx_gen_null_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithVertxGenNullReturn, []).call(),::Testmodel::RefedInterface1)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_vertx_gen_null_return()"
    end
    # @return [::Testmodel::RefedInterface2]
    def method_with_abstract_vertx_gen_return
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithAbstractVertxGenReturn, []).call(),::Testmodel::RefedInterface2Impl)
      end
      raise ArgumentError, "Invalid arguments when calling method_with_abstract_vertx_gen_return()"
    end
    # @return [Hash]
    def method_with_data_object_return
      if !block_given?
        return @j_del.java_method(:methodWithDataObjectReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithDataObjectReturn, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_return()"
    end
    # @return [Hash]
    def method_with_data_object_null_return
      if !block_given?
        return @j_del.java_method(:methodWithDataObjectNullReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithDataObjectNullReturn, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_data_object_null_return()"
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
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCodegenTestmodel::TestInterface.java_method(:staticFactoryMethod, [Java::java.lang.String.java_class]).call(foo),::Testmodel::RefedInterface1)
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
        return @cached_method_with_cached_return = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:methodWithCachedReturn, [Java::java.lang.String.java_class]).call(foo),::Testmodel::RefedInterface1)
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
    # @return [Array<::Testmodel::RefedInterface1>]
    def method_with_cached_list_return
      if !block_given?
        if @cached_method_with_cached_list_return != nil
          return @cached_method_with_cached_list_return
        end
        return @cached_method_with_cached_list_return = @j_del.java_method(:methodWithCachedListReturn, []).call().to_a.map { |elt| ::Vertx::Util::Utils.safe_create(elt,::Testmodel::RefedInterface1) }
      end
      raise ArgumentError, "Invalid arguments when calling method_with_cached_list_return()"
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
    # @return [Hash{String => Object}]
    def method_with_complex_json_object_return
      if !block_given?
        return @j_del.java_method(:methodWithComplexJsonObjectReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithComplexJsonObjectReturn, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_complex_json_object_return()"
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
    # @return [Array<String,Object>]
    def method_with_complex_json_array_return
      if !block_given?
        return @j_del.java_method(:methodWithComplexJsonArrayReturn, []).call() != nil ? JSON.parse(@j_del.java_method(:methodWithComplexJsonArrayReturn, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling method_with_complex_json_array_return()"
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
    def method_with_handler_complex_json(jsonObjectHandler=nil)
      if jsonObjectHandler.class == Proc && block_given?
        return @j_del.java_method(:methodWithHandlerComplexJson, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| yield(event != nil ? JSON.parse(event.encode) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_complex_json(jsonObjectHandler)"
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
    def method_with_handler_async_result_complex_json_object
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultComplexJsonObject, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_complex_json_object()"
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
    # @return [void]
    def method_with_handler_async_result_complex_json_array
      if block_given?
        return @j_del.java_method(:methodWithHandlerAsyncResultComplexJsonArray, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_handler_async_result_complex_json_array()"
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
    # @param [:LAURA,:BOB,:MIKE,:LELAND] weirdo 
    # @return [String]
    def method_with_gen_enum_param(strVal=nil,weirdo=nil)
      if strVal.class == String && weirdo.class == Symbol && !block_given?
        return @j_del.java_method(:methodWithGenEnumParam, [Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::TestGenEnum.java_class]).call(strVal,Java::IoVertxCodegenTestmodel::TestGenEnum.valueOf(weirdo))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_gen_enum_param(strVal,weirdo)"
    end
    # @param [String] strVal 
    # @return [:LAURA,:BOB,:MIKE,:LELAND]
    def method_with_gen_enum_return(strVal=nil)
      if strVal.class == String && !block_given?
        return @j_del.java_method(:methodWithGenEnumReturn, [Java::java.lang.String.java_class]).call(strVal).name.intern
      end
      raise ArgumentError, "Invalid arguments when calling method_with_gen_enum_return(strVal)"
    end
    # @param [String] strVal 
    # @return [Exception]
    def method_with_throwable_return(strVal=nil)
      if strVal.class == String && !block_given?
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:methodWithThrowableReturn, [Java::java.lang.String.java_class]).call(strVal))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_throwable_return(strVal)"
    end
    # @param [Exception] t 
    # @return [String]
    def method_with_throwable_param(t=nil)
      if t.is_a?(Exception) && !block_given?
        return @j_del.java_method(:methodWithThrowableParam, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(t))
      end
      raise ArgumentError, "Invalid arguments when calling method_with_throwable_param(t)"
    end
  end
end

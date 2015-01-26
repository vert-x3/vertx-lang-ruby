require 'testmodel/generic_refed_interface'
require 'testmodel/refed_interface1'
require 'testmodel/super_interface1'
require 'testmodel/refed_interface2'
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
    # return [void]
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
                        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:otherSuperMethodWithBasicParams,Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
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
    # @param [Fixnum] b
    # @param [Fixnum] s
    # @param [Fixnum] i
    # @param [Fixnum] l
    # @param [Float] f
    # @param [Float] d
    # @param [true,false] bool
    # @param [Fixnum] ch
    # @param [String] str
    # return [void]
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
                        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithBasicParams,Java::byte.java_class,Java::short.java_class,Java::int.java_class,Java::long.java_class,Java::float.java_class,Java::double.java_class,Java::boolean.java_class,Java::char.java_class,Java::java.lang.String.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
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
    # @param [Fixnum] b
    # @param [Fixnum] s
    # @param [Fixnum] i
    # @param [Fixnum] l
    # @param [Float] f
    # @param [Float] d
    # @param [true,false] bool
    # @param [Fixnum] ch
    # return [void]
    def method_with_basic_boxed_params(b,s,i,l,f,d,bool,ch)
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithBasicBoxedParams,Java::JavaLang::Byte.java_class,Java::JavaLang::Short.java_class,Java::JavaLang::Integer.java_class,Java::JavaLang::Long.java_class,Java::JavaLang::Float.java_class,Java::JavaLang::Double.java_class,Java::JavaLang::Boolean.java_class,Java::JavaLang::Character.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),::Vertx::Util::Utils.to_integer(i),l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch)
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
    # @param [Proc] byteHandler
    # @param [Proc] shortHandler
    # @param [Proc] intHandler
    # @param [Proc] longHandler
    # @param [Proc] floatHandler
    # @param [Proc] doubleHandler
    # @param [Proc] booleanHandler
    # @param [Proc] charHandler
    # @param [Proc] stringHandler
    # return [void]
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
                        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerBasicTypes,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| byteHandler.call(event) }),(Proc.new { |event| shortHandler.call(event) }),(Proc.new { |event| intHandler.call(event) }),(Proc.new { |event| longHandler.call(event) }),(Proc.new { |event| floatHandler.call(event) }),(Proc.new { |event| doubleHandler.call(event) }),(Proc.new { |event| booleanHandler.call(event) }),(Proc.new { |event| charHandler.call(event) }),(Proc.new { |event| stringHandler.call(event) }))
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
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_byte(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultByte,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_byte(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_byte(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_short(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultShort,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_short(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_short(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_integer(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultInteger,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_integer(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_integer(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_long(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultLong,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_long(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_long(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_float(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultFloat,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_float(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_float(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_double(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultDouble,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_double(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_double(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_boolean(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultBoolean,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_boolean(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_boolean(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_character(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultCharacter,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_character(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_character(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_string(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultString,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_string(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_string(sendFailure,handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_data_object(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultDataObject,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? JSON.parse(ar.result.toJson.encode) : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_data_object(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_data_object(sendFailure,handler)"
    end
    # @param [::Testmodel::RefedInterface1] refed
    # return [void]
    def method_with_user_types(refed)
      if refed.class.method_defined?(:j_del)
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithUserTypes,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class))).invoke(@j_del,refed.j_del)
      end
      raise ArgumentError, "Invalid argument refed=#{refed} when calling method_with_user_types(refed)"
    end
    # @param [String] str
    # @param [Object] obj
    # return [void]
    def method_with_object_param(str,obj)
      if str.class == String
        if obj.class == String  ||obj.class == Hash || obj.class == Array
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithObjectParam,Java::java.lang.String.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,str,::Vertx::Util::Utils.to_object(obj))
        end
        raise ArgumentError, "Invalid argument obj=#{obj} when calling method_with_object_param(str,obj)"
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling method_with_object_param(str,obj)"
    end
    # @param [Hash] dataObject
    # return [void]
    def method_with_data_object_param(dataObject)
      if dataObject.class == Hash
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithDataObjectParam,Java::IoVertxCodegenTestmodel::TestDataObject.java_class))).invoke(@j_del,Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid argument dataObject=#{dataObject} when calling method_with_data_object_param(dataObject)"
    end
    # @param [Hash] dataObject
    # return [void]
    def method_with_null_data_object_param(dataObject)
      if dataObject.class == Hash
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullDataObjectParam,Java::IoVertxCodegenTestmodel::TestDataObject.java_class))).invoke(@j_del,Java::IoVertxCodegenTestmodel::TestDataObject.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid argument dataObject=#{dataObject} when calling method_with_null_data_object_param(dataObject)"
    end
    # @param [Array<String>] listString
    # @param [Array<Fixnum>] listByte
    # @param [Array<Fixnum>] listShort
    # @param [Array<Fixnum>] listInt
    # @param [Array<Fixnum>] listLong
    # @param [Array<Hash{String => Object}>] listJsonObject
    # @param [Array<Array<String,Object>>] listJsonArray
    # @param [Array<::Testmodel::RefedInterface1>] listVertxGen
    # return [void]
    def method_with_list_params(listString,listByte,listShort,listInt,listLong,listJsonObject,listJsonArray,listVertxGen)
      if listString.class == Array
        if listByte.class == Array
          if listShort.class == Array
            if listInt.class == Array
              if listLong.class == Array
                if listJsonObject.class == Array
                  if listJsonArray.class == Array
                    if listVertxGen.class == Array
                      return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithListParams,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class,Java::JavaUtil::List.java_class))).invoke(@j_del,listString.map { |element| element },listByte.map { |element| ::Vertx::Util::Utils.to_byte(element) },listShort.map { |element| ::Vertx::Util::Utils.to_short(element) },listInt.map { |element| ::Vertx::Util::Utils.to_integer(element) },listLong.map { |element| element },listJsonObject.map { |element| ::Vertx::Util::Utils.to_json_object(element) },listJsonArray.map { |element| ::Vertx::Util::Utils.to_json_array(element) },listVertxGen.map { |element| element.j_del })
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
    # @param [Set<String>] setString
    # @param [Set<Fixnum>] setByte
    # @param [Set<Fixnum>] setShort
    # @param [Set<Fixnum>] setInt
    # @param [Set<Fixnum>] setLong
    # @param [Set<Hash{String => Object}>] setJsonObject
    # @param [Set<Array<String,Object>>] setJsonArray
    # @param [Set<::Testmodel::RefedInterface1>] setVertxGen
    # return [void]
    def method_with_set_params(setString,setByte,setShort,setInt,setLong,setJsonObject,setJsonArray,setVertxGen)
      if setString.class == Set
        if setByte.class == Set
          if setShort.class == Set
            if setInt.class == Set
              if setLong.class == Set
                if setJsonObject.class == Set
                  if setJsonArray.class == Set
                    if setVertxGen.class == Set
                      return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithSetParams,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class,Java::JavaUtil::Set.java_class))).invoke(@j_del,Java::JavaUtil::LinkedHashSet.new(setString.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setByte.map { |element| ::Vertx::Util::Utils.to_byte(element) }),Java::JavaUtil::LinkedHashSet.new(setShort.map { |element| ::Vertx::Util::Utils.to_short(element) }),Java::JavaUtil::LinkedHashSet.new(setInt.map { |element| ::Vertx::Util::Utils.to_integer(element) }),Java::JavaUtil::LinkedHashSet.new(setLong.map { |element| element }),Java::JavaUtil::LinkedHashSet.new(setJsonObject.map { |element| ::Vertx::Util::Utils.to_json_object(element) }),Java::JavaUtil::LinkedHashSet.new(setJsonArray.map { |element| ::Vertx::Util::Utils.to_json_array(element) }),Java::JavaUtil::LinkedHashSet.new(setVertxGen.map { |element| element.j_del }))
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
    # @param [Hash{String => String}] mapString
    # @param [Hash{String => Fixnum}] mapByte
    # @param [Hash{String => Fixnum}] mapShort
    # @param [Hash{String => Fixnum}] mapInt
    # @param [Hash{String => Fixnum}] mapLong
    # @param [Hash{String => Hash{String => Object}}] mapJsonObject
    # @param [Hash{String => Array<String,Object>}] mapJsonArray
    # @param [Hash{String => ::Testmodel::RefedInterface1}] mapVertxGen
    # return [void]
    def method_with_map_params(mapString,mapByte,mapShort,mapInt,mapLong,mapJsonObject,mapJsonArray,mapVertxGen)
      if mapString.class == Hash
        if mapByte.class == Hash
          if mapShort.class == Hash
            if mapInt.class == Hash
              if mapLong.class == Hash
                if mapJsonObject.class == Hash
                  if mapJsonArray.class == Hash
                    if mapVertxGen.class == Hash
                      return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapParams,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class,Java::JavaUtil::Map.java_class))).invoke(@j_del,Hash[mapString.map { |k,v| [k,v] }],Hash[mapByte.map { |k,v| [k,::Vertx::Util::Utils.to_byte(v)] }],Hash[mapShort.map { |k,v| [k,::Vertx::Util::Utils.to_short(v)] }],Hash[mapInt.map { |k,v| [k,::Vertx::Util::Utils.to_integer(v)] }],Hash[mapLong.map { |k,v| [k,v] }],Hash[mapJsonObject.map { |k,v| [k,::Vertx::Util::Utils.to_json_object(v)] }],Hash[mapJsonArray.map { |k,v| [k,::Vertx::Util::Utils.to_json_array(v)] }],Hash[mapVertxGen.map { |k,v| [k,v.j_del] }])
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
    # @param [Proc] listStringHandler
    # @param [Proc] listIntHandler
    # @param [Proc] setStringHandler
    # @param [Proc] setIntHandler
    # return [void]
    def method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,&setIntHandler)
      if listStringHandler.class == Proc
        if listIntHandler.class == Proc
          if setStringHandler.class == Proc
            if setIntHandler.class == Proc
              return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListAndSet,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listStringHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| listIntHandler.call(event.to_a.map { |elt| elt }) }),(Proc.new { |event| setStringHandler.call(event.to_set.map! { |elt| elt }) }),(Proc.new { |event| setIntHandler.call(event.to_set.map! { |elt| elt }) }))
            end
            raise ArgumentError, "Invalid argument setIntHandler=#{setIntHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
          end
          raise ArgumentError, "Invalid argument setStringHandler=#{setStringHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
        end
        raise ArgumentError, "Invalid argument listIntHandler=#{listIntHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
      end
      raise ArgumentError, "Invalid argument listStringHandler=#{listStringHandler} when calling method_with_handler_list_and_set(listStringHandler,listIntHandler,setStringHandler,setIntHandler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_list_string(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListString,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_list_string(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_list_integer(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListInteger,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_list_integer(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_set_string(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetString,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_set_string(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_set_integer(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetInteger,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt } : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_set_integer(handler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_list_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_a.map { |elt| ::Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_set_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerSetVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_set.map! { |elt| ::Testmodel::RefedInterface1.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_list_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListAbstractVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_a.map { |elt| ::Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_abstract_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_set_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerSetAbstractVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_set.map! { |elt| ::Testmodel::RefedInterface2Impl.new(elt) }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_abstract_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_list_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_list_null_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListNullJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_null_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_set_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerSetJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_set_null_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerSetNullJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_null_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_list_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_list_null_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerListNullJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_list_null_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_set_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerSetJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_set_null_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerSetNullJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| listHandler.call(event.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_set_null_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_list_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_set_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| ::Testmodel::RefedInterface1.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_list_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListAbstractVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_abstract_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_set_abstract_vertx_gen(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetAbstractVertxGen,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| ::Testmodel::RefedInterface2Impl.new(elt) } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_abstract_vertx_gen(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_list_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_list_null_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListNullJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_null_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_set_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_set_null_json_object(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetNullJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_null_json_object(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_list_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_list_null_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultListNullJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_list_null_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_set_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_json_array(listHandler)"
    end
    # @param [Proc] listHandler
    # return [void]
    def method_with_handler_async_result_set_null_json_array(&listHandler)
      if listHandler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultSetNullJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| listHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil } : nil) }))
      end
      raise ArgumentError, "Invalid argument listHandler=#{listHandler} when calling method_with_handler_async_result_set_null_json_array(listHandler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_user_types(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerUserTypes,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Testmodel::RefedInterface1.new(event)) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_user_types(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_user_types(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultUserTypes,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Testmodel::RefedInterface1.new(ar.result) : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_user_types(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_void(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerVoid,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,handler)
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_void(handler)"
    end
    # @param [true,false] sendFailure
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_void(sendFailure,&handler)
      if sendFailure.class == TrueClass || sendFailure.class == FalseClass
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultVoid,Java::boolean.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,sendFailure,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_void(sendFailure,handler)"
      end
      raise ArgumentError, "Invalid argument sendFailure=#{sendFailure} when calling method_with_handler_async_result_void(sendFailure,handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_throwable(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerThrowable,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_throwable(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_data_object(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerDataObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(JSON.parse(event.toJson.encode)) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_data_object(handler)"
    end
    # @param [Object] value
    # @param [Proc] handler
    # return [void]
    def method_with_handler_generic_user_type(value,&handler)
      if value.class == String  ||value.class == Hash || value.class == Array
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerGenericUserType,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(value),(Proc.new { |event| handler.call(::Testmodel::GenericRefedInterface.new(event)) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_generic_user_type(value,handler)"
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling method_with_handler_generic_user_type(value,handler)"
    end
    # @param [Object] value
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_generic_user_type(value,&handler)
      if value.class == String  ||value.class == Hash || value.class == Array
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultGenericUserType,Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(value),(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Testmodel::GenericRefedInterface.new(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_generic_user_type(value,handler)"
      end
      raise ArgumentError, "Invalid argument value=#{value} when calling method_with_handler_async_result_generic_user_type(value,handler)"
    end
    # @return [Fixnum]
    def method_with_byte_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithByteReturn))).invoke(@j_del)
    end
    # @return [Fixnum]
    def method_with_short_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithShortReturn))).invoke(@j_del)
    end
    # @return [Fixnum]
    def method_with_int_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithIntReturn))).invoke(@j_del)
    end
    # @return [Fixnum]
    def method_with_long_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithLongReturn))).invoke(@j_del)
    end
    # @return [Float]
    def method_with_float_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithFloatReturn))).invoke(@j_del)
    end
    # @return [Float]
    def method_with_double_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithDoubleReturn))).invoke(@j_del)
    end
    # @return [true,false]
    def method_with_boolean_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithBooleanReturn))).invoke(@j_del)
    end
    # @return [Fixnum]
    def method_with_char_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithCharReturn))).invoke(@j_del)
    end
    # @return [String]
    def method_with_string_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithStringReturn))).invoke(@j_del)
    end
    # @return [::Testmodel::RefedInterface1]
    def method_with_vertx_gen_return
      ::Testmodel::RefedInterface1.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithVertxGenReturn))).invoke(@j_del))
    end
    # @return [::Testmodel::RefedInterface2]
    def method_with_abstract_vertx_gen_return
      ::Testmodel::RefedInterface2Impl.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithAbstractVertxGenReturn))).invoke(@j_del))
    end
    # @overload overloadedMethod(str,handler)
    #   @param [String] str
    #   @param [Proc] handler
    # @overload overloadedMethod(str,refed)
    #   @param [String] str
    #   @param [::Testmodel::RefedInterface1] refed
    # @overload overloadedMethod(str,refed,handler)
    #   @param [String] str
    #   @param [::Testmodel::RefedInterface1] refed
    #   @param [Proc] handler
    # @overload overloadedMethod(str,refed,period,handler)
    #   @param [String] str
    #   @param [::Testmodel::RefedInterface1] refed
    #   @param [Fixnum] period
    #   @param [Proc] handler
    # @return [String]
    def overloaded_method(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:overloadedMethod,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,(Proc.new { |event| param_2.call(event) }))
        end
        if param_2.class.method_defined?(:j_del)
          if param_3.class == Proc
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:overloadedMethod,Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2.j_del,(Proc.new { |event| param_3.call(event) }))
          end
          if param_3.class == Fixnum
            if param_4.class == Proc
              return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:overloadedMethod,Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class,Java::long.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,param_1,param_2.j_del,param_3,(Proc.new { |event| param_4.call(event) }))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling overloaded_method(param_1,param_2,param_3,param_4)"
          end
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:overloadedMethod,Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::RefedInterface1.java_class))).invoke(@j_del,param_1,param_2.j_del)
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling overloaded_method(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling overloaded_method(param_1,param_2,param_3,param_4)"
    end
    # @param [String] type
    # @return [Object]
    def method_with_generic_return(type)
      if type.class == String
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithGenericReturn,Java::java.lang.String.java_class))).invoke(@j_del,type))
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_return(type)"
    end
    # @param [String] type
    # @param [Object] u
    # return [void]
    def method_with_generic_param(type,u)
      if type.class == String
        if u.class == String  ||u.class == Hash || u.class == Array
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithGenericParam,Java::java.lang.String.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,type,::Vertx::Util::Utils.to_object(u))
        end
        raise ArgumentError, "Invalid argument u=#{u} when calling method_with_generic_param(type,u)"
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_param(type,u)"
    end
    # @param [String] type
    # @param [Proc] handler
    # return [void]
    def method_with_generic_handler(type,&handler)
      if type.class == String
        if handler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithGenericHandler,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,type,(Proc.new { |event| handler.call(::Vertx::Util::Utils.from_object(event)) }))
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_generic_handler(type,handler)"
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_handler(type,handler)"
    end
    # @param [String] type
    # @param [Proc] asyncResultHandler
    # return [void]
    def method_with_generic_handler_async_result(type,&asyncResultHandler)
      if type.class == String
        if asyncResultHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithGenericHandlerAsyncResult,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,type,(Proc.new { |ar| asyncResultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument asyncResultHandler=#{asyncResultHandler} when calling method_with_generic_handler_async_result(type,asyncResultHandler)"
      end
      raise ArgumentError, "Invalid argument type=#{type} when calling method_with_generic_handler_async_result(type,asyncResultHandler)"
    end
    # @param [String] str
    # return [self]
    def fluent_method(str)
      if str.class == String
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:fluentMethod,Java::java.lang.String.java_class))).invoke(@j_del,str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling fluent_method(str)"
    end
    # @param [String] foo
    # @return [::Testmodel::RefedInterface1]
    def self.static_factory_method(foo)
      if foo.class == String
        return ::Testmodel::RefedInterface1.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCodegenTestmodel::TestInterface.java_class.declared_method(:staticFactoryMethod,Java::java.lang.String.java_class))).invoke(@j_del,foo))
      end
      raise ArgumentError, "Invalid argument foo=#{foo} when calling static_factory_method(foo)"
    end
    # @param [String] foo
    # @return [::Testmodel::RefedInterface1]
    def method_with_cached_return(foo)
      if foo.class == String
        if @cached_method_with_cached_return != nil
          return @cached_method_with_cached_return
        end
        return @cached_method_with_cached_return = ::Testmodel::RefedInterface1.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithCachedReturn,Java::java.lang.String.java_class))).invoke(@j_del,foo))
      end
      raise ArgumentError, "Invalid argument foo=#{foo} when calling method_with_cached_return(foo)"
    end
    # @return [Hash{String => Object}]
    def method_with_json_object_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithJsonObjectReturn))).invoke(@j_del) != nil ? JSON.parse((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithJsonObjectReturn))).invoke(@j_del).encode) : nil
    end
    # @return [Hash{String => Object}]
    def method_with_null_json_object_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullJsonObjectReturn))).invoke(@j_del) != nil ? JSON.parse((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullJsonObjectReturn))).invoke(@j_del).encode) : nil
    end
    # @return [Array<String,Object>]
    def method_with_json_array_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithJsonArrayReturn))).invoke(@j_del) != nil ? JSON.parse((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithJsonArrayReturn))).invoke(@j_del).encode) : nil
    end
    # @return [Array<String,Object>]
    def method_with_null_json_array_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullJsonArrayReturn))).invoke(@j_del) != nil ? JSON.parse((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullJsonArrayReturn))).invoke(@j_del).encode) : nil
    end
    # @param [Hash{String => Object}] jsonObject
    # @param [Array<String,Object>] jsonArray
    # return [void]
    def method_with_json_params(jsonObject,jsonArray)
      if jsonObject.class == Hash
        if jsonArray.class == Array
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithJsonParams,Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCoreJson::JsonArray.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_json_object(jsonObject),::Vertx::Util::Utils.to_json_array(jsonArray))
        end
        raise ArgumentError, "Invalid argument jsonArray=#{jsonArray} when calling method_with_json_params(jsonObject,jsonArray)"
      end
      raise ArgumentError, "Invalid argument jsonObject=#{jsonObject} when calling method_with_json_params(jsonObject,jsonArray)"
    end
    # @param [Hash{String => Object}] jsonObject
    # @param [Array<String,Object>] jsonArray
    # return [void]
    def method_with_null_json_params(jsonObject,jsonArray)
      if jsonObject.class == Hash
        if jsonArray.class == Array
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullJsonParams,Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCoreJson::JsonArray.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_json_object(jsonObject),::Vertx::Util::Utils.to_json_array(jsonArray))
        end
        raise ArgumentError, "Invalid argument jsonArray=#{jsonArray} when calling method_with_null_json_params(jsonObject,jsonArray)"
      end
      raise ArgumentError, "Invalid argument jsonObject=#{jsonObject} when calling method_with_null_json_params(jsonObject,jsonArray)"
    end
    # @param [Proc] jsonObjectHandler
    # @param [Proc] jsonArrayHandler
    # return [void]
    def method_with_handler_json(jsonObjectHandler,&jsonArrayHandler)
      if jsonObjectHandler.class == Proc
        if jsonArrayHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerJson,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| jsonArrayHandler.call(event != nil ? JSON.parse(event.encode) : nil) }))
        end
        raise ArgumentError, "Invalid argument jsonArrayHandler=#{jsonArrayHandler} when calling method_with_handler_json(jsonObjectHandler,jsonArrayHandler)"
      end
      raise ArgumentError, "Invalid argument jsonObjectHandler=#{jsonObjectHandler} when calling method_with_handler_json(jsonObjectHandler,jsonArrayHandler)"
    end
    # @param [Proc] jsonObjectHandler
    # @param [Proc] jsonArrayHandler
    # return [void]
    def method_with_handler_null_json(jsonObjectHandler,&jsonArrayHandler)
      if jsonObjectHandler.class == Proc
        if jsonArrayHandler.class == Proc
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerNullJson,Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| jsonObjectHandler.call(event != nil ? JSON.parse(event.encode) : nil) }),(Proc.new { |event| jsonArrayHandler.call(event != nil ? JSON.parse(event.encode) : nil) }))
        end
        raise ArgumentError, "Invalid argument jsonArrayHandler=#{jsonArrayHandler} when calling method_with_handler_null_json(jsonObjectHandler,jsonArrayHandler)"
      end
      raise ArgumentError, "Invalid argument jsonObjectHandler=#{jsonObjectHandler} when calling method_with_handler_null_json(jsonObjectHandler,jsonArrayHandler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_json_object(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_json_object(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_null_json_object(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultNullJsonObject,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_null_json_object(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_json_array(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_json_array(handler)"
    end
    # @param [Proc] handler
    # return [void]
    def method_with_handler_async_result_null_json_array(&handler)
      if handler.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithHandlerAsyncResultNullJsonArray,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result != nil ? JSON.parse(ar.result.encode) : nil : nil) }))
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_handler_async_result_null_json_array(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => String}]
    def method_with_map_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => String}]
    def method_with_map_string_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapStringReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_string_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Fixnum}]
    def method_with_map_long_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapLongReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_long(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_long_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Fixnum}]
    def method_with_map_integer_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapIntegerReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_integer(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_integer_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Fixnum}]
    def method_with_map_short_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapShortReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_short(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_short_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Fixnum}]
    def method_with_map_byte_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapByteReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_byte(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_byte_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Fixnum}]
    def method_with_map_character_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapCharacterReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_character(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_character_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => true,false}]
    def method_with_map_boolean_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapBooleanReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_boolean(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_boolean_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Float}]
    def method_with_map_float_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapFloatReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_float(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_float_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Float}]
    def method_with_map_double_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapDoubleReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_double(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_double_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Hash{String => Object}}]
    def method_with_map_json_object_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapJsonObjectReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_json_object_return(handler)"
    end
    # @param [Proc] handler
    # @return [Hash{String => Array<String,Object>}]
    def method_with_map_json_array_return(&handler)
      if handler.class == Proc
        return Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithMapJsonArrayReturn,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) })), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_array(val) })
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling method_with_map_json_array_return(handler)"
    end
    # @return [Hash{String => String}]
    def method_with_null_map_return
      Java::IoVertxLangJruby::Helper.adaptingMap((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullMapReturn))).invoke(@j_del), Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_string(val) })
    end
    # @return [Array<String>]
    def method_with_list_string_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithListStringReturn))).invoke(@j_del).to_a.map { |elt| elt }
    end
    # @return [Array<Fixnum>]
    def method_with_list_long_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithListLongReturn))).invoke(@j_del).to_a.map { |elt| elt }
    end
    # @return [Array<::Testmodel::RefedInterface1>]
    def method_with_list_vertx_gen_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithListVertxGenReturn))).invoke(@j_del).to_a.map { |elt| ::Testmodel::RefedInterface1.new(elt) }
    end
    # @return [Array<Hash{String => Object}>]
    def method_with_list_json_object_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithListJsonObjectReturn))).invoke(@j_del).to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    # @return [Array<Array<String,Object>>]
    def method_with_list_json_array_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithListJsonArrayReturn))).invoke(@j_del).to_a.map { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    # @return [Array<String>]
    def method_with_null_list_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullListReturn))).invoke(@j_del).to_a.map { |elt| elt }
    end
    # @return [Set<String>]
    def method_with_set_string_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithSetStringReturn))).invoke(@j_del).to_set.map! { |elt| elt }
    end
    # @return [Set<Fixnum>]
    def method_with_set_long_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithSetLongReturn))).invoke(@j_del).to_set.map! { |elt| elt }
    end
    # @return [Set<::Testmodel::RefedInterface1>]
    def method_with_set_vertx_gen_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithSetVertxGenReturn))).invoke(@j_del).to_set.map! { |elt| ::Testmodel::RefedInterface1.new(elt) }
    end
    # @return [Set<Hash{String => Object}>]
    def method_with_set_json_object_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithSetJsonObjectReturn))).invoke(@j_del).to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    # @return [Set<Array<String,Object>>]
    def method_with_set_json_array_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithSetJsonArrayReturn))).invoke(@j_del).to_set.map! { |elt| elt != nil ? JSON.parse(elt.encode) : nil }
    end
    # @return [Set<String>]
    def method_with_null_set_return
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithNullSetReturn))).invoke(@j_del).to_set.map! { |elt| elt }
    end
    # @param [String] strVal
    # @param [:TIM,:JULIEN,:NICK,:WESTON] weirdo
    # @return [String]
    def method_with_enum_param(strVal,weirdo)
      if strVal.class == String
        if weirdo.class == Symbol
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithEnumParam,Java::java.lang.String.java_class,Java::IoVertxCodegenTestmodel::TestEnum.java_class))).invoke(@j_del,strVal,Java::IoVertxCodegenTestmodel::TestEnum.valueOf(weirdo))
        end
        raise ArgumentError, "Invalid argument weirdo=#{weirdo} when calling method_with_enum_param(strVal,weirdo)"
      end
      raise ArgumentError, "Invalid argument strVal=#{strVal} when calling method_with_enum_param(strVal,weirdo)"
    end
    # @param [String] strVal
    # @return [:TIM,:JULIEN,:NICK,:WESTON]
    def method_with_enum_return(strVal)
      if strVal.class == String
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithEnumReturn,Java::java.lang.String.java_class))).invoke(@j_del,strVal).name.intern
      end
      raise ArgumentError, "Invalid argument strVal=#{strVal} when calling method_with_enum_return(strVal)"
    end
    # @param [String] strVal
    # @return [Nil]
    def method_with_throwable_return(strVal)
      if strVal.class == String
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:methodWithThrowableReturn,Java::java.lang.String.java_class))).invoke(@j_del,strVal)
      end
      raise ArgumentError, "Invalid argument strVal=#{strVal} when calling method_with_throwable_return(strVal)"
    end
  end
end

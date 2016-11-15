require 'java'
require 'assert'
require 'set'
require 'testmodel/generics_tck'
require 'testmodel/refed_interface1'

java_import 'io.vertx.codegen.testmodel.GenericsTCKImpl'
java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'

# Instantiate obj
@obj = Testmodel::GenericsTCK.new(GenericsTCKImpl.new)
@refed_obj = Testmodel::RefedInterface1.new(RefedInterface1Impl.new)

def checkMethodWithParameterized(expected, actual)
  expected.each_with_index { |vals,index|
    ret = actual[index]
    Assert.is_not_nil ret.j_del
    Assert.equals ret.get_value, vals[0]
    ret.set_value vals[1]
    Assert.equals ret.get_value, vals[1]
  }
end

def testMethodWithBasicParameterizedReturn
  checkMethodWithBasicParameterized([
    @obj.method_with_byte_parameterized_return,
    @obj.method_with_short_parameterized_return,
    @obj.method_with_integer_parameterized_return,
    @obj.method_with_long_parameterized_return,
    @obj.method_with_float_parameterized_return,
    @obj.method_with_double_parameterized_return,
    @obj.method_with_boolean_parameterized_return,
    @obj.method_with_character_parameterized_return,
    @obj.method_with_string_parameterized_return]
  )
end

def testMethodWithHandlerBasicParameterized
  values = []
  ['method_with_handler_byte_parameterized',
   'method_with_handler_short_parameterized',
   'method_with_handler_integer_parameterized',
   'method_with_handler_long_parameterized',
   'method_with_handler_float_parameterized',
   'method_with_handler_double_parameterized',
   'method_with_handler_boolean_parameterized',
   'method_with_handler_character_parameterized',
   'method_with_handler_string_parameterized',
  ].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithBasicParameterized(values)
end

def testMethodWithHandlerAsyncResultBasicParameterized
  values = []
  ['method_with_handler_async_result_byte_parameterized',
   'method_with_handler_async_result_short_parameterized',
   'method_with_handler_async_result_integer_parameterized',
   'method_with_handler_async_result_long_parameterized',
   'method_with_handler_async_result_float_parameterized',
   'method_with_handler_async_result_double_parameterized',
   'method_with_handler_async_result_boolean_parameterized',
   'method_with_handler_async_result_character_parameterized',
   'method_with_handler_async_result_string_parameterized',
  ].each { |meth|
    @obj.method(meth).call do |err,val|
      Assert.is_nil err
      values.push val
    end
  }
  checkMethodWithBasicParameterized(values)
end

def testMethodWithFunctionParamBasicParameterized
  values = []
  ['method_with_function_param_byte_parameterized',
   'method_with_function_param_short_parameterized',
   'method_with_function_param_integer_parameterized',
   'method_with_function_param_long_parameterized',
   'method_with_function_param_float_parameterized',
   'method_with_function_param_double_parameterized',
   'method_with_function_param_boolean_parameterized',
   'method_with_function_param_character_parameterized',
   'method_with_function_param_string_parameterized',
  ].each { |meth|
    @obj.method(meth).call do |val|
      values.push val
    end
  }
  checkMethodWithBasicParameterized(values)
end

def checkMethodWithBasicParameterized(values)
  checkMethodWithParameterized([
    [123,124],
    [1234,1235],
    [123456,1234567],
    [123456789,1234567890],
    [0.34,0.35],
    [0.314,0.3141],
    [true, false],
    [70, 71],
    ['zoumbawe', 'the_sring'],
  ], values)
end

def testMethodWithJsonParameterizedReturn
  checkMethodWithJsonParameterized([
    @obj.method_with_json_object_parameterized_return,
    @obj.method_with_json_array_parameterized_return,
  ])
end

def testMethodWithHandlerJsonParameterized
  values = []
  ['method_with_handler_json_object_parameterized',
   'method_with_handler_json_array_parameterized'
  ].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithJsonParameterized(values)
end

def testMethodWithHandlerAsyncResultJsonParameterized
  values = []
  ['method_with_handler_async_result_json_object_parameterized',
   'method_with_handler_async_result_json_array_parameterized'
  ].each { |meth|
    @obj.method(meth).call do |err,val|
      Assert.is_nil err
      values.push val
    end
  }
  checkMethodWithJsonParameterized(values)
end

def testMethodWithFunctionParamJsonParameterized
  values = []
  ['method_with_function_param_json_object_parameterized',
   'method_with_function_param_json_array_parameterized'
  ].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithJsonParameterized(values)
end

def checkMethodWithJsonParameterized(values)
  checkMethodWithParameterized([
    [{'cheese'=>'stilton'},{'cheese'=>'roquefort'}],
    [['cheese','stilton'],['cheese','roquefort']]
  ], values)
end

def testMethodWithDataObjectParameterizedReturn
  checkMethodWithDataObjectParameterized([@obj.method_with_data_object_parameterized_return])
end

def testMethodWithHandlerDataObjectParameterized
  values = []
  ['method_with_handler_data_object_parameterized'].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithDataObjectParameterized(values)
end

def testMethodWithHandlerAsyncResultDataObjectParameterized
  values = []
  ['method_with_handler_async_result_data_object_parameterized'].each { |meth|
    @obj.method(meth).call do |err,val|
      Assert.is_nil err
      values.push val
    end
  }
  checkMethodWithDataObjectParameterized(values)
end

def testMethodWithFunctionParamDataObjectParameterized
  values = []
  ['method_with_function_param_data_object_parameterized'].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithDataObjectParameterized(values)
end

def checkMethodWithDataObjectParameterized(values)
  checkMethodWithParameterized([
    [{'wibble'=>3.14,'foo'=>'foo_value','bar'=>123456},{'wibble'=>4.5,'foo'=>'the_string','bar'=>654321}]], values)
end

def testMethodWithEnumParameterizedReturn
  checkMethodWithEnumParameterized([@obj.method_with_enum_parameterized_return, @obj.method_with_gen_enum_parameterized_return])
end

def testMethodWithHandlerEnumParameterized
  values = []
  ['method_with_handler_enum_parameterized',
   'method_with_handler_gen_enum_parameterized'].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithEnumParameterized(values)
end

def testMethodWithHandlerAsyncResultEnumParameterized
  values = []
  ['method_with_handler_async_result_enum_parameterized',
   'method_with_handler_async_result_gen_enum_parameterized'
  ].each { |meth|
    @obj.method(meth).call do |err,val|
      Assert.is_nil err
      values.push val
    end
  }
  checkMethodWithEnumParameterized(values)
end

def testMethodWithFunctionParamEnumParameterized
  values = []
  ['method_with_function_param_enum_parameterized',
   'method_with_function_param_gen_enum_parameterized'].each { |meth|
    @obj.method(meth).call do |val| values.push val end
  }
  checkMethodWithEnumParameterized(values)
end

def checkMethodWithEnumParameterized(values)
  checkMethodWithParameterized([['WESTON','JULIEN'],['LELAND','LAURA']], values)
end

def testMethodWithUserTypeParameterizedReturn
  checkMethodWithUserTypeParameterized(@obj.method_with_user_type_parameterized_return)
end

def testMethodWithHandlerUserTypeParameterized
  count = 0
  @obj.method_with_handler_user_type_parameterized do |val|
    checkMethodWithUserTypeParameterized(val)
    count = count + 1
  end
  Assert.equals count, 1
end

def testMethodWithHandlerAsyncResultUserTypeParameterized
  count = 0
  @obj.method_with_handler_async_result_user_type_parameterized do |err,val|
    Assert.is_nil err
    checkMethodWithUserTypeParameterized(val)
    count = count + 1
  end
  Assert.equals count, 1
end

def testMethodWithFunctionParamUserTypeParameterized
  count = 0
  @obj.method_with_function_param_user_type_parameterized do |val|
    checkMethodWithUserTypeParameterized(val)
    count = count + 1
  end
  Assert.equals count, 1
end

def checkMethodWithUserTypeParameterized ret
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.is_not_nil val.j_del
  Assert.equals(val.get_string, 'foo')
  @refed_obj.set_string 'another string'
  ret.set_value @refed_obj
  val = ret.get_value
  Assert.is_not_nil val.j_del
  Assert.equals(val.get_string, 'another string')
end

def testMethodWithClassTypeParameterizedReturn
  checkMethodWithClassTypeParameterized([
    @obj.method_with_class_type_parameterized_return(Fixnum),
    @obj.method_with_class_type_parameterized_return(Float),
    @obj.method_with_class_type_parameterized_return(String),
    @obj.method_with_class_type_parameterized_return(Hash),
    @obj.method_with_class_type_parameterized_return(Array),
    @obj.method_with_class_type_parameterized_return(TrueClass),
    @obj.method_with_class_type_parameterized_return(FalseClass),
    @obj.method_with_class_type_parameterized_return(Testmodel::RefedInterface1),
  ])
end

def testMethodWithHandlerClassTypeParameterized
  values = []
  [Fixnum,
   Float,
   String,
   Hash,
   Array,
   TrueClass,
   FalseClass,
   Testmodel::RefedInterface1].each { |class_type|
    @obj.method_with_handler_class_type_parameterized class_type do |val| values.push val end
  }
  checkMethodWithClassTypeParameterized(values)
end

def testMethodWithHandlerAsyncResultClassTypeParameterized
  values = []
  [Fixnum,
   Float,
   String,
   Hash,
   Array,
   TrueClass,
   FalseClass,
   Testmodel::RefedInterface1].each { |class_type|
    @obj.method_with_handler_async_result_class_type_parameterized class_type do |err, val|
      Assert.is_nil err
      values.push val
    end
  }
  checkMethodWithClassTypeParameterized(values)
end

def testMethodWithFunctionParamClassTypeParameterized
  values = []
  [Fixnum,
   Float,
   String,
   Hash,
   Array,
   TrueClass,
   FalseClass,
   Testmodel::RefedInterface1].each { |class_type|
    @obj.method_with_function_param_class_type_parameterized class_type do |val| values.push val end
  }
  checkMethodWithClassTypeParameterized(values)
end

def checkMethodWithClassTypeParameterized(values)
  ret = values[0]
  Assert.is_not_nil ret.j_del
  Assert.equals(ret.get_value, 123456789)
  ret.set_value 987654321
  Assert.argument_error do
    ret.set_value true
  end
  Assert.equals(ret.get_value, 987654321)

  ret = values[1]
  Assert.is_not_nil ret.j_del
  Assert.equals(ret.get_value, 0.34)
  ret.set_value 0.36
  Assert.argument_error do
    ret.set_value true
  end
  Assert.equals(ret.get_value, 0.36)

  ret = values[2]
  Assert.is_not_nil ret.j_del
  Assert.equals(ret.get_value, 'zoumbawe')
  ret.set_value 'agowae'
  Assert.argument_error do
    ret.set_value true
  end
  Assert.equals(ret.get_value, 'agowae')

  ret = values[3]
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals val.class, Hash
  Assert.equals(val['cheese'], 'stilton')
  ret.set_value({'cheese'=>'roquefort'})
  Assert.argument_error do
    ret.set_value true
  end
  val = ret.get_value
  Assert.equals val.class, Hash
  Assert.equals(val['cheese'], 'roquefort')

  ret = values[4]
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals val.class, Array
  Assert.equals(val[0], 'cheese')
  Assert.equals(val[1], 'stilton')
  ret.set_value(['cheese','roquefort'])
  Assert.argument_error do
    ret.set_value true
  end
  val = ret.get_value
  Assert.equals val.class, Array
  Assert.equals(val[0], 'cheese')
  Assert.equals(val[1], 'roquefort')

  ret = values[5]
  Assert.is_not_nil ret.j_del
  Assert.equals(ret.get_value, true)
  ret.set_value false
  Assert.argument_error do
    ret.set_value 'abc'
  end
  Assert.equals(ret.get_value, false)

  ret = values[7]
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.is_not_nil val.j_del
  Assert.equals(val.get_string, 'foo')
  Assert.argument_error do
    ret.set_value 'abc'
  end
end

def testMethodWithClassTypeParam
  @obj.method_with_class_type_param(Fixnum, 123456789)
  # @obj.method_with_class_type_param(Float, 0.314)
  @obj.method_with_class_type_param(TrueClass, true)
  @obj.method_with_class_type_param(String, 'zoumbawe')
  @obj.method_with_class_type_param(Hash, {'cheese'=>'stilton'})
  @obj.method_with_class_type_param(Array, ['cheese','stilton'])
  @obj.method_with_class_type_param(Testmodel::RefedInterface1, @refed_obj.set_string('foo'))
end

def testMethodWithClassTypeReturn
  checkMethodWithClassType([
    @obj.method_with_class_type_return(Fixnum),
    @obj.method_with_class_type_return(Float),
    @obj.method_with_class_type_return(TrueClass),
    @obj.method_with_class_type_return(String),
    @obj.method_with_class_type_return(Hash),
    @obj.method_with_class_type_return(Array),
    @obj.method_with_class_type_return(Testmodel::RefedInterface1)
  ])
end

def testMethodWithClassTypeHandler
  values = []
  [Fixnum,
   Float,
   TrueClass,
   String,
   Hash,
   Array,
   Testmodel::RefedInterface1].each { |class_type|
    @obj.method_with_class_type_handler class_type do |val| values.push val end
  }
  checkMethodWithClassType(values)
end

def testMethodWithClassTypeHandlerAsyncResult
  values = []
  [Fixnum,
   Float,
   TrueClass,
   String,
   Hash,
   Array,
   Testmodel::RefedInterface1].each { |class_type|
    @obj.method_with_class_type_handler_async_result class_type do |err,val|
      Assert.is_nil err
      values.push val
    end
  }
  checkMethodWithClassType(values)
end

def testMethodWithClassTypeFunctionParam
  values = []
  [Fixnum,
   Float,
   TrueClass,
   String,
   Hash,
   Array,
   Testmodel::RefedInterface1].each { |class_type|
    @obj.method_with_class_type_function_param class_type do |val| values.push val end
  }
  checkMethodWithClassType(values)
end

def testMethodWithClassTypeFunctionReturn
  @obj.method_with_class_type_function_return(Fixnum) do 123456789 end
  # @obj.method_with_class_type_function_return(Float) do 0.314 end
  @obj.method_with_class_type_function_return(TrueClass) do true end
  @obj.method_with_class_type_function_return(String) do 'zoumbawe' end
  @obj.method_with_class_type_function_return(Hash) do {'cheese'=>'stilton'} end
  @obj.method_with_class_type_function_return(Array) do ['cheese','stilton'] end
  @obj.method_with_class_type_function_return(Testmodel::RefedInterface1) do @refed_obj.set_string('foo') end
end

def checkMethodWithClassType values
  Assert.equals(values[0], 123456789)
  Assert.equals(values[1], 0.34)
  Assert.equals(values[2], true)
  Assert.equals(values[3], 'zoumbawe')
  Assert.equals(values[4], {'cheese'=>'stilton'})
  Assert.equals(values[5], ['cheese','stilton'])
  ret = values[6]
  Assert.is_not_nil ret.j_del
  Assert.equals('foo', ret.get_string)
end

def testInterfaceWithStringArg
  ret = @obj.interface_with_string_arg('the_string_value');
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals('the_string_value', val)
end

def testInterfaceWithVariableArg
  @refed_obj.set_string 'the_string_value'
  ret = @obj.interface_with_variable_arg('whatever', Testmodel::RefedInterface1, @refed_obj)
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals('the_string_value', val.get_string)

  ret = @obj.interface_with_variable_arg('whatever', String, 'the_string_arg')
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals('the_string_arg', val)
end

def testInterfaceWithApiArg
  @refed_obj.set_string 'the_string_value'
  ret = @obj.interface_with_api_arg(@refed_obj)
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals('the_string_value', val.get_string)
end

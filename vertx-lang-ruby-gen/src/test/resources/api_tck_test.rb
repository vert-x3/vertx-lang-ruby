require 'java'
require 'assert'
require 'set'
require 'testmodel/super_interface1'
require 'testmodel/super_interface2'
require 'testmodel/test_interface'
require 'testmodel/data_object_tck'
require 'testmodel/refed_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/generic_refed_interface'
require 'testmodel/factory'
require 'acme/my_interface'

java_import 'io.vertx.codegen.testmodel.TestInterfaceImpl'
java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'
java_import 'io.vertx.codegen.testmodel.RefedInterface2Impl'

# Instantiate obj
@obj = Testmodel::TestInterface.new(TestInterfaceImpl.new)
@refed_obj = Testmodel::RefedInterface1.new(RefedInterface1Impl.new)
@refed2_obj = Testmodel::RefedInterface2Impl.new(RefedInterface2Impl.new)

def testMethodWithBasicParams
  @obj.method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar');
end

def testMethodWithBasicBoxedParams
  @obj.method_with_basic_boxed_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88);
end

def testMethodWithHandlerBasicTypes
  count = 0
  @obj.method_with_handler_basic_types(
      Proc.new { |val| Assert.equals(val, 123); Assert.equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.equals(val, 12345); Assert.equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.equals(val, 1234567); Assert.equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.equals(val, 1265615234); Assert.equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.equals(val, 12.345); Assert.equals(val.class, Float) ; count += 1 },
      Proc.new { |val| Assert.equals(val, 12.34566); Assert.equals(val.class, Float) ; count += 1 },
      Proc.new { |val| Assert.equals(val, true); Assert.equals(val.class, TrueClass) ; count += 1 },
      Proc.new { |val| Assert.equals(val, 88); Assert.equals(val.class, Fixnum) ; count += 1 }) do |val|
    Assert.equals(val, 'quux!'); Assert.equals(val.class, String) ; count += 1
  end
  Assert.equals(count, 9)
end

def testMethodWithHandlerAsyncResultBasicTypes
  count = 0
  @obj.method_with_handler_async_result_byte(false) { |err,val| Assert.is_nil err; Assert.equals(val, 123); Assert.equals(val.class, Fixnum); count += 1 }
  @obj.method_with_handler_async_result_short(false) { |err,val| Assert.is_nil err; Assert.equals(val, 12345); Assert.equals(val.class, Fixnum); count += 1 }
  @obj.method_with_handler_async_result_integer(false) { |err,val| Assert.is_nil err; Assert.equals(val, 1234567); Assert.equals(val.class, Fixnum); count += 1 }
  @obj.method_with_handler_async_result_long(false) { |err,val| Assert.is_nil err; Assert.equals(val, 1265615234); Assert.equals(val.class, Fixnum); count += 1 }
  @obj.method_with_handler_async_result_float(false) { |err,val| Assert.is_nil err; Assert.equals(val, 12.345); Assert.equals(val.class, Float); count += 1 }
  @obj.method_with_handler_async_result_double(false) { |err,val| Assert.is_nil err; Assert.equals(val, 12.34566); Assert.equals(val.class, Float); count += 1 }
  @obj.method_with_handler_async_result_boolean(false) { |err,val| Assert.is_nil err; Assert.equals(val, true); Assert.equals(val.class, TrueClass); count += 1 }
  @obj.method_with_handler_async_result_character(false) { |err,val| Assert.is_nil err; Assert.equals(val, 88); Assert.equals(val.class, Fixnum); count += 1 }
  @obj.method_with_handler_async_result_string(false) { |err,val| Assert.is_nil err; Assert.equals(val, 'quux!'); Assert.equals(val.class, String); count += 1 }
  Assert.equals(count, 9)
end

def testMethodWithHandlerAsyncResultBasicTypesFails
  count = 0
  @obj.method_with_handler_async_result_byte(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_short(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_integer(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_long(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_float(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_double(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_boolean(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_character(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  @obj.method_with_handler_async_result_string(true) { |err,val| Assert.is_nil val; Assert.is_not_nil err; Assert.equals(err.message, 'foobar!'); count += 1 }
  Assert.equals(count, 9)
end

def testMethodWithUserTypes
  @refed_obj.set_string('aardvarks')
  @obj.method_with_user_types(@refed_obj)
end

def testMethodWithOverloadedUserTypes
  Assert.equals(@obj.method_with_overloaded_user_types(@refed_obj), "refed1")
  Assert.equals(@obj.method_with_overloaded_user_types(@refed2_obj), "refed2")
end

def testObjectParam
  @obj.method_with_object_param('null', nil)
  @obj.method_with_object_param('string', 'wibble')
  @obj.method_with_object_param('true', true)
  @obj.method_with_object_param('false', false)
  @obj.method_with_object_param('long', 123)
  @obj.method_with_object_param('double', 123.456)
  json_obj = {:foo => 'hello', :bar => 123}
  @obj.method_with_object_param('JsonObject', json_obj)
  json_arr = %w(foo bar wib)
  @obj.method_with_object_param('JsonArray', json_arr)
end

def testDataObjectParam
  data_object = {:foo => 'hello', :bar => 123, :wibble => 1.23}
  @obj.method_with_data_object_param(data_object)
end

def testMethodWithHandlerDataObject
  count = 0
  @obj.method_with_handler_data_object { |event| Assert.equals(event, {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0}); count += 1 }
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultDataObject
  count = 0
  @obj.method_with_handler_async_result_data_object(false) { |err,val| Assert.is_nil(err); Assert.equals(val, {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0}); count += 1 }
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultDataObjectFails
  count = 0
  @obj.method_with_handler_async_result_data_object(true) { |err,val| Assert.is_nil(val); Assert.is_not_nil(err); Assert.equals(err.message, 'foobar!'); count += 1 }
  Assert.equals(count, 1)
end

def testMethodWithHandlerStringReturn
  handler = @obj.method_with_handler_string_return("the-result")
  handler.call("the-result")
  failed = false
  begin
    handler.call("unexpected")
  rescue Object => e
    failed = true;
  end
  Assert.equals(failed, true)
end

def testMethodWithHandlerGenericReturn
  result = nil
  handler = @obj.method_with_handler_generic_return() { |val|
    result = val
  }
  handler.call("the-result");
  Assert.equals(result, "the-result")
  handler.call(@obj);
  Assert.equals(result, @obj.j_del)
end

def testMethodWithHandlerVertxGenReturn
  handler = @obj.method_with_handler_vertx_gen_return("the-result")
  @refed_obj.set_string('the-result')
  handler.call(@refed_obj);
end

def testMethodWithHandlerAsyncResultStringReturn
  succeedingHandler = @obj.method_with_handler_async_result_string_return("the-result", false)
  succeedingHandler.call(nil, "the-result")
  failed = false
  begin
    succeedingHandler.call(nil)
  rescue Object => e
    failed = true;
  end
  Assert.equals(failed, true)
  failingHandler = @obj.method_with_handler_async_result_string_return("an-error", true)
  failingHandler.call("an-error");
  failed = false
  begin
    failingHandler.call(nil, "unexpected");
  rescue Object => e
    failed = true;
  end
  Assert.equals(failed, true)
end

def testMethodWithHandlerAsyncResultGenericReturn
  result = nil
  succeedingHandler = @obj.method_with_handler_async_result_generic_return() { |err,val|
    if (err == nil)
      result = val
    else
      result = err
    end
  }
  succeedingHandler.call(nil, "the-result");
  Assert.equals(result, "the-result")
  succeedingHandler.call(nil, @obj);
  Assert.equals(result, @obj.j_del)
end

def testMethodWithHandlerAsyncResultVertxGenReturn
  handler = @obj.method_with_handler_async_result_vertx_gen_return("the-async-result", false)
  @refed_obj.set_string('the-async-result')
  handler.call(nil, @refed_obj);
  handler = @obj.method_with_handler_async_result_vertx_gen_return("the-async-failure", true)
  handler.call("the-async-failure", nil);
end

def testMethodWithHandlerUserTypes
  count = 0
  @obj.method_with_handler_user_types do |val|
    Assert.equals(val.class, Testmodel::RefedInterface1)
    Assert.equals(val.get_string, 'echidnas')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultUserTypes
  count = 0
  @obj.method_with_handler_async_result_user_types do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Testmodel::RefedInterface1)
    Assert.equals(val.get_string, 'cheetahs')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithConcreteHandlerUserTypeSubtype
  count = 0
  arg = Testmodel::Factory.create_concrete_handler_user_type do |refedObj|
    Assert.equals(refedObj.class, Testmodel::RefedInterface1)
    Assert.equals(refedObj.get_string, 'echidnas')
    count += 1
  end
  @obj.method_with_concrete_handler_user_type_subtype arg
  Assert.equals(1, count)
end

def testMethodWithAbstractHandlerUserTypeSubtype
  count = 0
  arg = Testmodel::Factory.create_abstract_handler_user_type do |refedObj|
    Assert.equals(refedObj.class, Testmodel::RefedInterface1)
    Assert.equals(refedObj.get_string, 'echidnas')
    count += 1
  end
  @obj.method_with_abstract_handler_user_type_subtype arg
  Assert.equals(1, count)
end

def testMethodWithConcreteHandlerUserTypeSubtypeExtension
  count = 0
  arg = Testmodel::Factory.create_concrete_handler_user_type_extension do |refedObj|
    Assert.equals(refedObj.class, Testmodel::RefedInterface1)
    Assert.equals(refedObj.get_string, 'echidnas')
    count += 1
  end
  @obj.method_with_concrete_handler_user_type_subtype_extension arg
  Assert.equals(1, count)
end

def testMethodWithHandlerVoid
  count = 0
  @obj.method_with_handler_void do |val|
    Assert.is_nil(val)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultVoid
  count = 0
  @obj.method_with_handler_async_result_void(false) do |err|
    Assert.is_nil(err)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultVoidFails
  count = 0
  @obj.method_with_handler_async_result_void(true) do |err|
    Assert.is_not_nil err
    Assert.equals(err.message, 'foo!')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerThrowable
  count = 0
  @obj.method_with_handler_throwable do |err|
    Assert.is_not_nil err
    Assert.equals(err.message, 'cheese!')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerGenericUserType
  def run_test(value, &assert)
    count = 0
    @obj.method_with_handler_generic_user_type(value) do |refedObj|
      Assert.is_not_nil(refedObj)
      Assert.equals(refedObj.class, Testmodel::GenericRefedInterface)
      assert.call(refedObj.get_value)
      count += 1
    end
    Assert.equals(1, count)
  end
  run_test('string_value') { |value| Assert.equals(value, 'string_value') }
  run_test({'key' => 'key_value'}) { |value| Assert.equals(value, {'key' => 'key_value'}) }
  run_test(%w(foo bar juu)) { |value| Assert.equals(value, %w(foo bar juu)) }
end

def testMethodWithHandlerAsyncResultGenericUserType
  def run_test(value, &assert)
    count = 0
    @obj.method_with_handler_async_result_generic_user_type(value) do |err,refedObj|
      Assert.is_nil(err)
      Assert.is_not_nil(refedObj)
      Assert.equals(refedObj.class, Testmodel::GenericRefedInterface)
      assert.call(refedObj.get_value)
      count += 1
    end
    Assert.equals(1, count)
  end
  run_test('string_value') { |value| Assert.equals(value, 'string_value') }
  run_test({'key' => 'key_value'}) { |value| Assert.equals(value, {'key' => 'key_value'}) }
  run_test(%w(foo bar juu)) { |value| Assert.equals(value, %w(foo bar juu)) }
end

def testMethodWithGenericParam
  @obj.method_with_generic_param 'String', 'foo'
  @obj.method_with_generic_param 'JsonObject', {'foo'=>'hello','bar'=>123}
  @obj.method_with_generic_param 'JsonArray', ['foo', 'bar', 'wib']
end

def testMethodWithGenericHandler
  count = 0
  @obj.method_with_generic_handler('String') { |val| Assert.equals(val.class, String); Assert.equals(val, 'foo'); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler('Ref') { |val| Assert.equals(val.getString, 'bar'); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler('JsonObject') { |val| Assert.equals(val.class, Hash); Assert.equals(val, {'foo'=>'hello','bar'=>123}); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler('JsonArray') { |val| Assert.equals(val.class, Array); Assert.equals(val, ['foo','bar','wib']); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler('JsonObjectComplex') { |val| Assert.equals(val.class, Hash); Assert.equals(val, {'outer' => {'foo' => 'hello'}, 'bar'=> ['this', 'that']}); count += 1 }
  Assert.equals(1, count)
end

def testMethodWithGenericHandlerAsyncResult
  count = 0
  @obj.method_with_generic_handler_async_result('String') { |err,val| Assert.is_nil(err); Assert.equals(val.class, String); Assert.equals(val, 'foo'); count += 1 }
  Assert.equals(1, count)

  # Test with future
  count = 0
  future = @obj.method_with_generic_handler_async_result('String')
  Assert.equals(0, count)
  future.set_handler { |err,val| Assert.is_nil(err); Assert.equals(val.class, String); Assert.equals(val, 'foo'); count += 1 }
  Assert.equals(1, count)

  count = 0
  @obj.method_with_generic_handler_async_result('Ref') { |err,val| Assert.is_nil(err); Assert.equals(val.getString, 'bar'); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler_async_result('JsonObject') { |err,val| Assert.is_nil(err); Assert.equals(val.class, Hash); Assert.equals(val, {'foo'=>'hello','bar'=>123}); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler_async_result('JsonObjectComplex') { |err,val| Assert.is_nil(err); Assert.equals(val.class, Hash); Assert.equals(val, {'outer' => {'foo' => 'hello'}, 'bar'=> ['this', 'that']}); count += 1 }
  Assert.equals(1, count)
  count = 0
  @obj.method_with_generic_handler_async_result('JsonArray') { |err,val| Assert.is_nil(err); Assert.equals(val.class, Array); Assert.equals(val, ['foo','bar','wib']); count += 1 }
  Assert.equals(1, count)
end

def testBasicReturns
  ret = @obj.method_with_byte_return
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 123)
  ret = @obj.method_with_short_return
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 12345)
  ret = @obj.method_with_int_return
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 12345464)
  ret = @obj.method_with_long_return
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 65675123)
  ret = @obj.method_with_float_return
  Assert.equals(ret.class, Float)
  Assert.equals(ret, 1.23)
  ret = @obj.method_with_double_return
  Assert.equals(ret.class, Float)
  Assert.equals(ret, 3.34535)
  ret = @obj.method_with_boolean_return?
  Assert.equals(ret.class, TrueClass)
  Assert.equals(ret, true)
  ret = @obj.method_with_char_return
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 89)
  ret = @obj.method_with_string_return
  Assert.equals(ret.class, String)
  Assert.equals(ret, 'orangutan')
end

def testVertxGenReturn
  ret = @obj.method_with_vertx_gen_return
  Assert.equals(ret.class, Testmodel::RefedInterface1)
  Assert.equals(ret.get_string, 'chaffinch')
end

def testVertxGenNullReturn
  ret = @obj.method_with_vertx_gen_null_return
  Assert.equals(nil, ret)
end

def testAbstractVertxGenReturn
  ret = @obj.method_with_abstract_vertx_gen_return
  Assert.equals(ret.is_a?(Testmodel::RefedInterface2), true)
  Assert.equals(ret.get_string, 'abstractchaffinch')
end

def testDataObjectReturn
  ret = @obj.method_with_data_object_return
  Assert.equals(ret, {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0})
end

def testDataObjectNullReturn
  ret = @obj.method_with_data_object_null_return
  Assert.equals(nil, ret)
end

def testOverloadedMethods
  @refed_obj.set_string('dog')
  called = false
  ret = @obj.overloaded_method('cat', @refed_obj)
  Assert.equals(ret, 'meth1')
  ret = @obj.overloaded_method('cat', @refed_obj, 12345) { |animal| Assert.equals(animal, 'giraffe') ; called = true }
  Assert.equals(ret, 'meth2')
  Assert.equals(called, true)
  called = false
  # for some reason animal is sometimes equals to giraffe and sometimes empty
  ret = @obj.overloaded_method('cat') { |animal| called = true }
  Assert.equals(ret, 'meth3')
  Assert.equals(called, true)
  called = false
  ret = @obj.overloaded_method('cat', @refed_obj) { |animal| Assert.equals(animal, 'giraffe') ; called = true }
  Assert.equals(ret, 'meth4')
  Assert.equals(called, true)
  ret = @obj.overloaded_method 'cat'
  Assert.equals(ret, 'meth3')
  ret = @obj.overloaded_method('cat', @refed_obj, 12345)
  Assert.equals(ret, 'meth2')
  Assert.argument_error { @obj.overloaded_method {} }
end

def testSuperInterfaces
  @obj.super_method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  Assert.equals(@obj.is_a?(Testmodel::SuperInterface1), true)
  @obj.other_super_method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  Assert.equals(@obj.is_a?(Testmodel::SuperInterface2), true)
end

def testMethodWithGenericReturn
  ret = @obj.method_with_generic_return('JsonObject')
  Assert.equals(ret.class, Hash)
  Assert.equals(ret, {'foo'=>'hello','bar'=>123})
  ret = @obj.method_with_generic_return('JsonArray')
  Assert.equals(ret.class, Array)
  Assert.equals(ret, %w(foo bar wib))
end

def testFluentMethod
  ret = @obj.fluent_method('bar')
  Assert.equals(ret, @obj)
end

def testStaticFactoryMethod
  ret = Testmodel::TestInterface.static_factory_method('bar')
  Assert.equals(ret.class, Testmodel::RefedInterface1)
  Assert.equals(ret.get_string, 'bar')
end

def testMethodWithCachedReturn
  ret = @obj.method_with_cached_return('bar')
  ret2 = @obj.method_with_cached_return('bar')
  Assert.equals ret, ret2
  ret3 = @obj.method_with_cached_return('bar')
  Assert.equals ret, ret3
  Assert.equals ret.get_string, 'bar'
  Assert.equals ret2.get_string, 'bar'
  Assert.equals ret3.get_string, 'bar'
  ret.set_string 'foo'
  Assert.equals ret2.get_string, 'foo'
  Assert.equals ret3.get_string, 'foo'
end

def testMethodWithCachedListReturn
  ret = @obj.method_with_cached_list_return()
  ret2 = @obj.method_with_cached_list_return()
  Assert.equals ret, ret2
  ret3 = @obj.method_with_cached_list_return()
  Assert.equals ret, ret3
  Assert.equals ret.size, 2
  Assert.equals ret[0].get_string, 'foo'
  Assert.equals ret[1].get_string, 'bar'
end

def testJsonReturns
  ret = @obj.method_with_json_object_return
  Assert.equals(ret, {'cheese'=>'stilton'})
  ret = @obj.method_with_json_array_return
  Assert.equals(ret, %w(socks shoes))
end

def testNullJsonReturns
  ret = @obj.method_with_null_json_object_return
  Assert.is_nil(ret)
  ret = @obj.method_with_null_json_array_return
  Assert.is_nil(ret)
end

def testComplexJsonReturns
  ret = @obj.method_with_complex_json_object_return
  Assert.equals ret, {'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}
  ret = @obj.method_with_complex_json_array_return
  Assert.equals ret, [{'foo' => 'hello'}, {'bar' => 'bye'}]
end

def testJsonParams
  @obj.method_with_json_params({'cat' => 'lion', 'cheese' => 'cheddar'}, %w(house spider))
end

def testNullJsonParams
  Assert.argument_error { @obj.method_with_null_json_params(nil, nil) }
end

def testJsonHandlerParams
  count = 0
  @obj.method_with_handler_json(
      Proc.new { |val| Assert.equals(val, {'cheese'=>'stilton'}); count += 1 }) do  |val|
    Assert.equals(val, %w(socks shoes)); count += 1
  end
  Assert.equals(2, count)
end

def testComplexJsonHandlerParams
  count = 0
  @obj.method_with_handler_complex_json(
      Proc.new { |val| Assert.equals(val, {'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}); count += 1 }) do |val|
    Assert.equals(val, [[{'foo' => 'hello'}], [{'bar' => 'bye'}]])
    count += 1
  end
  Assert.equals(2, count)
end

def testJsonHandlerAsyncResultParams
  count = 0
  @obj.method_with_handler_async_result_json_object { |err,val| Assert.is_nil(err); Assert.equals(val, {'cheese'=>'stilton'}); count += 1 }
  @obj.method_with_handler_async_result_json_array { |err,val| Assert.is_nil(err); Assert.equals(val, ['socks','shoes']); count += 1 }
  Assert.equals(2, count)
end

def testNullJsonHandlerAsyncResultParams
  count = 0
  @obj.method_with_handler_async_result_null_json_object { |err,val| Assert.is_nil(err); Assert.is_nil(val); count += 1 }
  @obj.method_with_handler_async_result_null_json_array { |err,val| Assert.is_nil(err); Assert.is_nil(val); count += 1 }
  Assert.equals(2, count)
end

def testEnumParam
  ret = @obj.method_with_enum_param('sausages', :TIM)
  Assert.equals(ret, 'sausagesTIM')
end

def testThrowableParam
  begin
    raise 'the_throwable'
    Assert.fail 'should not be here'
  rescue Exception => t
    ret = @obj.method_with_throwable_param(t)
    Assert.equals(ret, '(RuntimeError) the_throwable')
  end
end

def testSuperMethodOverloadedBySubclass
  Assert.equals(0, @obj.super_method_overloaded_by_subclass)
  Assert.equals(1, @obj.super_method_overloaded_by_subclass('one_arg'))
end

def testEnumReturn
  ret = @obj.method_with_enum_return('JULIEN')
  Assert.equals(:JULIEN, ret)
end

def testComplexJsonHandlerAsyncResultParams
  count = 0
  @obj.method_with_handler_async_result_complex_json_object { |err,val|
    Assert.is_nil(err)
    Assert.equals(val, {'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']})
    count += 1
  }
  @obj.method_with_handler_async_result_complex_json_array { |err,val|
    Assert.is_nil(err)
    Assert.equals(val, [{'foo' => 'hello'}, {'bar' => 'bye'}])
    count += 1
  }
  Assert.equals(2, count)
end

def testThrowableReturn
  ret = @obj.method_with_throwable_return 'bogies'
  Assert.equals(true, ret.is_a?(Exception))
  Assert.equals('bogies', ret.message)
end

def testCustomModule
  my = Acme::MyInterface.create
  test_interface = my.method
  test_interface.method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  sub = my.sub
  ret = sub.reverse "hello"
  Assert.equals ret, "olleh"
end

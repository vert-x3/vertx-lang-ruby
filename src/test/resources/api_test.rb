require 'java'
require 'assert'
require 'set'
require 'testmodel/super_interface1'
require 'testmodel/super_interface2'
require 'testmodel/test_interface'
require 'testmodel/refed_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/generic_refed_interface'
require 'testmodel/factory'
require 'acme/my_interface'

java_import 'io.vertx.codegen.testmodel.TestInterfaceImpl'
java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'

# Instantiate obj
@obj = Testmodel::TestInterface.new(TestInterfaceImpl.new)
@refed_obj = Testmodel::RefedInterface1.new(RefedInterface1Impl.new)

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

def testNullDataObjectParam
  Assert.argument_error { @obj.method_with_null_data_object_param(nil) }
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

def testMethodWithHandlerListAndSet
  count = 0
  @obj.method_with_handler_list_and_set(
      Proc.new { |val| Assert.equals(val, %w(foo bar wibble)); count += 1 },
      Proc.new { |val| Assert.equals(val, [5,12,100]); count += 1 },
      Proc.new { |val| Assert.equals(val, Set.new(%w(foo bar wibble))); count += 1 }) do |val|
    Assert.equals(val, Set.new([5,12,100])); count += 1
  end
  Assert.equals(4, count)
end

def testMethodWithHandlerAsyncResultListAndSet
  count = 0
  @obj.method_with_handler_async_result_list_string { |err,val| Assert.is_nil(err); Assert.equals(val, %w(foo bar wibble)); count += 1 }
  @obj.method_with_handler_async_result_list_integer { |err,val| Assert.is_nil(err); Assert.equals(val, [5,12,100]); count += 1 }
  @obj.method_with_handler_async_result_set_string { |err,val| Assert.is_nil(err); Assert.equals(val, Set.new(%w(foo bar wibble))); count += 1 }
  @obj.method_with_handler_async_result_set_integer { |err,val| Assert.is_nil(err); Assert.equals(val, Set.new([5,12,100])); count += 1 }
  Assert.equals(4, count)
end

def testMethodWithHandlerListVertxGen
  count = 0
  @obj.method_with_handler_list_vertx_gen do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].class, Testmodel::RefedInterface1)
    Assert.equals(val[0].get_string, 'foo')
    Assert.equals(val[1].class, Testmodel::RefedInterface1)
    Assert.equals(val[1].get_string, 'bar')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListAbstractVertxGen
  count = 0
  @obj.method_with_handler_list_abstract_vertx_gen do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].is_a?(Testmodel::RefedInterface2), true)
    Assert.equals(val[0].get_string, 'abstractfoo')
    Assert.equals(val[1].is_a?(Testmodel::RefedInterface2), true)
    Assert.equals(val[1].get_string, 'abstractbar')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListVertxGen
  count = 0
  @obj.method_with_handler_async_result_list_vertx_gen do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].class, Testmodel::RefedInterface1)
    Assert.equals(val[0].get_string, 'foo')
    Assert.equals(val[1].class, Testmodel::RefedInterface1)
    Assert.equals(val[1].get_string, 'bar')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListAbstractVertxGen
  count = 0
  @obj.method_with_handler_async_result_list_abstract_vertx_gen do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].is_a?(Testmodel::RefedInterface2), true)
    Assert.equals(val[0].get_string, 'abstractfoo')
    Assert.equals(val[1].is_a?(Testmodel::RefedInterface2), true)
    Assert.equals(val[1].get_string, 'abstractbar')
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetVertxGen
  count = 0
  @obj.method_with_handler_set_vertx_gen do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 2)
    val.each { |elt| Assert.equals(elt.class, Testmodel::RefedInterface1) }
    Assert.equals(val.map { |o| o.get_string }.to_set, Set.new(%w(foo bar)))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetAbstractVertxGen
  count = 0
  @obj.method_with_handler_set_abstract_vertx_gen do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 2)
    val.each { |elt| Assert.equals(elt.is_a?(Testmodel::RefedInterface2), true) }
    Assert.equals(val.map { |o| o.get_string }.to_set, Set.new(%w(abstractfoo abstractbar)))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetVertxGen
  count = 0
  @obj.method_with_handler_async_result_set_vertx_gen do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 2)
    val.each { |elt| Assert.equals(elt.class, Testmodel::RefedInterface1) }
    Assert.equals(val.map { |o| o.get_string }.to_set, Set.new(%w(foo bar)))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetAbstractVertxGen
  count = 0
  @obj.method_with_handler_async_result_set_abstract_vertx_gen do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 2)
    val.each { |elt| Assert.equals(elt.is_a?(Testmodel::RefedInterface2), true) }
    Assert.equals(val.map { |o| o.get_string }.to_set, Set.new(%w(abstractfoo abstractbar)))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListJsonObject
  count = 0
  @obj.method_with_handler_list_json_object do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].class, Hash)
    Assert.equals(val[0], {'cheese' => 'stilton'})
    Assert.equals(val[1].class, Hash)
    Assert.equals(val[1], {'socks' => 'tartan'})
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListNullJsonObject
  count = 0
  @obj.method_with_handler_list_null_json_object do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListComplexJsonObject
  count = 0
  @obj.method_with_handler_list_complex_json_object do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], {'outer' => {'socks' => 'tartan'}, 'list' => ['yellow', 'blue']})
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListJsonObject
  count = 0
  @obj.method_with_handler_async_result_list_json_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].class, Hash)
    Assert.equals(val[0], {'cheese' => 'stilton'})
    Assert.equals(val[1].class, Hash)
    Assert.equals(val[1], {'socks' => 'tartan'})
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListNullJsonObject
  count = 0
  @obj.method_with_handler_async_result_list_null_json_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListComplexJsonObject
  count = 0
  @obj.method_with_handler_async_result_list_complex_json_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], {'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']})
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetJsonObject
  count = 0
  @obj.method_with_handler_set_json_object do |val|
    Assert.equals(val.class, Set)
    val.each { |elt| Assert.equals(elt.is_a?(Hash), true) }
    Assert.equals(val, Set.new([{'cheese' => 'stilton'},{'socks' => 'tartan'}]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetNullJsonObject
  count = 0
  @obj.method_with_handler_set_null_json_object do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    val.each { |elt| Assert.is_nil(elt) }
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetComplexJsonObject
  count = 0
  @obj.method_with_handler_set_complex_json_object do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    Assert.equals(val, [{'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}].to_set)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetJsonObject
  count = 0
  @obj.method_with_handler_async_result_set_json_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    val.each { |elt| Assert.equals(elt.is_a?(Hash), true) }
    Assert.equals(val, Set.new([{'cheese' => 'stilton'},{'socks' => 'tartan'}]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetNullJsonObject
  count = 0
  @obj.method_with_handler_async_result_set_null_json_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    val.each { |elt| Assert.is_nil(elt) }
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetComplexJsonObject
  count = 0
  @obj.method_with_handler_async_result_set_complex_json_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    Assert.equals(val, [{'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}].to_set)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListJsonArray
  count = 0
  @obj.method_with_handler_list_json_array do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].class, Array)
    Assert.equals(val[0], %w(green blue))
    Assert.equals(val[1].class, Array)
    Assert.equals(val[1], %w(yellow purple))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListNullJsonArray
  count = 0
  @obj.method_with_handler_list_null_json_array do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListJsonArray
  count = 0
  @obj.method_with_handler_async_result_list_json_array do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 2)
    Assert.equals(val[0].class, Array)
    Assert.equals(val[0], %w(green blue))
    Assert.equals(val[1].class, Array)
    Assert.equals(val[1], %w(yellow purple))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListNullJsonArray
  count = 0
  @obj.method_with_handler_async_result_list_null_json_array do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListComplexJsonArray
  count = 0
  @obj.method_with_handler_async_result_list_complex_json_array do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val, [[{'foo' => 'hello'}], [{'bar' => 'bye'}]])
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetJsonArray
  count = 0
  @obj.method_with_handler_set_json_array do |val|
    Assert.equals(val.class, Set)
    val.each { |elt| Assert.equals(elt.is_a?(Array), true) }
    Assert.equals(val, Set.new([%w(green blue), %w(yellow purple)]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetNullJsonArray
  count = 0
  @obj.method_with_handler_set_null_json_array do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    val.each { |elt| Assert.is_nil(elt) }
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetComplexJsonArray
  count = 0
  @obj.method_with_handler_set_complex_json_array do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val, [[{'foo' => 'hello'}], [{'bar' => 'bye'}]].to_set)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetJsonArray
  count = 0
  @obj.method_with_handler_async_result_set_json_array do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    val.each { |elt| Assert.equals(elt.is_a?(Array), true) }
    Assert.equals(val, Set.new([%w(green blue), %w(yellow purple)]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetNullJsonArray
  count = 0
  @obj.method_with_handler_async_result_set_null_json_array do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    val.each { |elt| Assert.is_nil(elt) }
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListComplexJsonArray
  count = 0
  @obj.method_with_handler_list_complex_json_array do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val, [[{'foo' => 'hello'}], [{'bar' => 'bye'}]])
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListDataObject
  count = 0
  @obj.method_with_handler_list_data_object do |val|
    Assert.equals(val.class, Array)
    val.each { |elt| Assert.equals(elt.is_a?(Hash), true) }
    Assert.equals(val[0], {'foo'=>'String 1','bar'=>1,'wibble'=>1.1})
    Assert.equals(val[1], {'foo'=>'String 2','bar'=>2,'wibble'=>2.2})
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerListNullDataObject
  count = 0
  @obj.method_with_handler_list_null_data_object do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetDataObject
  count = 0
  @obj.method_with_handler_set_data_object do |val|
    Assert.equals(val, Set.new([{'foo'=>'String 1','bar'=>1,'wibble'=>1.1},{'foo'=>'String 2','bar'=>2,'wibble'=>2.2}]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerNullSetDataObject
  count = 0
  @obj.method_with_handler_set_null_data_object do |val|
    Assert.equals(val, Set.new([nil]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetComplexJsonArray
  count = 0
  @obj.method_with_handler_async_result_set_complex_json_array do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Set)
    Assert.equals(val, [[{'foo' => 'hello'}], [{'bar' => 'bye'}]].to_set)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListDataObject
  count = 0
  @obj.method_with_handler_async_result_list_data_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    val.each { |elt| Assert.equals(elt.is_a?(Hash), true) }
    Assert.equals(val[0], {'foo'=>'String 1','bar'=>1,'wibble'=>1.1})
    Assert.equals(val[1], {'foo'=>'String 2','bar'=>2,'wibble'=>2.2})
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListNullDataObject
  count = 0
  @obj.method_with_handler_async_result_list_null_data_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Array)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetDataObject
  count = 0
  @obj.method_with_handler_async_result_set_data_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val, Set.new([{'foo'=>'String 1','bar'=>1,'wibble'=>1.1},{'foo'=>'String 2','bar'=>2,'wibble'=>2.2}]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultNullSetDataObject
  count = 0
  @obj.method_with_handler_async_result_set_null_data_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val, Set.new([nil]))
    count += 1
  end
  Assert.equals(1, count)
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

def testMapComplexJsonArrayReturn
  map = @obj.method_with_map_complex_json_array_return {}
  m = map['foo']
  Assert.equals m, [{'foo' => 'hello'}, {'bar' => 'bye'}]
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
  Assert.argument_error { @obj.overloaded_method 'cat' }
  Assert.argument_error { @obj.overloaded_method('cat', @refed_obj, 12345) }
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

def testNullJsonHandlerParams
  count = 0
  @obj.method_with_handler_null_json(
      Proc.new { |val| Assert.is_nil(val); count += 1 }) do |val|
    Assert.is_nil(val); count += 1
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

def testEnumReturn
  ret = @obj.method_with_enum_return('JULIEN')
  Assert.equals(:JULIEN, ret)
end

def testMapReturn
  readLog = []
  writeLog = []
  map = @obj.method_with_map_return{ |op|
    if op =~ /put\([^,]+,[^\)]+\)/ || op =~ /remove\([^\)]+\)/ || op == 'clear()'
      writeLog.push op
    elsif op == 'size()' || op =~ /get\([^\)]+\)/ || op == 'entrySet()'
      readLog.push op
    else
      raise "unsupported #{op}"
    end
  }
  map['foo'] = 'bar'
  Assert.equals writeLog, ['put(foo,bar)']
  readLog.clear
  writeLog.clear
  Assert.equals map['foo'], 'bar'
  Assert.is_not_nil readLog.index('get(foo)')
  Assert.equals writeLog, []
  map['wibble'] = 'quux'
  readLog.clear
  writeLog.clear
  Assert.equals map.size, 2
  Assert.equals map['wibble'], 'quux'
  Assert.is_not_nil readLog.index('size()')
  Assert.equals writeLog, []
  readLog.clear
  writeLog.clear
  map.delete('wibble')
  Assert.equals writeLog, ['remove(wibble)']
  Assert.equals map.size, 1
  map['blah'] = '123'
  key_count = 0
  readLog.clear
  writeLog.clear
  map.each { |k,v|
    if key_count == 0
      Assert.equals k, 'foo'
      Assert.equals v, 'bar'
      key_count += 1
    else
      Assert.equals k, 'blah'
      Assert.equals v, '123'
    end
  }
  Assert.is_not_nil readLog.index('entrySet()')
  Assert.equals writeLog, []
  readLog.clear
  writeLog.clear
  map.clear
  Assert.equals writeLog, ['clear()']
end

def testMapStringReturn
  map = @obj.method_with_map_string_return {}
  val = map['foo']
  Assert.equals val.class, String
  Assert.equals val, 'bar'
  map['juu'] = 'daa'
  Assert.equals map, {'foo'=>'bar','juu'=>'daa'}
  Assert.argument_error { map['wibble'] = 123 }
  Assert.equals map, {'foo'=>'bar','juu'=>'daa'}
end

def testMapJsonObjectReturn
  map = @obj.method_with_map_json_object_return {}
  json = map['foo']
  Assert.equals json.class, Hash
  Assert.equals json['wibble'], 'eek'
  map['bar'] = {'juu'=>'daa'}
  Assert.equals map, {'foo'=>{'wibble'=>'eek'},'bar'=>{'juu'=>'daa'}}
  Assert.argument_error { map['juu'] = 123 }
  Assert.equals map, {'foo'=>{'wibble'=>'eek'},'bar'=>{'juu'=>'daa'}}
end

def testMapComplexJsonObjectReturn
  map = @obj.method_with_map_complex_json_object_return {}
  m = map['foo']
  Assert.equals m, {'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}
end

def testMapJsonArrayReturn
  map = @obj.method_with_map_json_array_return {}
  arr = map['foo']
  Assert.equals arr.class, Array
  Assert.equals arr, ['wibble']
  map['bar'] = ['spidey']
  Assert.equals map, {'foo'=>['wibble'],'bar'=>['spidey']}
  Assert.argument_error { map['juu'] = 123 }
  Assert.equals map, {'foo'=>['wibble'],'bar'=>['spidey']}
end

def testMapLongReturn
  map = @obj.method_with_map_long_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 321
  Assert.equals map, {'foo'=>123,'bar'=>321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>321}
end

def testMapIntegerReturn
  map = @obj.method_with_map_integer_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 321
  Assert.equals map, {'foo'=>123,'bar'=>321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>321}
end

def testMapShortReturn
  map = @obj.method_with_map_short_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 321
  Assert.equals map, {'foo'=>123,'bar'=>321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>321}
end

def testMapByteReturn
  map = @obj.method_with_map_byte_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 12
  Assert.equals map, {'foo'=>123,'bar'=>12}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>12}
end

def testMapCharacterReturn
  map = @obj.method_with_map_character_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 88
  map['bar'] = 89
  Assert.equals map, {'foo'=>88,'bar'=>89}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>88,'bar'=>89}
end

def testMapBooleanReturn
  map = @obj.method_with_map_boolean_return {}
  num = map['foo']
  Assert.equals num.class, TrueClass
  Assert.equals num, true
  map['bar'] = false
  Assert.equals map, {'foo'=>true,'bar'=>false}
  map['juu'] = 'something'
  map['daa'] = nil
  Assert.equals map, {'foo'=>true,'bar'=>false,'juu'=>true,'daa'=>false}
end

def testMapFloatReturn
  map = @obj.method_with_map_float_return {}
  num = map['foo']
  Assert.equals num.class, Float
  Assert.equals num, 0.123
  map['bar'] = 0.321
  Assert.equals map['foo'], 0.123
  Assert.equals map['bar'], 0.321
  Assert.equals map.keys.sort, %w(bar foo)
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map['foo'], 0.123
  Assert.equals map['bar'], 0.321
  Assert.equals map.keys.sort, %w(bar foo)
end

def testMapDoubleReturn
  map = @obj.method_with_map_double_return {}
  num = map['foo']
  Assert.equals num.class, Float
  Assert.equals num, 0.123
  map['bar'] = 0.321
  Assert.equals map, {'foo'=>0.123,'bar'=>0.321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>0.123,'bar'=>0.321}
end

def testMapNullReturn
  map = @obj.method_with_null_map_return
  Assert.is_nil map
end

def testListStringReturn
  ret = @obj.method_with_list_string_return
  Assert.has_class ret, Array
  Assert.equals ret, %w(foo bar wibble)
end

def testListLongReturn
  ret = @obj.method_with_list_long_return
  Assert.has_class ret, Array
  Assert.equals ret, [123,456]
end

def testListJsonObjectReturn
  ret = @obj.method_with_list_json_object_return
  Assert.has_class ret, Array
  Assert.equals ret, [{'foo'=>'bar'},{'blah'=>'eek'}]
end

def testListComplexJsonObjectReturn
  ret = @obj.method_with_list_complex_json_object_return
  Assert.has_class ret, Array
  Assert.equals ret, [{'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}]
end

def testListJsonArrayReturn
  ret = @obj.method_with_list_json_array_return
  Assert.has_class ret, Array
  Assert.equals ret, [['foo'],['blah']]
end

def testListComplexJsonArrayReturn
  ret = @obj.method_with_list_complex_json_array_return
  Assert.has_class ret, Array
  Assert.equals ret, [[{'foo' => 'hello'}],[{'bar' => 'bye'}]]
end

def testListVertxGenReturn
  ret = @obj.method_with_list_vertx_gen_return
  Assert.has_class ret, Array
  Assert.has_class ret[0], Testmodel::RefedInterface1
  Assert.equals ret[0].get_string, 'foo'
  Assert.has_class ret[1], Testmodel::RefedInterface1
  Assert.equals ret[1].get_string, 'bar'
end

def testSetStringReturn
  ret = @obj.method_with_set_string_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new(%w(foo bar wibble))
end

def testSetLongReturn
  ret = @obj.method_with_set_long_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new([123,456])
end

def testSetJsonObjectReturn
  ret = @obj.method_with_set_json_object_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new([{'foo'=>'bar'},{'blah'=>'eek'}])
end

def testSetComplexJsonObjectReturn
  ret = @obj.method_with_set_complex_json_object_return
  Assert.has_class ret, Set
  Assert.equals ret, [{'outer' => {'socks' => 'tartan'}, 'list'=> ['yellow', 'blue']}].to_set
end

def testSetJsonArrayReturn
  ret = @obj.method_with_set_json_array_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new([['foo'],['blah']])
end

def testSetComplexJsonArrayReturn
  ret = @obj.method_with_set_complex_json_array_return
  Assert.has_class ret, Set
  Assert.equals ret, [[{'foo' => 'hello'}], [{'bar' => 'bye'}]].to_set
end

def testSetVertxGenReturn
  ret = @obj.method_with_set_vertx_gen_return
  Assert.has_class ret, Set
  ret.each { |elt| Assert.has_class(elt, Testmodel::RefedInterface1) }
  Assert.equals(ret.map { |o| o.get_string }.to_set, Set.new(%w(foo bar)))
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

def testMethodWithListParams
  @obj.method_with_list_params(
      %w(foo bar),
      [2, 3],
      [12, 13],
      [1234, 1345],
      [123, 456],
      [{:foo=>'bar'}, {:eek=>'wibble'}],
      [['foo'], ['blah']],
      [Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('foo'), Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('bar')],
      [{:foo=>'String 1',:bar=>1,:wibble=>1.1}, {:foo=>'String 2',:bar=>2,:wibble=>2.2}]
  )
  Assert.argument_error { @obj.method_with_list_params(nil, nil, nil, nil, nil, nil, nil, nil) }
end

def testMethodWithSetParams
  @obj.method_with_set_params(
      Set.new(['foo', 'bar']),
      Set.new([2, 3]),
      Set.new([12, 13]),
      Set.new([1234, 1345]),
      Set.new([123, 456]),
      Set.new([{:foo=>'bar'}, {:eek=>'wibble'}]),
      Set.new([['foo'], ['blah']]),
      Set.new([Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('foo'), Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('bar')]),
      Set.new([{:foo=>'String 1',:bar=>1,:wibble=>1.1}, {:foo=>'String 2',:bar=>2,:wibble=>2.2}])
  )
  Assert.argument_error { @obj.method_with_list_params(nil, nil, nil, nil, nil, nil, nil, nil) }
end

def testMethodWithMapParams
  @obj.method_with_map_params(
      {'foo'=>'bar','eek'=>'wibble'},
      {'foo'=>2,'eek'=>3},
      {'foo'=>12,'eek'=>13},
      {'foo'=>1234,'eek'=>1345},
      {'foo'=>123,'eek'=>456},
      {'foo'=>{'foo'=>'bar'},'eek'=>{'eek'=>'wibble'}},
      {'foo'=>['foo'],'eek'=>['blah']},
      {'foo'=>Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('foo'),'eek'=>Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('bar')}
  )
  Assert.argument_error { @obj.method_with_list_params(nil, nil, nil, nil, nil, nil, nil, nil) }
end
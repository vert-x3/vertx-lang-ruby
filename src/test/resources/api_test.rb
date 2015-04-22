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

def test_method_with_basic_params
  @obj.method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar');
end

def test_method_with_basic_boxed_params
  @obj.method_with_basic_boxed_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88);
end

def test_method_with_handler_basic_types
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

def test_method_with_handler_async_result_basic_types
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

def test_method_with_handler_async_result_basic_types_fails
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

def test_method_with_user_types
  @refed_obj.set_string('aardvarks')
  @obj.method_with_user_types(@refed_obj)
end

def test_object_param
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

def test_data_object_param
  data_object = {:foo => 'hello', :bar => 123, :wibble => 1.23}
  @obj.method_with_data_object_param(data_object)
end

def test_method_with_null_data_object_param
  Assert.argument_error { @obj.method_with_null_data_object_param(nil) }
end

def test_method_with_handler_data_object
  count = 0
  @obj.method_with_handler_data_object { |event| Assert.equals(event, {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0}); count += 1 }
  Assert.equals(count, 1)
end

def test_method_with_handler_async_result_data_object
  count = 0
  @obj.method_with_handler_async_result_data_object(false) { |err,val| Assert.is_nil(err); Assert.equals(val, {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0}); count += 1 }
  Assert.equals(count, 1)
end

def test_method_with_handler_async_result_data_object_fails
  count = 0
  @obj.method_with_handler_async_result_data_object(true) { |err,val| Assert.is_nil(val); Assert.is_not_nil(err); Assert.equals(err.message, 'foobar!'); count += 1 }
  Assert.equals(count, 1)
end

def test_method_with_handler_list_and_set
  count = 0
  @obj.method_with_handler_list_and_set(
      Proc.new { |val| Assert.equals(val, %w(foo bar wibble)); count += 1 },
      Proc.new { |val| Assert.equals(val, [5,12,100]); count += 1 },
      Proc.new { |val| Assert.equals(val, Set.new(%w(foo bar wibble))); count += 1 }) do |val|
    Assert.equals(val, Set.new([5,12,100])); count += 1
  end
  Assert.equals(4, count)
end

def test_method_with_handler_async_result_list_and_set
  count = 0
  @obj.method_with_handler_async_result_list_string { |err,val| Assert.is_nil(err); Assert.equals(val, %w(foo bar wibble)); count += 1 }
  @obj.method_with_handler_async_result_list_integer { |err,val| Assert.is_nil(err); Assert.equals(val, [5,12,100]); count += 1 }
  @obj.method_with_handler_async_result_set_string { |err,val| Assert.is_nil(err); Assert.equals(val, Set.new(%w(foo bar wibble))); count += 1 }
  @obj.method_with_handler_async_result_set_integer { |err,val| Assert.is_nil(err); Assert.equals(val, Set.new([5,12,100])); count += 1 }
  Assert.equals(4, count)
end

def test_method_with_handler_list_vertx_gen
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

def test_method_with_handler_list_abstract_vertx_gen
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

def test_method_with_handler_async_result_list_vertx_gen
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

def test_method_with_handler_async_result_list_abstract_vertx_gen
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

def test_method_with_handler_set_vertx_gen
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

def test_method_with_handler_set_abstract_vertx_gen
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

def test_method_with_handler_async_result_set_vertx_gen
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

def test_method_with_handler_async_result_set_abstract_vertx_gen
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

def test_method_with_handler_list_json_object
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

def test_method_with_handler_list_null_json_object
  count = 0
  @obj.method_with_handler_list_null_json_object do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_async_result_handler_list_json_object
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

def test_method_with_handler_async_result_list_null_json_object
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

def test_method_with_handler_set_json_object
  count = 0
  @obj.method_with_handler_set_json_object do |val|
    Assert.equals(val.class, Set)
    val.each { |elt| Assert.equals(elt.is_a?(Hash), true) }
    Assert.equals(val, Set.new([{'cheese' => 'stilton'},{'socks' => 'tartan'}]))
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_set_null_json_object
  count = 0
  @obj.method_with_handler_set_null_json_object do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    val.each { |elt| Assert.is_nil(elt) }
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_async_result_handler_set_json_object
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

def test_method_with_handler_async_result_set_null_json_object
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

def test_method_with_handler_list_json_array
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

def test_method_with_handler_list_null_json_array
  count = 0
  @obj.method_with_handler_list_null_json_array do |val|
    Assert.equals(val.class, Array)
    Assert.equals(val.size, 1)
    Assert.equals(val[0], nil)
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_async_result_handler_list_json_array
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

def test_method_with_handler_async_result_list_null_json_array
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

def test_method_with_handler_set_json_array
  count = 0
  @obj.method_with_handler_set_json_array do |val|
    Assert.equals(val.class, Set)
    val.each { |elt| Assert.equals(elt.is_a?(Array), true) }
    Assert.equals(val, Set.new([%w(green blue), %w(yellow purple)]))
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_set_null_json_array
  count = 0
  @obj.method_with_handler_set_null_json_array do |val|
    Assert.equals(val.class, Set)
    Assert.equals(val.size, 1)
    val.each { |elt| Assert.is_nil(elt) }
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_async_result_handler_set_json_array
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

def test_method_with_handler_async_result_set_null_json_array
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

def test_method_with_handler_user_types
  count = 0
  @obj.method_with_handler_user_types do |val|
    Assert.equals(val.class, Testmodel::RefedInterface1)
    Assert.equals(val.get_string, 'echidnas')
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_async_result_user_types
  count = 0
  @obj.method_with_handler_async_result_user_types do |err,val|
    Assert.is_nil(err)
    Assert.equals(val.class, Testmodel::RefedInterface1)
    Assert.equals(val.get_string, 'cheetahs')
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_concrete_handler_user_type_subtype
  count = 0
  arg = Testmodel::Factory.create_concrete_handler_user_type do |refedObj|
    Assert.equals(refedObj.class, Testmodel::RefedInterface1)
    Assert.equals(refedObj.get_string, 'echidnas')
    count += 1
  end
  @obj.method_with_concrete_handler_user_type_subtype arg
  Assert.equals(1, count)
end

def test_method_with_abstract_handler_user_type_subtype
  count = 0
  arg = Testmodel::Factory.create_abstract_handler_user_type do |refedObj|
    Assert.equals(refedObj.class, Testmodel::RefedInterface1)
    Assert.equals(refedObj.get_string, 'echidnas')
    count += 1
  end
  @obj.method_with_abstract_handler_user_type_subtype arg
  Assert.equals(1, count)
end

def test_method_with_concrete_handler_user_type_subtype_extension
  count = 0
  arg = Testmodel::Factory.create_concrete_handler_user_type_extension do |refedObj|
    Assert.equals(refedObj.class, Testmodel::RefedInterface1)
    Assert.equals(refedObj.get_string, 'echidnas')
    count += 1
  end
  @obj.method_with_concrete_handler_user_type_subtype_extension arg
  Assert.equals(1, count)
end

def test_method_with_handler_void
  count = 0
  @obj.method_with_handler_void do |val|
    Assert.is_nil(val)
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_async_result_void
  count = 0
  @obj.method_with_handler_async_result_void(false) do |err|
    Assert.is_nil(err)
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_async_result_void_fails
  count = 0
  @obj.method_with_handler_async_result_void(true) do |err|
    Assert.is_not_nil err
    Assert.equals(err.message, 'foo!')
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_throwable
  count = 0
  @obj.method_with_handler_throwable do |err|
    Assert.is_not_nil err
    Assert.equals(err.message, 'cheese!')
    count += 1
  end
  Assert.equals(1, count)
end

def test_method_with_handler_generic_user_type
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

def test_method_with_handler_async_result_generic_user_type
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

def test_method_with_generic_param
  @obj.method_with_generic_param 'String', 'foo'
  @obj.method_with_generic_param 'JsonObject', {'foo'=>'hello','bar'=>123}
  @obj.method_with_generic_param 'JsonArray', ['foo', 'bar', 'wib']
end

def test_method_with_generic_handler
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
end

def test_method_with_generic_handler_async_result
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
  @obj.method_with_generic_handler_async_result('JsonArray') { |err,val| Assert.is_nil(err); Assert.equals(val.class, Array); Assert.equals(val, ['foo','bar','wib']); count += 1 }
  Assert.equals(1, count)
end

def test_basic_returns
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
  ret = @obj.method_with_boolean_return
  Assert.equals(ret.class, TrueClass)
  Assert.equals(ret, true)
  ret = @obj.method_with_char_return
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 89)
  ret = @obj.method_with_string_return
  Assert.equals(ret.class, String)
  Assert.equals(ret, 'orangutan')
end

def test_vertx_gen_return
  ret = @obj.method_with_vertx_gen_return
  Assert.equals(ret.class, Testmodel::RefedInterface1)
  Assert.equals(ret.get_string, 'chaffinch')
end

def test_abstract_vertx_gen_return
  ret = @obj.method_with_abstract_vertx_gen_return
  Assert.equals(ret.is_a?(Testmodel::RefedInterface2), true)
  Assert.equals(ret.get_string, 'abstractchaffinch')
end

def test_overloaded_methods
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

def test_super_interfaces
  @obj.super_method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  Assert.equals(@obj.is_a?(Testmodel::SuperInterface1), true)
  @obj.other_super_method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  Assert.equals(@obj.is_a?(Testmodel::SuperInterface2), true)
end

def test_method_with_generic_return
  ret = @obj.method_with_generic_return('JsonObject')
  Assert.equals(ret.class, Hash)
  Assert.equals(ret, {'foo'=>'hello','bar'=>123})
  ret = @obj.method_with_generic_return('JsonArray')
  Assert.equals(ret.class, Array)
  Assert.equals(ret, %w(foo bar wib))
end

def test_fluent_method
  ret = @obj.fluent_method('bar')
  Assert.equals(ret, @obj)
end

def test_static_factory_method
  ret = Testmodel::TestInterface.static_factory_method('bar')
  Assert.equals(ret.class, Testmodel::RefedInterface1)
  Assert.equals(ret.get_string, 'bar')
end

def test_method_with_cached_return
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

def test_json_returns
  ret = @obj.method_with_json_object_return
  Assert.equals(ret, {'cheese'=>'stilton'})
  ret = @obj.method_with_json_array_return
  Assert.equals(ret, %w(socks shoes))
end

def test_null_json_returns
  ret = @obj.method_with_null_json_object_return
  Assert.is_nil(ret)
  ret = @obj.method_with_null_json_array_return
  Assert.is_nil(ret)
end

def test_json_params
  @obj.method_with_json_params({'cat' => 'lion', 'cheese' => 'cheddar'}, %w(house spider))
end

def test_null_json_params
  Assert.argument_error { @obj.method_with_null_json_params(nil, nil) }
end

def test_json_handler_params
  count = 0
  @obj.method_with_handler_json(
      Proc.new { |val| Assert.equals(val, {'cheese'=>'stilton'}); count += 1 }) do  |val|
    Assert.equals(val, %w(socks shoes)); count += 1
  end
  Assert.equals(2, count)
end

def test_null_json_handler_params
  count = 0
  @obj.method_with_handler_null_json(
      Proc.new { |val| Assert.is_nil(val); count += 1 }) do |val|
    Assert.is_nil(val); count += 1
  end
  Assert.equals(2, count)
end

def test_json_handler_async_result_params
  count = 0
  @obj.method_with_handler_async_result_json_object { |err,val| Assert.is_nil(err); Assert.equals(val, {'cheese'=>'stilton'}); count += 1 }
  @obj.method_with_handler_async_result_json_array { |err,val| Assert.is_nil(err); Assert.equals(val, ['socks','shoes']); count += 1 }
  Assert.equals(2, count)
end

def test_null_json_handler_async_result_params
  count = 0
  @obj.method_with_handler_async_result_null_json_object { |err,val| Assert.is_nil(err); Assert.is_nil(val); count += 1 }
  @obj.method_with_handler_async_result_null_json_array { |err,val| Assert.is_nil(err); Assert.is_nil(val); count += 1 }
  Assert.equals(2, count)
end

def test_enum_param
  ret = @obj.method_with_enum_param('sausages', :TIM)
  Assert.equals(ret, 'sausagesTIM')
end

def test_enum_return
  ret = @obj.method_with_enum_return('JULIEN')
  Assert.equals(:JULIEN, ret)
end

def test_map_return
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

def test_map_string_return
  map = @obj.method_with_map_string_return {}
  val = map['foo']
  Assert.equals val.class, String
  Assert.equals val, 'bar'
  map['juu'] = 'daa'
  Assert.equals map, {'foo'=>'bar','juu'=>'daa'}
  Assert.argument_error { map['wibble'] = 123 }
  Assert.equals map, {'foo'=>'bar','juu'=>'daa'}
end

def test_map_json_object_return
  map = @obj.method_with_map_json_object_return {}
  json = map['foo']
  Assert.equals json.class, Hash
  Assert.equals json['wibble'], 'eek'
  map['bar'] = {'juu'=>'daa'}
  Assert.equals map, {'foo'=>{'wibble'=>'eek'},'bar'=>{'juu'=>'daa'}}
  Assert.argument_error { map['juu'] = 123 }
  Assert.equals map, {'foo'=>{'wibble'=>'eek'},'bar'=>{'juu'=>'daa'}}
end

def test_map_json_array_return
  map = @obj.method_with_map_json_array_return {}
  arr = map['foo']
  Assert.equals arr.class, Array
  Assert.equals arr, ['wibble']
  map['bar'] = ['spidey']
  Assert.equals map, {'foo'=>['wibble'],'bar'=>['spidey']}
  Assert.argument_error { map['juu'] = 123 }
  Assert.equals map, {'foo'=>['wibble'],'bar'=>['spidey']}
end

def test_map_long_return
  map = @obj.method_with_map_long_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 321
  Assert.equals map, {'foo'=>123,'bar'=>321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>321}
end

def test_map_integer_return
  map = @obj.method_with_map_integer_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 321
  Assert.equals map, {'foo'=>123,'bar'=>321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>321}
end

def test_map_short_return
  map = @obj.method_with_map_short_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 321
  Assert.equals map, {'foo'=>123,'bar'=>321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>321}
end

def test_map_byte_return
  map = @obj.method_with_map_byte_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 123
  map['bar'] = 12
  Assert.equals map, {'foo'=>123,'bar'=>12}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>123,'bar'=>12}
end

def test_map_character_return
  map = @obj.method_with_map_character_return {}
  num = map['foo']
  Assert.equals num.class, Fixnum
  Assert.equals num, 88
  map['bar'] = 89
  Assert.equals map, {'foo'=>88,'bar'=>89}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>88,'bar'=>89}
end

def test_map_boolean_return
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

def test_map_float_return
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

def test_map_double_return
  map = @obj.method_with_map_double_return {}
  num = map['foo']
  Assert.equals num.class, Float
  Assert.equals num, 0.123
  map['bar'] = 0.321
  Assert.equals map, {'foo'=>0.123,'bar'=>0.321}
  Assert.argument_error { map['juu'] = 'something' }
  Assert.equals map, {'foo'=>0.123,'bar'=>0.321}
end

def test_map_null_return
  map = @obj.method_with_null_map_return
  Assert.is_nil map
end

def test_list_string_return
  ret = @obj.method_with_list_string_return
  Assert.has_class ret, Array
  Assert.equals ret, %w(foo bar wibble)
end

def test_list_long_return
  ret = @obj.method_with_list_long_return
  Assert.has_class ret, Array
  Assert.equals ret, [123,456]
end

def test_list_json_object_return
  ret = @obj.method_with_list_json_object_return
  Assert.has_class ret, Array
  Assert.equals ret, [{'foo'=>'bar'},{'blah'=>'eek'}]
end

def test_list_json_array_return
  ret = @obj.method_with_list_json_array_return
  Assert.has_class ret, Array
  Assert.equals ret, [['foo'],['blah']]
end

def test_list_vertx_gen_return
  ret = @obj.method_with_list_vertx_gen_return
  Assert.has_class ret, Array
  Assert.has_class ret[0], Testmodel::RefedInterface1
  Assert.equals ret[0].get_string, 'foo'
  Assert.has_class ret[1], Testmodel::RefedInterface1
  Assert.equals ret[1].get_string, 'bar'
end

def test_set_string_return
  ret = @obj.method_with_set_string_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new(%w(foo bar wibble))
end

def test_set_long_return
  ret = @obj.method_with_set_long_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new([123,456])
end

def test_set_json_object_return
  ret = @obj.method_with_set_json_object_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new([{'foo'=>'bar'},{'blah'=>'eek'}])
end

def test_set_json_array_return
  ret = @obj.method_with_set_json_array_return
  Assert.has_class ret, Set
  Assert.equals ret, Set.new([['foo'],['blah']])
end

def test_set_vertx_gen_return
  ret = @obj.method_with_set_vertx_gen_return
  Assert.has_class ret, Set
  ret.each { |elt| Assert.has_class(elt, Testmodel::RefedInterface1) }
  Assert.equals(ret.map { |o| o.get_string }.to_set, Set.new(%w(foo bar)))
end

def test_throwable_return
  ret = @obj.method_with_throwable_return 'bogies'
  Assert.equals('bogies', ret.message)
end

def test_custom_module
  my = Acme::MyInterface.create
  test_interface = my.method
  test_interface.method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  sub = my.sub
  ret = sub.reverse "hello"
  Assert.equals ret, "olleh"
end

def test_method_with_list_params
  @obj.method_with_list_params(
    %w(foo bar),
    [2, 3],
    [12, 13],
    [1234, 1345],
    [123, 456],
    [{'foo'=>'bar'}, {'eek'=>'wibble'}],
    [['foo'], ['blah']],
    [Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('foo'), Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('bar')]
  )
  Assert.argument_error { @obj.method_with_list_params(nil, nil, nil, nil, nil, nil, nil, nil) }
end

def test_method_with_set_params
  @obj.method_with_set_params(
      Set.new(['foo', 'bar']),
      Set.new([2, 3]),
      Set.new([12, 13]),
      Set.new([1234, 1345]),
      Set.new([123, 456]),
      Set.new([{'foo'=>'bar'}, {'eek'=>'wibble'}]),
      Set.new([['foo'], ['blah']]),
      Set.new([Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('foo'), Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('bar')])
  )
  Assert.argument_error { @obj.method_with_list_params(nil, nil, nil, nil, nil, nil, nil, nil) }
end

def test_method_with_map_params
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
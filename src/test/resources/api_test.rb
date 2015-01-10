require 'java'
require "assert"
require 'set'
require "testmodel/super_interface1"
require "testmodel/super_interface2"
require "testmodel/test_interface"
require "testmodel/refed_interface1"
require "testmodel/refed_interface2"
require "testmodel/generic_refed_interface"

java_import 'io.vertx.codegen.testmodel.TestInterfaceImpl'
java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'

# Instantiate obj
$obj = Testmodel::TestInterface.new(TestInterfaceImpl.new)
$refed_obj = Testmodel::RefedInterface1.new(RefedInterface1Impl.new)

def test_method_with_basic_params()
  $obj.method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar');
end

def test_method_with_basic_boxed_params()
  $obj.method_with_basic_boxed_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88);
end

def test_method_with_handler_basic_types()
  count = 0
  $obj.method_with_handler_basic_types(
      Proc.new { |val| Assert.assert_equals(val, 123); Assert.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 12345); Assert.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 1234567); Assert.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 1265615234); Assert.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 12.345); Assert.assert_equals(val.class, Float) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 12.34566); Assert.assert_equals(val.class, Float) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, true); Assert.assert_equals(val.class, TrueClass) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 88); Assert.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Assert.assert_equals(val, 'quux!'); Assert.assert_equals(val.class, String) ; count += 1 })
  Assert.assert_equals(count, 9)
end

def test_method_with_handler_async_result_basic_types()
  count = 0
  $obj.method_with_handler_async_result_byte(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 123); Assert.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_short(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 12345); Assert.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_integer(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 1234567); Assert.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_long(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 1265615234); Assert.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_float(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 12.345); Assert.assert_equals(val.class, Float); count += 1 })
  $obj.method_with_handler_async_result_double(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 12.34566); Assert.assert_equals(val.class, Float); count += 1 })
  $obj.method_with_handler_async_result_boolean(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, true); Assert.assert_equals(val.class, TrueClass); count += 1 })
  $obj.method_with_handler_async_result_character(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 88); Assert.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_string(false, Proc.new { |err,val| Assert.assert_nil err; Assert.assert_equals(val, 'quux!'); Assert.assert_equals(val.class, String); count += 1 })
  Assert.assert_equals(count, 9)
end

def test_method_with_handler_async_result_basic_types_fails()
  count = 0
  $obj.method_with_handler_async_result_byte(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_short(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_integer(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_long(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_float(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_double(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_boolean(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_character(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_string(true, Proc.new { |err,val| Assert.assert_nil val; Assert.assert_not_nil err; Assert.assert_equals(err.message, "foobar!"); count += 1 })
  Assert.assert_equals(count, 9)
end

def test_method_with_user_types()
  $refed_obj.set_string("aardvarks")
  $obj.method_with_user_types($refed_obj)
end

def test_object_param()
  json_obj = {:foo => "hello", :bar => 123}
  $obj.method_with_object_param("JsonObject", json_obj)
  json_arr = ["foo", "bar", "wib"]
  $obj.method_with_object_param("JsonArray", json_arr)
end

def test_options_param()
  options = {:foo => "hello", :bar => 123, :wibble => 1.23}
  $obj.method_with_options_param(options)
end

def test_method_with_null_options_param()
  $obj.method_with_null_options_param(nil);
end

def test_method_with_handler_options()
  count = 0
  $obj.method_with_handler_options(Proc.new { |event| Assert.assert_equals(event, {"foo" => "foo", "bar" => 123, "wibble" => 0.0}); count += 1 })
  Assert.assert_equals(count, 1)
end

def test_method_with_handler_async_result_options()
  count = 0
  $obj.method_with_handler_async_result_options(false, Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val, {"foo" => "foo", "bar" => 123, "wibble" => 0.0}); count += 1 })
  Assert.assert_equals(count, 1)
end

def test_method_with_handler_async_result_options_fails()
  count = 0
  $obj.method_with_handler_async_result_options(true, Proc.new { |err,val| Assert.assert_nil(val); Assert.assert_not_nil(err); Assert.assert_equals(err.message, "foobar!"); count += 1 })
  Assert.assert_equals(count, 1)
end

def test_method_with_handler_list_and_set()
  count = 0
  $obj.method_with_handler_list_and_set(
      Proc.new { |val| Assert.assert_equals(val, ["foo","bar","wibble"]); count += 1 },
      Proc.new { |val| Assert.assert_equals(val, [5,12,100]); count += 1 },
      Proc.new { |val| Assert.assert_equals(val, Set.new(["foo","bar","wibble"])); count += 1 },
      Proc.new { |val| Assert.assert_equals(val, Set.new([5,12,100])); count += 1 }
  )
  Assert.assert_equals(4, count)
end

def test_method_with_handler_async_result_list_and_set()
  count = 0
  $obj.method_with_handler_async_result_list_string(Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val, ["foo","bar","wibble"]); count += 1 })
  $obj.method_with_handler_async_result_list_integer(Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val, [5,12,100]); count += 1 })
  $obj.method_with_handler_async_result_set_string(Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val, Set.new(["foo","bar","wibble"])); count += 1 })
  $obj.method_with_handler_async_result_set_integer(Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val, Set.new([5,12,100])); count += 1 })
  Assert.assert_equals(4, count)
end

def test_method_with_handler_list_vertx_gen()
  count = 0
  $obj.method_with_handler_list_vertx_gen(Proc.new { |val|
     Assert.assert_equals(val.class, Array)
     Assert.assert_equals(val.size, 2)
     Assert.assert_equals(val[0].class, Testmodel::RefedInterface1)
     Assert.assert_equals(val[0].get_string, "foo")
     Assert.assert_equals(val[1].class, Testmodel::RefedInterface1)
     Assert.assert_equals(val[1].get_string, "bar")
     count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_list_abstract_vertx_gen()
  count = 0
  $obj.method_with_handler_list_abstract_vertx_gen(Proc.new { |val|
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].is_a?(Testmodel::RefedInterface2), true)
    Assert.assert_equals(val[0].get_string, "abstractfoo")
    Assert.assert_equals(val[1].is_a?(Testmodel::RefedInterface2), true)
    Assert.assert_equals(val[1].get_string, "abstractbar")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_list_vertx_gen()
  count = 0
  $obj.method_with_handler_async_result_list_vertx_gen(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].class, Testmodel::RefedInterface1)
    Assert.assert_equals(val[0].get_string, "foo")
    Assert.assert_equals(val[1].class, Testmodel::RefedInterface1)
    Assert.assert_equals(val[1].get_string, "bar")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_list_abstract_vertx_gen()
  count = 0
  $obj.method_with_handler_async_result_list_abstract_vertx_gen(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].is_a?(Testmodel::RefedInterface2), true)
    Assert.assert_equals(val[0].get_string, "abstractfoo")
    Assert.assert_equals(val[1].is_a?(Testmodel::RefedInterface2), true)
    Assert.assert_equals(val[1].get_string, "abstractbar")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_set_vertx_gen()
  count = 0
  $obj.method_with_handler_set_vertx_gen(Proc.new { |val|
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 2)
    val.each { |elt| Assert.assert_equals(elt.class, Testmodel::RefedInterface1) }
    Assert.assert_equals(val.map { |o| o.get_string }.to_set, Set.new(["foo","bar"]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_set_abstract_vertx_gen()
  count = 0
  $obj.method_with_handler_set_abstract_vertx_gen(Proc.new { |val|
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 2)
    val.each { |elt| Assert.assert_equals(elt.is_a?(Testmodel::RefedInterface2), true) }
    Assert.assert_equals(val.map { |o| o.get_string }.to_set, Set.new(["abstractfoo","abstractbar"]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_set_vertx_gen()
  count = 0
  $obj.method_with_handler_async_result_set_vertx_gen(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 2)
    val.each { |elt| Assert.assert_equals(elt.class, Testmodel::RefedInterface1) }
    Assert.assert_equals(val.map { |o| o.get_string }.to_set, Set.new(["foo","bar"]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_set_abstract_vertx_gen()
  count = 0
  $obj.method_with_handler_async_result_set_abstract_vertx_gen(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 2)
    val.each { |elt| Assert.assert_equals(elt.is_a?(Testmodel::RefedInterface2), true) }
    Assert.assert_equals(val.map { |o| o.get_string }.to_set, Set.new(["abstractfoo","abstractbar"]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_list_json_object()
  count = 0
  $obj.method_with_handler_list_json_object(Proc.new { |val|
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].class, Hash)
    Assert.assert_equals(val[0], {"cheese" => "stilton"})
    Assert.assert_equals(val[1].class, Hash)
    Assert.assert_equals(val[1], {"socks" => "tartan"})
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_list_null_json_object()
  count = 0
  $obj.method_with_handler_list_null_json_object(Proc.new { |val|
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 1)
    Assert.assert_equals(val[0], nil)
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_async_result_handler_list_json_object()
  count = 0
  $obj.method_with_handler_async_result_list_json_object(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].class, Hash)
    Assert.assert_equals(val[0], {"cheese" => "stilton"})
    Assert.assert_equals(val[1].class, Hash)
    Assert.assert_equals(val[1], {"socks" => "tartan"})
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_list_null_json_object()
  count = 0
  $obj.method_with_handler_async_result_list_null_json_object(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 1)
    Assert.assert_equals(val[0], nil)
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_set_json_object()
  count = 0
  $obj.method_with_handler_set_json_object(Proc.new { |val|
    Assert.assert_equals(val.class, Set)
    val.each { |elt| Assert.assert_equals(elt.is_a?(Hash), true) }
    Assert.assert_equals(val, Set.new([{"cheese" => "stilton"},{"socks" => "tartan"}]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_set_null_json_object()
  count = 0
  $obj.method_with_handler_set_null_json_object(Proc.new { |val|
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 1)
    val.each { |elt| Assert.assert_nil(elt) }
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_async_result_handler_set_json_object()
  count = 0
  $obj.method_with_handler_async_result_set_json_object(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Set)
    val.each { |elt| Assert.assert_equals(elt.is_a?(Hash), true) }
    Assert.assert_equals(val, Set.new([{"cheese" => "stilton"},{"socks" => "tartan"}]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_set_null_json_object()
  count = 0
  $obj.method_with_handler_async_result_set_null_json_object(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 1)
    val.each { |elt| Assert.assert_nil(elt) }
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_list_json_array()
  count = 0
  $obj.method_with_handler_list_json_array(Proc.new { |val|
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].class, Array)
    Assert.assert_equals(val[0], ["green","blue"])
    Assert.assert_equals(val[1].class, Array)
    Assert.assert_equals(val[1], ["yellow","purple"])
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_list_null_json_array()
  count = 0
  $obj.method_with_handler_list_null_json_array(Proc.new { |val|
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 1)
    Assert.assert_equals(val[0], nil)
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_async_result_handler_list_json_array()
  count = 0
  $obj.method_with_handler_async_result_list_json_array(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 2)
    Assert.assert_equals(val[0].class, Array)
    Assert.assert_equals(val[0], ["green","blue"])
    Assert.assert_equals(val[1].class, Array)
    Assert.assert_equals(val[1], ["yellow","purple"])
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_list_null_json_array()
  count = 0
  $obj.method_with_handler_async_result_list_null_json_array(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Array)
    Assert.assert_equals(val.size, 1)
    Assert.assert_equals(val[0], nil)
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_set_json_array()
  count = 0
  $obj.method_with_handler_set_json_array(Proc.new { |val|
    Assert.assert_equals(val.class, Set)
    val.each { |elt| Assert.assert_equals(elt.is_a?(Array), true) }
    Assert.assert_equals(val, Set.new([["green","blue"],["yellow","purple"]]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_set_null_json_array()
  count = 0
  $obj.method_with_handler_set_null_json_array(Proc.new { |val|
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 1)
    val.each { |elt| Assert.assert_nil(elt) }
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_async_result_handler_set_json_array()
  count = 0
  $obj.method_with_handler_async_result_set_json_array(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Set)
    val.each { |elt| Assert.assert_equals(elt.is_a?(Array), true) }
    Assert.assert_equals(val, Set.new([["green","blue"],["yellow","purple"]]))
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_set_null_json_array()
  count = 0
  $obj.method_with_handler_async_result_set_null_json_array(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Set)
    Assert.assert_equals(val.size, 1)
    val.each { |elt| Assert.assert_nil(elt) }
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_user_types()
  count = 0
  $obj.method_with_handler_user_types(Proc.new { |val|
    Assert.assert_equals(val.class, Testmodel::RefedInterface1)
    Assert.assert_equals(val.get_string, "echidnas")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_user_types()
  count = 0
  $obj.method_with_handler_async_result_user_types(Proc.new { |err,val|
    Assert.assert_nil(err)
    Assert.assert_equals(val.class, Testmodel::RefedInterface1)
    Assert.assert_equals(val.get_string, "cheetahs")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_void()
  count = 0
  $obj.method_with_handler_void(Proc.new { |val|
    Assert.assert_nil(val)
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_void()
  count = 0
  $obj.method_with_handler_async_result_void(false, Proc.new { |err|
    Assert.assert_nil(err)
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_async_result_void_fails()
  count = 0
  $obj.method_with_handler_async_result_void(true, Proc.new { |err|
    Assert.assert_not_nil err
    Assert.assert_equals(err.message, "foo!")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_throwable()
  count = 0
  $obj.method_with_handler_throwable(Proc.new { |err|
    Assert.assert_not_nil err
    Assert.assert_equals(err.message, "cheese!")
    count += 1
  })
  Assert.assert_equals(1, count)
end

def test_method_with_handler_generic_user_type()
  def run_test(value, &assert)
    count = 0
    $obj.method_with_handler_generic_user_type(value, Proc.new { |refedObj|
      Assert.assert_not_nil(refedObj)
      Assert.assert_equals(refedObj.class, Testmodel::GenericRefedInterface)
      assert.call(refedObj.get_value)
      count += 1
    })
    Assert.assert_equals(1, count)
  end
  run_test("string_value") { |value| Assert.assert_equals(value, "string_value") }
  run_test({"key" => "key_value"}) { |value| Assert.assert_equals(value, {"key" => "key_value"}) }
  run_test(["foo","bar","juu"]) { |value| Assert.assert_equals(value, ["foo","bar","juu"]) }
end

def test_method_with_handler_async_result_generic_user_type()
  def run_test(value, &assert)
    count = 0
    $obj.method_with_handler_async_result_generic_user_type(value, Proc.new { |err,refedObj|
      Assert.assert_nil(err)
      Assert.assert_not_nil(refedObj)
      Assert.assert_equals(refedObj.class, Testmodel::GenericRefedInterface)
      assert.call(refedObj.get_value)
      count += 1
    })
    Assert.assert_equals(1, count)
  end
  run_test("string_value") { |value| Assert.assert_equals(value, "string_value") }
  run_test({"key" => "key_value"}) { |value| Assert.assert_equals(value, {"key" => "key_value"}) }
  run_test(["foo","bar","juu"]) { |value| Assert.assert_equals(value, ["foo","bar","juu"]) }
end

def test_method_with_generic_param()
  $obj.method_with_generic_param "String", "foo"
  $obj.method_with_generic_param "JsonObject", {"foo"=>"hello","bar"=>123}
  $obj.method_with_generic_param "JsonArray", ["foo", "bar", "wib"]
end

def test_method_with_generic_handler()
  count = 0
  $obj.method_with_generic_handler("String", Proc.new { |val| Assert.assert_equals(val.class, String); Assert.assert_equals(val, "foo"); count += 1 })
  Assert.assert_equals(1, count)
  count = 0
  $obj.method_with_generic_handler("Ref", Proc.new { |val| Assert.assert_equals(val.getString, "bar"); count += 1 })
  Assert.assert_equals(1, count)
  count = 0
  $obj.method_with_generic_handler("JsonObject", Proc.new { |val| Assert.assert_equals(val.class, Hash); Assert.assert_equals(val, {"foo"=>"hello","bar"=>123}); count += 1 })
  Assert.assert_equals(1, count)
  count = 0
  $obj.method_with_generic_handler("JsonArray", Proc.new { |val| Assert.assert_equals(val.class, Array); Assert.assert_equals(val, ["foo","bar","wib"]); count += 1 })
  Assert.assert_equals(1, count)
end

def test_method_with_generic_handler_async_result()
  count = 0
  $obj.method_with_generic_handler_async_result("String", Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val.class, String); Assert.assert_equals(val, "foo"); count += 1 })
  Assert.assert_equals(1, count)
  count = 0
  $obj.method_with_generic_handler_async_result("Ref", Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val.getString, "bar"); count += 1 })
  Assert.assert_equals(1, count)
  count = 0
  $obj.method_with_generic_handler_async_result("JsonObject", Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val.class, Hash); Assert.assert_equals(val, {"foo"=>"hello","bar"=>123}); count += 1 })
  Assert.assert_equals(1, count)
  count = 0
  $obj.method_with_generic_handler_async_result("JsonArray", Proc.new { |err,val| Assert.assert_nil(err); Assert.assert_equals(val.class, Array); Assert.assert_equals(val, ["foo","bar","wib"]); count += 1 })
  Assert.assert_equals(1, count)
end

def test_basic_returns()
  ret = $obj.method_with_byte_return
  Assert.assert_equals(ret.class, Fixnum)
  Assert.assert_equals(ret, 123)
  ret = $obj.method_with_short_return
  Assert.assert_equals(ret.class, Fixnum)
  Assert.assert_equals(ret, 12345)
  ret = $obj.method_with_int_return
  Assert.assert_equals(ret.class, Fixnum)
  Assert.assert_equals(ret, 12345464)
  ret = $obj.method_with_long_return
  Assert.assert_equals(ret.class, Fixnum)
  Assert.assert_equals(ret, 65675123)
  ret = $obj.method_with_float_return
  Assert.assert_equals(ret.class, Float)
  Assert.assert_equals(ret, 1.23)
  ret = $obj.method_with_double_return
  Assert.assert_equals(ret.class, Float)
  Assert.assert_equals(ret, 3.34535)
  ret = $obj.method_with_boolean_return
  Assert.assert_equals(ret.class, TrueClass)
  Assert.assert_equals(ret, true)
  ret = $obj.method_with_char_return
  Assert.assert_equals(ret.class, Fixnum)
  Assert.assert_equals(ret, 89)
  ret = $obj.method_with_string_return
  Assert.assert_equals(ret.class, String)
  Assert.assert_equals(ret, "orangutan")
end

def test_vertx_gen_return()
  ret = $obj.method_with_vertx_gen_return
  Assert.assert_equals(ret.class, Testmodel::RefedInterface1)
  Assert.assert_equals(ret.get_string, "chaffinch")
end

def test_abstract_vertx_gen_return()
  ret = $obj.method_with_abstract_vertx_gen_return
  Assert.assert_equals(ret.is_a?(Testmodel::RefedInterface2), true)
  Assert.assert_equals(ret.get_string, "abstractchaffinch")
end

def test_overloaded_methods()
  $refed_obj.set_string("dog")
  called = false
  ret = $obj.overloaded_method("cat", $refed_obj)
  Assert.assert_equals(ret, "meth1")
  ret = $obj.overloaded_method("cat", $refed_obj, 12345, Proc.new { |animal| Assert.assert_equals(animal, "giraffe") ; called = true })
  Assert.assert_equals(ret, "meth2")
  Assert.assert_equals(called, true)
  called = false
  # for some reason animal is sometimes equals to giraffe and sometimes empty
  ret = $obj.overloaded_method("cat", Proc.new { |animal| called = true })
  Assert.assert_equals(ret, "meth3")
  Assert.assert_equals(called, true)
  called = false
  ret = $obj.overloaded_method("cat", $refed_obj, Proc.new { |animal| Assert.assert_equals(animal, "giraffe") ; called = true })
  Assert.assert_equals(ret, "meth4")
  Assert.assert_equals(called, true)
  Assert.assert_argument_error { $obj.overloaded_method "cat" }
  Assert.assert_argument_error { $obj.overloaded_method "cat", $refed_obj, 12345, Proc.new({}) }
  Assert.assert_argument_error { $obj.overloaded_method Proc.new({}) }
end

def test_super_interfaces()
  $obj.super_method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  Assert.assert_equals($obj.is_a?(Testmodel::SuperInterface1), true)
  $obj.other_super_method_with_basic_params(123, 12345, 1234567, 1265615234, 12.345, 12.34566, true, 88, 'foobar')
  Assert.assert_equals($obj.is_a?(Testmodel::SuperInterface2), true)
end

def test_method_with_generic_return()
  ret = $obj.method_with_generic_return("JsonObject")
  Assert.assert_equals(ret.class, Hash)
  Assert.assert_equals(ret, {"foo"=>"hello","bar"=>123})
  ret = $obj.method_with_generic_return("JsonArray")
  Assert.assert_equals(ret.class, Array)
  Assert.assert_equals(ret, ["foo","bar","wib"])
end

def test_fluent_method()
  ret = $obj.fluent_method("bar")
  Assert.assert_equals(ret, $obj)
end

def test_static_factory_method()
  ret = Testmodel::TestInterface.static_factory_method("bar")
  Assert.assert_equals(ret.class, Testmodel::RefedInterface1)
  Assert.assert_equals(ret.get_string, "bar")
end

def test_method_with_cached_return()
  ret = $obj.method_with_cached_return("bar")
  ret2 = $obj.method_with_cached_return("bar")
  Assert.assert_equals ret, ret2
  ret3 = $obj.method_with_cached_return("bar")
  Assert.assert_equals ret, ret3
  Assert.assert_equals ret.get_string, "bar"
  Assert.assert_equals ret2.get_string, "bar"
  Assert.assert_equals ret3.get_string, "bar"
  ret.set_string "foo"
  Assert.assert_equals ret2.get_string, "foo"
  Assert.assert_equals ret3.get_string, "foo"
end
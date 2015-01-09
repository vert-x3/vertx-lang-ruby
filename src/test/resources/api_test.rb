require 'java'
require "test"
require 'set'
require "testmodel/test_interface"
require "testmodel/refed_interface1"

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
      Proc.new { |val| Test.assert_equals(val, 123); Test.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 12345); Test.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 1234567); Test.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 1265615234); Test.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 12.345); Test.assert_equals(val.class, Float) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 12.34566); Test.assert_equals(val.class, Float) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, true); Test.assert_equals(val.class, TrueClass) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 88); Test.assert_equals(val.class, Fixnum) ; count += 1 },
      Proc.new { |val| Test.assert_equals(val, 'quux!'); Test.assert_equals(val.class, String) ; count += 1 })
  Test.assert_equals(count, 9)
end

def test_method_with_handler_async_result_basic_types()
  count = 0
  $obj.method_with_handler_async_result_byte(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 123); Test.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_short(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 12345); Test.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_integer(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 1234567); Test.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_long(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 1265615234); Test.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_float(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 12.345); Test.assert_equals(val.class, Float); count += 1 })
  $obj.method_with_handler_async_result_double(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 12.34566); Test.assert_equals(val.class, Float); count += 1 })
  $obj.method_with_handler_async_result_boolean(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, true); Test.assert_equals(val.class, TrueClass); count += 1 })
  $obj.method_with_handler_async_result_character(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 88); Test.assert_equals(val.class, Fixnum); count += 1 })
  $obj.method_with_handler_async_result_string(false, Proc.new { |err,val| Test.assert_nil err; Test.assert_equals(val, 'quux!'); Test.assert_equals(val.class, String); count += 1 })
  Test.assert_equals(count, 9)
end

def test_method_with_handler_async_result_basic_types_fails()
  count = 0
  $obj.method_with_handler_async_result_byte(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_short(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_integer(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_long(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_float(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_double(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_boolean(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_character(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  $obj.method_with_handler_async_result_string(true, Proc.new { |err,val| Test.assert_nil val; Test.assert_not_nil err; Test.assert_equals(err.message, "foobar!"); count += 1 })
  Test.assert_equals(count, 9)
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
  $obj.method_with_handler_options(Proc.new { |event| Test.assert_equals(event, {"foo" => "foo", "bar" => 123, "wibble" => 0.0}); count += 1 })
  Test.assert_equals(count, 1)
end

def test_method_with_handler_async_result_options()
  count = 0
  $obj.method_with_handler_async_result_options(false, Proc.new { |err,val| Test.assert_nil(err); Test.assert_equals(val, {"foo" => "foo", "bar" => 123, "wibble" => 0.0}); count += 1 })
  Test.assert_equals(count, 1)
end

def test_method_with_handler_async_result_options_fails()
  count = 0
  $obj.method_with_handler_async_result_options(true, Proc.new { |err,val| Test.assert_nil(val); Test.assert_not_nil(err); Test.assert_equals(err.message, "foobar!"); count += 1 })
  Test.assert_equals(count, 1)
end

def test_method_with_handler_list_and_set()
  count = 0
  $obj.method_with_handler_list_and_set(
      Proc.new { |val| Test.assert_equals(val, ["foo","bar","wibble"]); count += 1 },
      Proc.new { |val| Test.assert_equals(val, [5,12,100]); count += 1 },
      Proc.new { |val| Test.assert_equals(val, Set.new(["foo","bar","wibble"])); count += 1 },
      Proc.new { |val| Test.assert_equals(val, Set.new([5,12,100])); count += 1 }
  )
  Test.assert_equals(4, count)
end

def test_method_with_handler_async_result_list_and_set()
  count = 0
  $obj.method_with_handler_async_result_list_string(Proc.new { |err,val| Test.assert_nil(err); Test.assert_equals(val, ["foo","bar","wibble"]); count += 1 })
  $obj.method_with_handler_async_result_list_integer(Proc.new { |err,val| Test.assert_nil(err); Test.assert_equals(val, [5,12,100]); count += 1 })
  $obj.method_with_handler_async_result_set_string(Proc.new { |err,val| Test.assert_nil(err); Test.assert_equals(val, Set.new(["foo","bar","wibble"])); count += 1 })
  $obj.method_with_handler_async_result_set_integer(Proc.new { |err,val| Test.assert_nil(err); Test.assert_equals(val, Set.new([5,12,100])); count += 1 })
  Test.assert_equals(4, count)
end

def test_method_with_handler_list_vertx_gen()
  count = 0
  $obj.method_with_handler_list_vertx_gen(Proc.new { |val|
     Test.assert_equals(val.size, 2)
     Test.assert_equals(val[0].class, Testmodel::RefedInterface1)
     Test.assert_equals(val[0].get_string, "foo")
     Test.assert_equals(val[1].class, Testmodel::RefedInterface1)
     Test.assert_equals(val[1].get_string, "bar")
     count += 1
  })
  Test.assert_equals(1, count)
end
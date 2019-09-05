require 'java'
require 'assert'
require 'set'
require 'testmodel/json_mapper_tck'

java_import 'io.vertx.codegen.testmodel.JsonMapperTCKImpl'

# Instantiate obj
@jcodec_tck = Testmodel::JsonMapperTCK.new(JsonMapperTCKImpl.new)

# Integer

def testMethodWithTypeToIntegerParam
  @jcodec_tck.method_with_type_to_integer_param(1)
end

def testMethodWithListOfTypeToIntegerParam
  @jcodec_tck.method_with_list_of_type_to_integer_param([1, 2])
end

def testMethodWithSetOfTypeToIntegerParam
  @jcodec_tck.method_with_set_of_type_to_integer_param(Set.new([1, 2]))
end

def testMethodWithMapOfTypeToIntegerParam
  @jcodec_tck.method_with_map_of_type_to_integer_param({"a"=>1, "b"=>2})
end

def testMethodWithTypeToIntegerReturn
  Assert.equals(@jcodec_tck.method_with_type_to_integer_return(), 1)
end

def testMethodWithListOfTypeToIntegerReturn
  Assert.equals(@jcodec_tck.method_with_list_of_type_to_integer_return(), [1, 2])
end

def testMethodWithSetOfTypeToIntegerReturn
  Assert.equals(@jcodec_tck.method_with_set_of_type_to_integer_return(), Set.new([1, 2]))
end

def testMethodWithMapOfTypeToIntegerReturn
  Assert.equals(@jcodec_tck.method_with_map_of_type_to_integer_return(), {"a"=>1, "b"=>2})
end

def testMethodWithHandlerTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_type_to_integer_param do |val|
    Assert.equals(val, 1)
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerListOfTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_list_of_type_to_integer_param do |val|
    Assert.equals(val, [1, 2])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerSetOfTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_set_of_type_to_integer_param do |val|
    Assert.equals(val, Set.new([1, 2]))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerMapOfTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_map_of_type_to_integer_param do |val|
    Assert.equals(val, {"a"=>1, "b"=>2})
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_type_to_integer_param do |err, val|
    Assert.equals(val, 1)
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultListOfTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_list_of_type_to_integer_param do |err, val|
    Assert.equals(val, [1, 2])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultSetOfTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_set_of_type_to_integer_param do |err, val|
    Assert.equals(val, Set.new([1, 2]))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultMapOfTypeToIntegerParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_map_of_type_to_integer_param do |err, val|
    Assert.equals(val, {"a"=>1, "b"=>2})
    count += 1
  end
  Assert.equals(count, 1)
end

## String

def testMethodWithTypeToStringParam
  @jcodec_tck.method_with_type_to_string_param('2019-04-03T14:30:05.083+02:00[Europe/Rome]')
end

def testMethodWithListOfTypeToStringParam
  @jcodec_tck.method_with_list_of_type_to_string_param(['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]'])
end

def testMethodWithSetOfTypeToStringParam
  @jcodec_tck.method_with_set_of_type_to_string_param(Set.new(['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]']))
end

def testMethodWithMapOfTypeToStringParam
  @jcodec_tck.method_with_map_of_type_to_string_param({"a"=>'2019-04-03T14:30:05.083+02:00[Europe/Rome]', "b"=>'2019-04-04T14:30:05.083+02:00[Europe/Rome]'})
end

def testMethodWithTypeToStringReturn
  Assert.equals(@jcodec_tck.method_with_type_to_string_return(), '2019-04-03T14:30:05.083+02:00[Europe/Rome]')
end

def testMethodWithListOfTypeToStringReturn
  Assert.equals(@jcodec_tck.method_with_list_of_type_to_string_return(), ['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]'])
end

def testMethodWithSetOfTypeToStringReturn
  Assert.equals(@jcodec_tck.method_with_set_of_type_to_string_return(), Set.new(['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]']))
end

def testMethodWithMapOfTypeToStringReturn
  Assert.equals(@jcodec_tck.method_with_map_of_type_to_string_return(), {"a"=>'2019-04-03T14:30:05.083+02:00[Europe/Rome]', "b"=>'2019-04-04T14:30:05.083+02:00[Europe/Rome]'})
end

def testMethodWithHandlerTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_type_to_string_param do |val|
    Assert.equals(val, '2019-04-03T14:30:05.083+02:00[Europe/Rome]')
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerListOfTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_list_of_type_to_string_param do |val|
    Assert.equals(val, ['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]'])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerSetOfTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_set_of_type_to_string_param do |val|
    Assert.equals(val, Set.new(['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]']))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerMapOfTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_map_of_type_to_string_param do |val|
    Assert.equals(val, {"a"=>'2019-04-03T14:30:05.083+02:00[Europe/Rome]', "b"=>'2019-04-04T14:30:05.083+02:00[Europe/Rome]'})
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_type_to_string_param do |err, val|
    Assert.equals(val, '2019-04-03T14:30:05.083+02:00[Europe/Rome]')
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultListOfTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_list_of_type_to_string_param do |err, val|
    Assert.equals(val, ['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]'])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultSetOfTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_set_of_type_to_string_param do |err, val|
    Assert.equals(val, Set.new(['2019-04-03T14:30:05.083+02:00[Europe/Rome]', '2019-04-04T14:30:05.083+02:00[Europe/Rome]']))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultMapOfTypeToStringParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_map_of_type_to_string_param do |err, val|
    Assert.equals(val, {"a"=>'2019-04-03T14:30:05.083+02:00[Europe/Rome]', "b"=>'2019-04-04T14:30:05.083+02:00[Europe/Rome]'})
    count += 1
  end
  Assert.equals(count, 1)
end

# Json Array

def testMethodWithTypeToJsonArrayParam
  @jcodec_tck.method_with_type_to_json_array_param([1, 2, 3])
end

def testMethodWithListOfTypeToJsonArrayParam
  @jcodec_tck.method_with_list_of_type_to_json_array_param([[1, 2, 3], [4, 5, 6]])
end

def testMethodWithSetOfTypeToJsonArrayParam
  @jcodec_tck.method_with_set_of_type_to_json_array_param(Set.new([[1, 2, 3], [4, 5, 6]]))
end

def testMethodWithMapOfTypeToJsonArrayParam
  @jcodec_tck.method_with_map_of_type_to_json_array_param({"a"=>[1, 2, 3], "b"=>[4, 5, 6]})
end

def testMethodWithTypeToJsonArrayReturn
  Assert.equals(@jcodec_tck.method_with_type_to_json_array_return(), [1, 2, 3])
end

def testMethodWithListOfTypeToJsonArrayReturn
  Assert.equals(@jcodec_tck.method_with_list_of_type_to_json_array_return(), [[1, 2, 3], [4, 5, 6]])
end

def testMethodWithSetOfTypeToJsonArrayReturn
  Assert.equals(@jcodec_tck.method_with_set_of_type_to_json_array_return(), Set.new([[1, 2, 3], [4, 5, 6]]))
end

def testMethodWithMapOfTypeToJsonArrayReturn
  Assert.equals(@jcodec_tck.method_with_map_of_type_to_json_array_return(), {"a"=>[1, 2, 3], "b"=>[4, 5, 6]})
end

def testMethodWithHandlerTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_type_to_json_array_param do |val|
    Assert.equals(val, [1, 2, 3])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerListOfTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_list_of_type_to_json_array_param do |val|
    Assert.equals(val, [[1, 2, 3], [4, 5, 6]])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerSetOfTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_set_of_type_to_json_array_param do |val|
    Assert.equals(val, Set.new([[1, 2, 3], [4, 5, 6]]))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerMapOfTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_map_of_type_to_json_array_param do |val|
    Assert.equals(val, {"a"=>[1, 2, 3], "b"=>[4, 5, 6]})
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_type_to_json_array_param do |err, val|
    Assert.equals(val, [1, 2, 3])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultListOfTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_list_of_type_to_json_array_param do |err, val|
    Assert.equals(val, [[1, 2, 3], [4, 5, 6]])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultSetOfTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_set_of_type_to_json_array_param do |err, val|
    Assert.equals(val, Set.new([[1, 2, 3], [4, 5, 6]]))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultMapOfTypeToJsonArrayParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_map_of_type_to_json_array_param do |err, val|
    Assert.equals(val, {"a"=>[1, 2, 3], "b"=>[4, 5, 6]})
    count += 1
  end
  Assert.equals(count, 1)
end

## Json Object

def testMethodWithTypeToJsonObjectParam
  @jcodec_tck.method_with_type_to_json_object_param({"v"=>1})
end

def testMethodWithListOfTypeToJsonObjectParam
  @jcodec_tck.method_with_list_of_type_to_json_object_param([{"v"=>1}, {"v"=>2}])
end

def testMethodWithSetOfTypeToJsonObjectParam
  @jcodec_tck.method_with_set_of_type_to_json_object_param(Set.new([{"v"=>1}, {"v"=>2}]))
end

def testMethodWithMapOfTypeToJsonObjectParam
  @jcodec_tck.method_with_map_of_type_to_json_object_param({"a"=>{"v"=>1}, "b"=>{"v"=>2}})
end

def testMethodWithTypeToJsonObjectReturn
  Assert.equals(@jcodec_tck.method_with_type_to_json_object_return(), {"v"=>1})
end

def testMethodWithListOfTypeToJsonObjectReturn
  Assert.equals(@jcodec_tck.method_with_list_of_type_to_json_object_return(), [{"v"=>1}, {"v"=>2}])
end

def testMethodWithSetOfTypeToJsonObjectReturn
  Assert.equals(@jcodec_tck.method_with_set_of_type_to_json_object_return(), Set.new([{"v"=>1}, {"v"=>2}]))
end

def testMethodWithMapOfTypeToJsonObjectReturn
  Assert.equals(@jcodec_tck.method_with_map_of_type_to_json_object_return(), {"a"=>{"v"=>1}, "b"=>{"v"=>2}})
end

def testMethodWithHandlerTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_type_to_json_object_param do |val|
    Assert.equals(val, {"v"=>1})
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerListOfTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_list_of_type_to_json_object_param do |val|
    Assert.equals(val, [{"v"=>1}, {"v"=>2}])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerSetOfTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_set_of_type_to_json_object_param do |val|
    Assert.equals(val, Set.new([{"v"=>1}, {"v"=>2}]))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerMapOfTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_map_of_type_to_json_object_param do |val|
    Assert.equals(val, {"a"=>{"v"=>1}, "b"=>{"v"=>2}})
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_type_to_json_object_param do |err, val|
    Assert.equals(val, {"v"=>1})
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultListOfTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_list_of_type_to_json_object_param do |err, val|
    Assert.equals(val, [{"v"=>1}, {"v"=>2}])
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultSetOfTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_set_of_type_to_json_object_param do |err, val|
    Assert.equals(val, Set.new([{"v"=>1}, {"v"=>2}]))
    count += 1
  end
  Assert.equals(count, 1)
end

def testMethodWithHandlerAsyncResultMapOfTypeToJsonObjectParam
  count = 0
  @jcodec_tck.method_with_handler_async_result_map_of_type_to_json_object_param do |err, val|
    Assert.equals(val, {"a"=>{"v"=>1}, "b"=>{"v"=>2}})
    count += 1
  end
  Assert.equals(count, 1)
end

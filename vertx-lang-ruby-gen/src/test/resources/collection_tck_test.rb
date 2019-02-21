require 'java'
require 'assert'
require 'set'
require 'testmodel/super_interface1'
require 'testmodel/super_interface2'
require 'testmodel/test_interface'
require 'testmodel/test_interface'
require 'testmodel/data_object_tck'
require 'testmodel/collection_tck'
require 'testmodel/refed_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/generic_refed_interface'
require 'testmodel/factory'
require 'acme/my_interface'

java_import 'io.vertx.codegen.testmodel.CollectionTCKImpl'
java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'

@obj = Testmodel::CollectionTCK.new(CollectionTCKImpl.new)

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

def testMethodWithHandlerSetDataObject
  count = 0
  @obj.method_with_handler_set_data_object do |val|
    Assert.equals(val, Set.new([{'foo'=>'String 1','bar'=>1,'wibble'=>1.1},{'foo'=>'String 2','bar'=>2,'wibble'=>2.2}]))
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

def testMethodWithHandlerAsyncResultSetDataObject
  count = 0
  @obj.method_with_handler_async_result_set_data_object do |err,val|
    Assert.is_nil(err)
    Assert.equals(val, Set.new([{'foo'=>'String 1','bar'=>1,'wibble'=>1.1},{'foo'=>'String 2','bar'=>2,'wibble'=>2.2}]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMapReturn
  readLog = []
  writeLog = []
  map = @obj.method_with_map_string_return{ |op|
    if op =~ /put\([^,]+,[^\)]+\)/ || op =~ /remove\([^\)]+\)/ || op == 'clear()'
      writeLog.push op
    elsif op == 'size()' || op =~ /get\([^\)]+\)/ || op == 'entrySet()'
      readLog.push op
    else
      raise "unsupported #{op}"
    end
  }
  Assert.equals writeLog, ['put(foo,bar)']
  writeLog.clear
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

def testMapVertxGenReturn
  map = @obj.method_with_map_vertx_gen_return {}
  ret = map['foo']
  Assert.has_class ret, Testmodel::RefedInterface1
  Assert.equals ret.get_string, 'foo'
end

def testMapDataObjectReturn
  map = @obj.method_with_map_data_object_return {}
  ret = map['foo']
  Assert.equals(ret, {'foo'=>'String 1','bar'=>1,'wibble'=>1.1})
end

def testMapEnumReturn
  map = @obj.method_with_map_enum_return {}
  ret = map['foo']
  Assert.equals(ret, :JULIEN)
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

def testMapObjectReturn
  map = @obj.method_with_map_object_return {}
  Assert.equals map['string'].class, String
  Assert.equals map['string'], 'foo'
  Assert.equals map['integer'].class, Fixnum
  Assert.equals map['integer'], 4
  Assert.equals map['float'].class, Float
  Assert.equals map['float'], 3.4
  Assert.equals map['boolean'].class, TrueClass
  Assert.equals map['boolean'], true
  Assert.equals map['object'].class, Hash
  Assert.equals map['object']['wibble'], 'eek'
  Assert.equals map['array'].class, Array
  Assert.equals map['array'][0], 'one'
  Assert.equals map['array'][1], 2
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

def testListDataObjectReturn
  ret = @obj.method_with_list_data_object_return
  Assert.equals(ret.class, Array)
  ret.each { |elt| Assert.equals(elt.is_a?(Hash), true) }
  Assert.equals(ret[0], {'foo'=>'String 1','bar'=>1,'wibble'=>1.1})
  Assert.equals(ret[1], {'foo'=>'String 2','bar'=>2,'wibble'=>2.2})
end

def testListEnumReturn
  ret = @obj.method_with_list_enum_return
  Assert.equals(ret.class, Array)
  Assert.equals(ret[0], :JULIEN)
  Assert.equals(ret[1], :TIM)
end

def testListObjectReturn
  ret = @obj.method_with_list_object_return
  Assert.equals ret[0].class, String
  Assert.equals ret[0], 'foo'
  Assert.equals ret[1].class, Fixnum
  Assert.equals ret[1], 4
  Assert.equals ret[2].class, Float
  Assert.equals ret[2], 3.4
  Assert.equals ret[3].class, TrueClass
  Assert.equals ret[3], true
  Assert.equals ret[4].class, Hash
  Assert.equals ret[4]['wibble'], 'eek'
  Assert.equals ret[5].class, Array
  Assert.equals ret[5][0], 'one'
  Assert.equals ret[5][1], 2
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

def testSetDataObjectReturn
  ret = @obj.method_with_set_data_object_return
  Assert.equals(ret, Set.new([{'foo'=>'String 1','bar'=>1,'wibble'=>1.1},{'foo'=>'String 2','bar'=>2,'wibble'=>2.2}]))
end

def testSetEnumReturn
  ret = @obj.method_with_set_enum_return
  Assert.equals(ret, Set.new([:JULIEN,:TIM]))
end

def testSetObjectReturn
  ret = @obj.method_with_set_object_return
  ret = ret.to_a
  Assert.equals ret[0].class, String
  Assert.equals ret[0], 'foo'
  Assert.equals ret[1].class, Fixnum
  Assert.equals ret[1], 4
  Assert.equals ret[2].class, Float
  Assert.equals ret[2], 3.4
  Assert.equals ret[3].class, TrueClass
  Assert.equals ret[3], true
  Assert.equals ret[4].class, Hash
  Assert.equals ret[4]['wibble'], 'eek'
  Assert.equals ret[5].class, Array
  Assert.equals ret[5][0], 'one'
  Assert.equals ret[5][1], 2
end

def testMapComplexJsonArrayReturn
  map = @obj.method_with_map_complex_json_array_return {}
  m = map['foo']
  Assert.equals m, [{'foo' => 'hello'}, {'bar' => 'bye'}]
end

def testMethodWithHandlerListEnum
  count = 0
  @obj.method_with_handler_list_enum do |val|
    Assert.equals(val, [:TIM,:JULIEN])
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerSetEnum
  count = 0
  @obj.method_with_handler_set_enum do |val|
    Assert.equals(val, Set.new([:TIM,:JULIEN]))
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultListEnum
  count = 0
  @obj.method_with_handler_async_result_list_enum do |err,val|
    Assert.is_nil(err)
    Assert.equals(val, [:TIM,:JULIEN])
    count += 1
  end
  Assert.equals(1, count)
end

def testMethodWithHandlerAsyncResultSetEnum
  count = 0
  @obj.method_with_handler_async_result_set_enum do |err,val|
    Assert.is_nil(err)
    Assert.equals(val, Set.new([:TIM,:JULIEN]))
    count += 1
  end
  Assert.equals(1, count)
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
      [{:foo=>'String 1',:bar=>1,:wibble=>1.1}, {:foo=>'String 2',:bar=>2,:wibble=>2.2}],
      ['JULIEN','TIM'],
      ['foo',4,3.4,true,{'wibble'=>'eek'},['one',2]]
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
      Set.new([{:foo=>'String 1',:bar=>1,:wibble=>1.1}, {:foo=>'String 2',:bar=>2,:wibble=>2.2}]),
      Set.new(['TIM','JULIEN']),
      Set.new(['foo',4,3.4,true,{'wibble'=>'eek'},['one',2]])
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
      {'foo'=>Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('foo'),'eek'=>Testmodel::RefedInterface1.new(RefedInterface1Impl.new).set_string('bar')},
      {'foo'=>{:foo=>'String 1',:bar=>1,:wibble=>1.1}},
      {'foo'=>'JULIEN'},
      {'string'=>'foo','integer'=>4,'float'=>3.4,'boolean'=>true,'object'=>{'wibble'=>'eek'},'array'=>['one',2]}
  )
  Assert.argument_error { @obj.method_with_list_params(nil, nil, nil, nil, nil, nil, nil, nil) }
end

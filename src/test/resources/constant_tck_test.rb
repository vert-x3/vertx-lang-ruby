require 'java'
require 'assert'
require 'set'
require 'testmodel/constant_tck'
require 'testmodel/super_interface1'
require 'testmodel/super_interface2'
require 'testmodel/test_interface'
require 'testmodel/data_object_tck'
require 'testmodel/refed_interface1'
require 'testmodel/refed_interface2'
require 'testmodel/generic_refed_interface'
require 'testmodel/factory'
require 'acme/my_interface'

def testBasic
  ret = Testmodel::ConstantTCK.BYTE
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 123)
  ret = Testmodel::ConstantTCK.BOXED_BYTE
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 123)
  ret = Testmodel::ConstantTCK.SHORT
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 12345)
  ret = Testmodel::ConstantTCK.BOXED_SHORT
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 12345)
  ret = Testmodel::ConstantTCK.BOXED_INT
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 12345464)
  ret = Testmodel::ConstantTCK.INT
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 12345464)
  ret = Testmodel::ConstantTCK.LONG
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 65675123)
  ret = Testmodel::ConstantTCK.BOXED_LONG
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 65675123)
  ret = Testmodel::ConstantTCK.FLOAT
  Assert.equals(ret.class, Float)
  Assert.equals(ret, 1.23)
  ret = Testmodel::ConstantTCK.BOXED_FLOAT
  Assert.equals(ret.class, Float)
  Assert.equals(ret, 1.23)
  ret = Testmodel::ConstantTCK.DOUBLE
  Assert.equals(ret.class, Float)
  Assert.equals(ret, 3.34535)
  ret = Testmodel::ConstantTCK.BOXED_DOUBLE
  Assert.equals(ret.class, Float)
  Assert.equals(ret, 3.34535)
  ret = Testmodel::ConstantTCK.BOOLEAN
  Assert.equals(ret.class, TrueClass)
  Assert.equals(ret, true)
  ret = Testmodel::ConstantTCK.BOXED_BOOLEAN
  Assert.equals(ret.class, TrueClass)
  Assert.equals(ret, true)
  ret = Testmodel::ConstantTCK.CHAR
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 89)
  ret = Testmodel::ConstantTCK.BOXED_CHAR
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 89)
  ret = Testmodel::ConstantTCK.STRING
  Assert.equals(ret.class, String)
  Assert.equals(ret, 'orangutan')
end

def testVertxGen
  ret = Testmodel::ConstantTCK.VERTX_GEN
  Assert.equals(ret.class, Testmodel::RefedInterface1)
  Assert.equals(ret.get_string, 'chaffinch')
end

def testDataObject
  ret = Testmodel::ConstantTCK.DATA_OBJECT
  Assert.equals(ret, {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0})
end

def testJson
  ret = Testmodel::ConstantTCK.JSON_OBJECT
  Assert.equals(ret, {'cheese'=>'stilton'})
  ret = Testmodel::ConstantTCK.JSON_ARRAY
  Assert.equals(ret, %w(socks shoes))
end

def testEnum
  ret = Testmodel::ConstantTCK.ENUM
  Assert.equals(:JULIEN, ret)
end

def testThrowable
  ret = Testmodel::ConstantTCK.THROWABLE
  Assert.equals(true, ret.is_a?(Exception))
  Assert.equals('test', ret.message)
end

def testObject
  ret = Testmodel::ConstantTCK.OBJECT
  Assert.equals(ret.class, Fixnum)
  Assert.equals(ret, 4)
end

def testNullable
  ret = Testmodel::ConstantTCK.NULLABLE_NON_NULL
  Assert.equals(ret.class, Testmodel::RefedInterface1)
  Assert.equals(ret.get_string, 'chaffinch')
  ret = Testmodel::ConstantTCK.NULLABLE_NULL
  Assert.equals(ret, nil)
end


def checkArray(array, clazz)
  Assert.equals(array.class, Array)
  Assert.equals(array.size, 1)
  elt = array[0]
  Assert.equals(elt.class, clazz)
  elt
end

def testList
  Assert.equals(checkArray(Testmodel::ConstantTCK.BYTE_LIST, Fixnum), 123)
  Assert.equals(checkArray(Testmodel::ConstantTCK.SHORT_LIST, Fixnum), 12345)
  Assert.equals(checkArray(Testmodel::ConstantTCK.INT_LIST, Fixnum), 12345464)
  Assert.equals(checkArray(Testmodel::ConstantTCK.LONG_LIST, Fixnum), 65675123)
  Assert.equals(checkArray(Testmodel::ConstantTCK.FLOAT_LIST, Float), 1.23)
  Assert.equals(checkArray(Testmodel::ConstantTCK.DOUBLE_LIST, Float), 3.34535)
  Assert.equals(checkArray(Testmodel::ConstantTCK.BOOLEAN_LIST, TrueClass), true)
  Assert.equals(checkArray(Testmodel::ConstantTCK.CHAR_LIST, Fixnum), 89)
  Assert.equals(checkArray(Testmodel::ConstantTCK.STRING_LIST, String), 'orangutan')
  Assert.equals(checkArray(Testmodel::ConstantTCK.VERTX_GEN_LIST, Testmodel::RefedInterface1).get_string, 'chaffinch')
  Assert.equals(checkArray(Testmodel::ConstantTCK.JSON_OBJECT_LIST, Hash), {'cheese'=>'stilton'})
  Assert.equals(checkArray(Testmodel::ConstantTCK.JSON_ARRAY_LIST, Array), %w(socks shoes))
  Assert.equals(checkArray(Testmodel::ConstantTCK.DATA_OBJECT_LIST, Hash), {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0})
  Assert.equals(checkArray(Testmodel::ConstantTCK.ENUM_LIST, Symbol), :JULIEN)
end

def checkSet(set, clazz)
  Assert.equals(set.class, Set)
  Assert.equals(set.size, 1)
  elt = set.to_a[0]
  Assert.equals(elt.class, clazz)
  elt
end

def testSet
  Assert.equals(checkSet(Testmodel::ConstantTCK.BYTE_SET, Fixnum), 123)
  Assert.equals(checkSet(Testmodel::ConstantTCK.SHORT_SET, Fixnum), 12345)
  Assert.equals(checkSet(Testmodel::ConstantTCK.INT_SET, Fixnum), 12345464)
  Assert.equals(checkSet(Testmodel::ConstantTCK.LONG_SET, Fixnum), 65675123)
  Assert.equals(checkSet(Testmodel::ConstantTCK.FLOAT_SET, Float), 1.23)
  Assert.equals(checkSet(Testmodel::ConstantTCK.DOUBLE_SET, Float), 3.34535)
  Assert.equals(checkSet(Testmodel::ConstantTCK.BOOLEAN_SET, TrueClass), true)
  Assert.equals(checkSet(Testmodel::ConstantTCK.CHAR_SET, Fixnum), 89)
  Assert.equals(checkSet(Testmodel::ConstantTCK.STRING_SET, String), 'orangutan')
  Assert.equals(checkSet(Testmodel::ConstantTCK.VERTX_GEN_SET, Testmodel::RefedInterface1).get_string, 'chaffinch')
  Assert.equals(checkSet(Testmodel::ConstantTCK.JSON_OBJECT_SET, Hash), {'cheese'=>'stilton'})
  Assert.equals(checkSet(Testmodel::ConstantTCK.JSON_ARRAY_SET, Array), %w(socks shoes))
  Assert.equals(checkSet(Testmodel::ConstantTCK.DATA_OBJECT_SET, Hash), {'foo' => 'foo', 'bar' => 123, 'wibble' => 0.0})
  Assert.equals(checkSet(Testmodel::ConstantTCK.ENUM_SET, Symbol), :JULIEN)
end

def checkMap(map, clazz)
  Assert.equals(map.size, 1)
  elt = map['foo']
  Assert.equals(elt.class, clazz)
  elt
end

def testMap
  Assert.equals(checkMap(Testmodel::ConstantTCK.BYTE_MAP, Fixnum), 123)
  Assert.equals(checkMap(Testmodel::ConstantTCK.SHORT_MAP, Fixnum), 12345)
  Assert.equals(checkMap(Testmodel::ConstantTCK.INT_MAP, Fixnum), 12345464)
  Assert.equals(checkMap(Testmodel::ConstantTCK.LONG_MAP, Fixnum), 65675123)
  Assert.equals(checkMap(Testmodel::ConstantTCK.FLOAT_MAP, Float), 1.23)
  Assert.equals(checkMap(Testmodel::ConstantTCK.DOUBLE_MAP, Float), 3.34535)
  Assert.equals(checkMap(Testmodel::ConstantTCK.BOOLEAN_MAP, TrueClass), true)
  Assert.equals(checkMap(Testmodel::ConstantTCK.CHAR_MAP, Fixnum), 89)
  Assert.equals(checkMap(Testmodel::ConstantTCK.STRING_MAP, String), 'orangutan')
  Assert.equals(checkMap(Testmodel::ConstantTCK.JSON_OBJECT_MAP, Hash), {'cheese'=>'stilton'})
  Assert.equals(checkMap(Testmodel::ConstantTCK.JSON_ARRAY_MAP, Array), %w(socks shoes))
end

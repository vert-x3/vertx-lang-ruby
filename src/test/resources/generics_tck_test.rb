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

def testMethodWithUserTypeParameterizedReturn
  ret = @obj.method_with_user_type_parameterized_return
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
  ret = @obj.method_with_class_type_parameterized_return(Testmodel::RefedInterface1)
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.is_not_nil val.j_del
  Assert.equals(val.get_string, 'foo')

  ret = @obj.method_with_class_type_parameterized_return(Hash)
  Assert.is_not_nil ret.j_del
  val = ret.get_value
  Assert.equals val.class, Hash
  Assert.equals(val['cheese'], 'stilton')
end

def testMethodWithHandlerClassTypeParameterized
  count = 0
  @obj.method_with_handler_user_type_parameterized do |ret|
    Assert.is_not_nil ret.j_del
    val = ret.get_value
    Assert.is_not_nil val.j_del
    Assert.equals(val.get_string, 'foo')
    count += 1
  end
  Assert.equals(count, 1)
end

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

java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'
java_import 'io.vertx.codegen.testmodel.DataObjectTCKImpl'

# Instantiate obj
@dobj_tck = Testmodel::DataObjectTCK.new(DataObjectTCKImpl.new)

def testMethodWithOnlyJsonObjectConstructorDataObject
  data_object = {:foo => 'bar'}
  @dobj_tck.method_with_only_json_object_constructor_data_object(data_object)
end

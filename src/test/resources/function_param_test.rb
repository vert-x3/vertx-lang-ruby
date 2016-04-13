require 'java'
require 'assert'
require 'set'
require 'testmodel/function_param_tck'
require 'testmodel/refed_interface1'

java_import 'io.vertx.codegen.testmodel.FunctionParamTCKImpl'
java_import 'io.vertx.codegen.testmodel.RefedInterface1Impl'

# Instantiate obj
@obj = Testmodel::FunctionParamTCK.new(FunctionParamTCKImpl.new)
@refed_obj = Testmodel::RefedInterface1.new(RefedInterface1Impl.new)

def testBasicParam
  ret = @obj.method_with_basic_param(
    Proc.new { |arg| Assert.equals(arg, 100); "ok0" },
    Proc.new { |arg| Assert.equals(arg, 1000); "ok1" },
    Proc.new { |arg| Assert.equals(arg, 100000); "ok2" },
    Proc.new { |arg| Assert.equals(arg, 10000000000); "ok3" },
    Proc.new { |arg| Assert.equals(arg, 3.5); "ok4" },
    Proc.new { |arg| Assert.equals(arg, 0.01); "ok5" },
    Proc.new { |arg| Assert.equals(arg, true); "ok6" },
    Proc.new { |arg| Assert.equals(arg, 70); "ok7" }
  ) do |arg|
      Assert.equals(arg, "wibble"); "ok8"
    end
  Assert.equals(ret, ["ok0","ok1","ok2","ok3","ok4","ok5","ok6","ok7","ok8"])
end

def testJsonParam
  ret = @obj.method_with_json_param(
    Proc.new { |arg| Assert.equals(arg, {"one"=>1,"two"=>2,"three"=>3}); "ok0" }
  ) do |arg|
      Assert.equals(arg, ["one","two","three"]); "ok1"
    end
  Assert.equals(ret, ["ok0","ok1"])
end

def testUserTypeParam
  ret = @obj.method_with_user_type_param(@refed_obj) do |arg|
      arg.set_string("foobarjuu")
      Assert.equals(arg.get_string(), "foobarjuu")
      "ok"
    end
  Assert.equals(ret, "ok")
end

def testObjectParam
  Assert.equals(@obj.method_with_object_param(123) do |arg|
    Assert.equals(arg, 123)
    "ok"
  end, "ok")
  Assert.equals(@obj.method_with_object_param("the-string-arg") do |arg|
    Assert.equals(arg, "the-string-arg")
    "ok"
  end, "ok")
end

def testDataObjectParam
  Assert.equals(@obj.method_with_data_object_param() do |arg|
    Assert.equals(arg["foo"], "foo_value")
    Assert.equals(arg["bar"], 3)
    Assert.equals(arg["wibble"], 0.01)
    "ok"
  end, "ok")
end

def testEnumParam
  Assert.equals(@obj.method_with_enum_param() do |arg|
    Assert.equals(arg, :TIM)
    "ok"
  end, "ok")
end

def testListParam
  Assert.equals(@obj.method_with_list_param() do |arg|
    Assert.equals(arg, ["one","two","three"])
    "ok"
  end, "ok")
end

def testSetParam
  Assert.equals(@obj.method_with_set_param() do |arg|
    Assert.equals(arg, Set.new(["one","two","three"]))
    "ok"
  end, "ok")
end

def testMapParam
  Assert.equals(@obj.method_with_map_param() do |arg|
    Assert.equals(arg, {"one"=>"one","two"=>"two","three"=>"three"})
    "ok"
  end, "ok")
end

def testGenericParam
  Assert.equals(@obj.method_with_generic_param(123) do |arg|
    Assert.equals(arg, 123)
    "ok"
  end, "ok")
  Assert.equals(@obj.method_with_generic_param("the-string-arg") do |arg|
    Assert.equals(arg, "the-string-arg")
    "ok"
  end, "ok")
end

def testGenericUserTypeParam
  Assert.equals(@obj.method_with_generic_user_type_param(123) do |arg|
    Assert.equals(arg.get_value(), 123)
    "ok"
  end, "ok")
  Assert.equals(@obj.method_with_generic_user_type_param("the-string-arg") do |arg|
    Assert.equals(arg.get_value(), "the-string-arg")
    "ok"
  end, "ok")
end

def testNullableListParam
  # Cannot pass because nullable return is not implemented
end

def testBasicReturn
  ret = @obj.method_with_basic_return(
    Proc.new { |arg| 10 },
    Proc.new { |arg| 1000 },
    Proc.new { |arg| 100000 },
    Proc.new { |arg| 10000000000 },
    Proc.new { |arg| 0.01 },
    Proc.new { |arg| 0.00001 },
    Proc.new { |arg| true },
    Proc.new { |arg| 67 }
  ) do |arg|
      "the-return"
    end
  Assert.equals(ret, "ok")
end

def testJsonReturn
  ret = @obj.method_with_json_return(
    Proc.new { |arg| { "foo":"foo_value", "bar":10, "wibble":0.1 } }
  ) do |arg|
      ["one", "two", "three"]
    end
  Assert.equals(ret, "ok")
end

def testObjectReturn
  ret = @obj.method_with_object_return() do |arg|
      case arg
      when 0
        "the-string"
      when 1
        123
      when 2
        true
      when 3
        { "foo"=>"foo_value" }
      when 4
        ["foo", "bar"]
      else
        nil
      end
    end
  Assert.equals(ret, "ok")
end

def testDataObjectReturn
  ret = @obj.method_with_data_object_return() do |arg|
      { "foo"=>"wasabi","bar"=>6,"wibble"=>0.01 }
    end
  Assert.equals(ret, "ok")
end

def testEnumReturn
  ret = @obj.method_with_enum_return() do |arg|
      "NICK"
    end
  Assert.equals(ret, "ok")
end

def testListReturn
  ret = @obj.method_with_list_return() do |arg|
      ["one", "two", "three"]
    end
  Assert.equals(ret, "ok")
end

def testSetReturn
  ret = @obj.method_with_set_return() do |arg|
      Set.new(["one", "two", "three"])
    end
  Assert.equals(ret, "ok")
end

def testMapReturn
  ret = @obj.method_with_map_return() do |arg|
      {"one"=>"one", "two"=>"two", "three"=>"three"}
    end
  Assert.equals(ret, "ok")
end

def testGenericReturn
  ret = @obj.method_with_generic_return() do |arg|
      case arg
      when 0
        "the-string"
      when 1
        123
      when 2
        true
      when 3
        { "foo"=>"foo_value" }
      when 4
        ["foo", "bar"]
      else
        nil
      end
    end
  Assert.equals(ret, "ok")
end

def testGenericUserTypeReturn
  ret = @obj.method_with_generic_user_type_return() do |arg|
      arg
    end
  Assert.equals(ret, "ok")
end

def testNullableListReturn
  # Cannot pass because nullable return is not implemented
end

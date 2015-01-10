require 'java'
require "assert"
require 'ruby-codegen/linear_overloaded_methods'
require 'ruby-codegen/multi_overloaded_methods'
require 'ruby-codegen/super_mixin'
require 'ruby-codegen/mixin'
require 'ruby-codegen/class_with_mixin'

java_import 'io.vertx.test.support.LinearOverloadedMethodsImpl'
java_import 'io.vertx.test.support.MultiOverloadedMethodsImpl'
java_import 'io.vertx.test.support.ClassWithMixinImpl'

def test_linear_overload
  def create
    impl = LinearOverloadedMethodsImpl.new
    RubyCodegen::LinearOverloadedMethods.new impl
  end

  obj = create
  obj.method
  Assert.assert_equals(obj.j_del.getCalled, 'method()')

  obj = create
  obj.method "first_value"
  Assert.assert_equals(obj.j_del.getCalled, 'method(first_value)')

  obj = create
  Assert.assert_argument_error { obj.method "first_value", "second_value" }
  Assert.assert_equals(obj.j_del.getCalled, nil)

  obj = create
  obj.method "first_value", "second_value", "third_value"
  Assert.assert_equals(obj.j_del.getCalled, 'method(first_value,second_value,third_value)')

  obj = create
  obj.method "first_value", "second_value", "third_value", "forth_value"
  Assert.assert_equals(obj.j_del.getCalled, 'method(first_value,second_value,third_value,forth_value)')

end

def test_multi_overload
  def create
    impl = MultiOverloadedMethodsImpl.new
    RubyCodegen::MultiOverloadedMethods.new impl
  end

  obj = create
  obj.method
  Assert.assert_equals(obj.j_del.getCalled, 'method()')

  obj = create
  obj.method "foo_value"
  Assert.assert_equals(obj.j_del.getCalled, 'method(foo=foo_value)')

  obj = create
  Assert.assert_argument_error { obj.method 123 }
  Assert.assert_equals(obj.j_del.getCalled, nil)

  obj = create
  obj.method 123, true
  Assert.assert_equals(obj.j_del.getCalled, 'method(bar=123,juu=true)')

  obj = create
  Assert.assert_argument_error { obj.method 123, 'some_string' }
  Assert.assert_equals(obj.j_del.getCalled, nil)

end

def test_mixin_inheritance
  impl = ClassWithMixinImpl.new
  obj = RubyCodegen::ClassWithMixin.new impl
  Assert.assert_equals(obj.is_a?(RubyCodegen::ClassWithMixin), true)
  Assert.assert_equals(obj.is_a?(RubyCodegen::Mixin), true)
  Assert.assert_equals(obj.is_a?(RubyCodegen::SuperMixin), true)

end
require 'java'
require "assert"
require 'ruby-codegen/linear_overloaded_methods'
require 'ruby-codegen/multi_overloaded_methods'
require 'ruby-codegen/super_mixin'
require 'ruby-codegen/mixin'
require 'ruby-codegen/class_with_mixin'
require 'ruby-codegen/reserved_word_params'

java_import 'io.vertx.test.support.LinearOverloadedMethodsImpl'
java_import 'io.vertx.test.support.MultiOverloadedMethodsImpl'
java_import 'io.vertx.test.support.ClassWithMixinImpl'
java_import 'io.vertx.test.support.ReferencingTypeImpl'
java_import 'io.vertx.test.support.ReferencingTypeImpl'
java_import 'io.vertx.test.support.ReservedWordParamsImpl'

def test_linear_overload
  def create
    impl = LinearOverloadedMethodsImpl.new
    RubyCodegen::LinearOverloadedMethods.new impl
  end

  obj = create
  obj.method
  Assert.equals(obj.j_del.getCalled, 'method()')

  obj = create
  obj.method 'first_value'
  Assert.equals(obj.j_del.getCalled, 'method(first_value)')

  obj = create
  Assert.argument_error { obj.method 'first_value', 'second_value' }
  Assert.equals(obj.j_del.getCalled, nil)

  obj = create
  obj.method 'first_value', 'second_value', 'third_value'
  Assert.equals(obj.j_del.getCalled, 'method(first_value,second_value,third_value)')

  obj = create
  obj.method 'first_value', 'second_value', "third_value", 'forth_value'
  Assert.equals(obj.j_del.getCalled, 'method(first_value,second_value,third_value,forth_value)')

end

def test_multi_overload
  def create
    impl = MultiOverloadedMethodsImpl.new
    RubyCodegen::MultiOverloadedMethods.new impl
  end

  obj = create
  obj.method
  Assert.equals(obj.j_del.getCalled, 'method()')

  obj = create
  obj.method 'foo_value'
  Assert.equals(obj.j_del.getCalled, 'method(foo=foo_value)')

  obj = create
  Assert.argument_error { obj.method 123 }
  Assert.equals(obj.j_del.getCalled, nil)

  obj = create
  obj.method 123, true
  Assert.equals(obj.j_del.getCalled, 'method(bar=123,juu=true)')

  obj = create
  Assert.argument_error { obj.method 123, 'some_string' }
  Assert.equals(obj.j_del.getCalled, nil)

end

def test_mixin_inheritance
  impl = ClassWithMixinImpl.new
  obj = RubyCodegen::ClassWithMixin.new impl
  Assert.equals(obj.is_a?(RubyCodegen::ClassWithMixin), true)
  Assert.equals(obj.is_a?(RubyCodegen::Mixin), true)
  Assert.equals(obj.is_a?(RubyCodegen::SuperMixin), true)
end

def test_include
  begin
    RubyCodegen::ReferencedType
    raise "We should not reference RubyCodegen::ReferencedType"
  rescue NameError
    # ignore
  end
  require 'ruby-codegen/referencing_type'
  obj = RubyCodegen::ReferencingType.new(ReferencingTypeImpl.new)
  referenced = obj.get_referenced
  Assert.equals referenced.some_method, 'someMethodValue'
end

def test_reserved_words
  obj = RubyCodegen::ReservedWordParams.new(ReservedWordParamsImpl.new)
  ret = obj.method("a", "b", "c", "d", "e",
                   "f", "g", "h", "i", "j",
                   "k", "l", "m", "n", "o",
                   "p", "q", "r", "s", "t",
                   "u", "v", "w", "x", "y")
  Assert.equals ret, "abcdefghijklmnopqrstuvwxy"
end
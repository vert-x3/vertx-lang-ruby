require 'java'
require "assert"
require 'ruby-codegen/linear_overloaded_methods'
require 'ruby-codegen/multi_overloaded_methods'
require 'ruby-codegen/super_mixin'
require 'ruby-codegen/mixin'
require 'ruby-codegen/class_with_mixin'
require 'ruby-codegen/reserved_word_params'
require 'ruby-codegen/method_with_closure'
require 'ruby-codegen/overload_with_options'

java_import 'io.vertx.test.support.LinearOverloadedMethodsImpl'
java_import 'io.vertx.test.support.MultiOverloadedMethodsImpl'
java_import 'io.vertx.test.support.ClassWithMixinImpl'
java_import 'io.vertx.test.support.ReferencingTypeImpl'
java_import 'io.vertx.test.support.ReferencingTypeImpl'
java_import 'io.vertx.test.support.ReservedWordParamsImpl'
java_import 'io.vertx.test.support.MethodWithClosureImpl'
java_import 'io.vertx.test.support.OverloadWithOptionsImpl'

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

def create_multi_overload
  impl = MultiOverloadedMethodsImpl.new
  RubyCodegen::MultiOverloadedMethods.new impl
end

def test_multi_overload

  obj = create_multi_overload
  obj.method
  Assert.equals(obj.j_del.getCalled, 'method()')

  obj = create_multi_overload
  obj.method 'foo_value'
  Assert.equals(obj.j_del.getCalled, 'method(foo=foo_value)')

  obj = create_multi_overload
  Assert.argument_error { obj.method 123 }
  Assert.equals(obj.j_del.getCalled, nil)

  obj = create_multi_overload
  obj.method 123, true
  Assert.equals(obj.j_del.getCalled, 'method(bar=123,juu=true)')

  obj = create_multi_overload
  Assert.argument_error { obj.method 123, 'some_string' }
  Assert.equals(obj.j_del.getCalled, nil)

end

def test_multi_overload_optional_handler

  obj = create_multi_overload
  list = []
  obj.optional_handler('foo_value_with_handler') { |event| list.push event }
  Assert.equals(obj.j_del.getCalled, 'optionalHandler(foo=foo_value_with_handler,bar)')
  Assert.equals(list, ['the_event'])

  obj = create_multi_overload
  list = []
  obj.optional_handler 'foo_value_with_int', 4
  Assert.equals(obj.j_del.getCalled, 'optionalHandler(foo=foo_value_with_int,bar=4)')
  Assert.equals(list, [])

  obj = create_multi_overload
  list = []
  obj.optional_handler 'foo_value_with_boolean', true
  Assert.equals(obj.j_del.getCalled, 'optionalHandler(foo=foo_value_with_boolean,juu=true)')
  Assert.equals(list, [])

  Assert.argument_error { obj.optional_handler }
  Assert.argument_error { obj.optional_handler('the_string', 3) { |event| } }
  Assert.argument_error { obj.optional_handler('the_string', true) { |event| } }

end

def test_multi_overload_handlers

  obj = create_multi_overload
  list = Hash.new
  obj.handlers { |event| list[:foo]=event }
  Assert.equals(obj.j_del.getCalled, 'handlers(foo)')
  Assert.equals(list, {:foo=>'foo_event'})

  obj = create_multi_overload
  list = Hash.new
  obj.handlers(Proc.new { |event| list[:foo]=event }) { |event| list[:bar]=event }
  Assert.equals(obj.j_del.getCalled, 'handlers(foo,bar)')
  Assert.equals(list, {:foo=>'foo_event',:bar=>'bar_event'})

  obj = create_multi_overload
  list = Hash.new
  obj.handlers(Proc.new { |event| list[:foo]=event }, Proc.new { |event| list[:bar]=event }) { |event| list[:juu]=event }
  Assert.equals(obj.j_del.getCalled, 'handlers(foo,bar,juu)')
  Assert.equals(list, {:foo=>'foo_event',:bar=>'bar_event',:juu=>'juu_event'})

  Assert.argument_error { obj.handlers }
  Assert.argument_error { obj.handlers Proc.new({}), Proc.new({}), Proc.new({})  }
  Assert.argument_error { obj.handlers Proc.new({}), Proc.new({}), 'a'  }
  Assert.argument_error { obj.handlers(Proc.new({}), Proc.new({}), 'a') {}  }

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
  ret = obj.method('a', 'b', 'c', 'd', 'e',
                   'f', 'g', 'h', 'i', 'j',
                   'k', 'l', 'm', 'n', 'o',
                   'p', 'q', 'r', 's', 't',
                   'u', 'v', 'w', 'x', 'y')
  Assert.equals ret, 'abcdefghijklmnopqrstuvwxy'
end

def test_closure_callback
  impl = MethodWithClosureImpl.new
  obj = RubyCodegen::MethodWithClosure.new(impl)
  obj.do_something
  Assert.equals impl.getCalled, 'doSomething()'
  obj.do_something 'arg_value'
  Assert.equals impl.getCalled, 'doSomething(arg_value)'
  val = nil
  obj.do_something('arg_value') { |event| val = event }
  Assert.equals val, 'the_callback_payload'
  Assert.equals impl.getCalled, 'doSomething(arg_value,callback)'
end

def test_overload_with_options
  impl = OverloadWithOptionsImpl.new
  obj = RubyCodegen::OverloadWithOptions.new(impl)
  obj.method
  Assert.equals impl.getCalled, 'method()'
end
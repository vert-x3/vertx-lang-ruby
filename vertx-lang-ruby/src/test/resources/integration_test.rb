require 'java'
require 'assert'
require 'set'
require 'ruby-codegen/helper'

def test_multi_map_names
  map = RubyCodegen::Helper.get_multi_map
  actual = Set.new
  map.names.each { |name| actual.add(name) }
  Assert.equals actual, Set.new(%w(foo bar))
end
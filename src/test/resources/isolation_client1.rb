$test_global = 1

Java::IoVertxTestLangJruby::IsolationTest.registerCallback do
  puts "HELLO #{$test_global}"
end
if $test_global == nil
  $test_global = 1
end

Java::IoVertxTestLangJruby::IsolationTest.registerCallback do
  $test_global
end
if $test_global == nil
  $test_global = 1
end

Java::IoVertxTestLangRuby::IsolationTest.registerCallback do
  $test_global
end
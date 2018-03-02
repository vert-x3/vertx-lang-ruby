if defined?(test_local).nil?
  test_local = 1
else
  test_local += 1
end
Java::IoVertxTestLangRuby::IsolationTest.registerCallback { test_local }

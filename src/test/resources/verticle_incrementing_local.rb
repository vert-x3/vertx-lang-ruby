if defined?(test_local).nil?
  test_local = 1
else
  test_local += 1
end
Java::IoVertxTestLangJruby::IsolationTest.registerCallback { test_local }

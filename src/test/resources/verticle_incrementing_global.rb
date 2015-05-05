if $global_var == nil
  $global_var = 1
else
  $global_var += 1
end
Java::IoVertxTestLangRuby::IsolationTest.registerCallback { $global_var }

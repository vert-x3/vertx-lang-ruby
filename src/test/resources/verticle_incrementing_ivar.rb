if @test_ivar == nil
  @test_ivar = 1
else
  @test_ivar += 1
end
Java::IoVertxTestLangRuby::IsolationTest.registerCallback { @test_ivar }

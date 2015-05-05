if @test_ivar == nil
  @test_ivar = 1
else
  @test_ivar += 1
end
Java::IoVertxTestLangJruby::IsolationTest.registerCallback { @test_ivar }

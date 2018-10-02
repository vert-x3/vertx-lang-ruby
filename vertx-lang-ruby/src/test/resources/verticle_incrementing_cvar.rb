class Whatever
  @@test_cvar = 0
  def self.value
    @@test_cvar
  end
  def self.inc
    @@test_cvar += 1
  end
end
Whatever.inc
Java::IoVertxTestLangRuby::IsolationTest.registerCallback { Whatever.value }

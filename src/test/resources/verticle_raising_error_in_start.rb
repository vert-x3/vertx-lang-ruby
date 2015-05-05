Java::IoVertxTestLangRuby::DeployTest.deployed
def vertx_start
  Java::IoVertxTestLangRuby::DeployTest.started
  raise 'the_error'
end
def vertx_stop
  Java::IoVertxTestLangRuby::DeployTest.stopped
end

Java::IoVertxTestLangJruby::DeployTest.deployed
def vertx_start
  Java::IoVertxTestLangJruby::DeployTest.started
  raise 'the_error'
end
def vertx_stop
  Java::IoVertxTestLangJruby::DeployTest.stopped
end

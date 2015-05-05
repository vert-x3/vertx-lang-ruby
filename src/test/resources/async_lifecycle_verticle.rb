Java::IoVertxTestLangRuby::DeployTest.deployed
def vertx_start_async future
  Java::IoVertxTestLangRuby::DeployTest.started
  $vertx.set_timer(50) { future.complete }
end
def vertx_stop_async future
  Java::IoVertxTestLangRuby::DeployTest.stopped
  $vertx.set_timer(50) { future.complete }
end
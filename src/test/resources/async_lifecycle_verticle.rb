Java::IoVertxTestLangJruby::DeployTest.deployed
def vertx_start_async future
  Java::IoVertxTestLangJruby::DeployTest.started
  $vertx.set_timer(50) { future.complete }
end
def vertx_stop_async future
  Java::IoVertxTestLangJruby::DeployTest.stopped
  $vertx.set_timer(50) { future.complete }
end
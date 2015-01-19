Java::IoVertxTestLangJruby::DeployTest.deployed
def vertx_async_start future
  Java::IoVertxTestLangJruby::DeployTest.started
  $vertx.set_timer(50) { future.complete }
end
def vertx_async_stop future
  Java::IoVertxTestLangJruby::DeployTest.stopped
  $vertx.set_timer(50) { future.fail "the_error" }
end
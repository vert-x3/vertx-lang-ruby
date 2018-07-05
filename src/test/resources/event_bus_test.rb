require 'java'
require 'assert'
require 'vertx/vertx'
require 'vertx/buffer'

java_import 'java.util.concurrent.CountDownLatch'
java_import 'java.util.concurrent.TimeUnit'

def testSendBuffer
  vertx = Vertx::Vertx.vertx
  latch = CountDownLatch.new(1)

  event_bus = vertx.event_bus
  event_bus.consumer('foo') do |msg|
    Assert.equals('The quick brown fox jumps over the lazy dog', msg.body.to_string)
    latch.countDown
  end.completion_handler() do |err, v|
    Assert.is_nil(err)
    event_bus.send('foo', Vertx::Buffer.buffer('The quick brown fox jumps over the lazy dog'))
  end

  Assert.equals(latch.await(2, TimeUnit::MINUTES), true)
end

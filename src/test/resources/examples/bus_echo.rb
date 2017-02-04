eb = $vertx.event_bus()

eb.consumer("ping-address") { |message|
  message.reply "pong"
}

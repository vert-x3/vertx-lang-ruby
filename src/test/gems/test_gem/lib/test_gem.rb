require 'vertx/event_bus'
eb = $vertx.event_bus
eb.send 'deployment', 'gem_started', {}
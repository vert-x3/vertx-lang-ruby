/*
 * Copyright (c) 2011-2016 The original author or authors
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * and Apache License v2.0 which accompanies this distribution.
 *
 *      The Eclipse Public License is available at
 *      http://www.eclipse.org/legal/epl-v10.html
 *
 *      The Apache License v2.0 is available at
 *      http://www.opensource.org/licenses/apache2.0.php
 *
 * You may elect to redistribute this code under either of these licenses.
 */

package io.vertx.test.it;

import io.vertx.core.Vertx;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.unit.junit.VertxUnitRunner;
import io.vertx.servicediscovery.Record;
import io.vertx.servicediscovery.ServiceDiscovery;
import io.vertx.servicediscovery.ServiceDiscoveryOptions;
import io.vertx.servicediscovery.impl.DiscoveryImpl;
import io.vertx.servicediscovery.types.*;
import io.vertx.serviceproxy.ProxyHelper;
import io.vertx.test.it.service.HelloService;
import io.vertx.test.it.service.HelloServiceImpl;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

import static com.jayway.awaitility.Awaitility.await;
import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.core.Is.is;

/**
 * @author <a href="http://escoffier.me">Clement Escoffier</a>
 */
@RunWith(VertxUnitRunner.class)
public class ServiceDiscoveryTest {

  public static final ServiceDiscoveryOptions DISCOVERY_OPTIONS = new ServiceDiscoveryOptions()
    .setBackendConfiguration(new JsonObject().put("backend-name", "io.vertx.servicediscovery.impl.DefaultServiceDiscoveryBackend"));

  private Vertx vertx;
  private ServiceDiscovery discovery;

  @Before
  public void setUp() {
    vertx = Vertx.vertx();
    discovery = new DiscoveryImpl(vertx, DISCOVERY_OPTIONS);
  }

  @After
  public void tearDown() {
    discovery.close();
    AtomicBoolean completed = new AtomicBoolean();
    vertx.close((v) -> completed.set(true));
    await().untilAtomic(completed, is(true));
  }

  @Test
  public void testWithRubyConsumer() {
    // Step 1 - register the service
    HelloService svc = new HelloServiceImpl("stuff");
    ProxyHelper.registerService(HelloService.class, vertx, svc, "address");
    Record record = EventBusService.createRecord("Hello", "address", HelloService.class);

    discovery.publish(record, (r) -> {
    });
    await().until(() -> record.getRegistration() != null);

    // Step 2 - register a consumer that get the result
    AtomicReference<JsonObject> result = new AtomicReference<>();
    vertx.eventBus().<JsonObject>consumer("result", message -> result.set(message.body()));

    // Step 3 - deploy the verticle
    vertx.deployVerticle("it/discovery/HelloServiceConsumer.rb", ar -> {
      if (ar.failed()) {
        // Will fail anyway.
        ar.cause().printStackTrace();
      }
    });

    await().atMost(1, TimeUnit.MINUTES).until(() -> result.get() != null);

    assertThat(result.get().getString("message")).isEqualTo("stuff vert.x");
  }
}

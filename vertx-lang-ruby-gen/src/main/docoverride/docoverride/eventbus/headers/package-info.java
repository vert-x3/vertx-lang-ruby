/*
 * Copyright (c) 2011-2013 The original author or authors
 *  ------------------------------------------------------
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  and Apache License v2.0 which accompanies this distribution.
 *
 *      The Eclipse Public License is available at
 *      http://www.eclipse.org/legal/epl-v10.html
 *
 *      The Apache License v2.0 is available at
 *      http://www.opensource.org/licenses/apache2.0.php
 *
 *  You may elect to redistribute this code under either of these licenses.
 */
/**
 * ==== Setting headers on messages
 *
 * Messages sent over the event bus can also contain headers. This can be specified by providing a `headers` object
 * inside the {@link io.vertx.core.eventbus.DeliveryOptions} object when sending or publishing:
 *
 * [source,ruby]
 * ----
 * options = {
 *  headers: {
 *    'some-header' => 'some-value'
 *  }
 * }
 * vertx.event_bus().send("news.uk.sport", "Yay! Someone kicked a ball", options)
 * ----
 *
 * On the other side, the consumer can retrieve the message header as follows:
 *
 * [source, ruby]
 * ----
 * eb = $vertx.event_bus()
 * eb.consumer("news.uk.sport") { |message|
 *  puts message.headers().get("some-header")
 * }
 * ----
 *
 */
@Document(fileName = "override/eventbus_headers.adoc")
package docoverride.eventbus.headers;

import io.vertx.docgen.Document;

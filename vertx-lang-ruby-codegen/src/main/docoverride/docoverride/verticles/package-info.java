/*
 * Copyright 2014 Red Hat, Inc.
 *
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  and Apache License v2.0 which accompanies this distribution.
 *
 *  The Eclipse Public License is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 *
 *  The Apache License v2.0 is available at
 *  http://www.opensource.org/licenses/apache2.0.php
 *
 *  You may elect to redistribute this code under either of these licenses.
 */

/**
 * === Writing Verticles
 *
 * Ruby verticles are implemented as simple scripts.
 *
 * Ruby verticles will have the following globals pre-set as a convenience:
 *
 * * +$vertx+ - A reference to the Vertx object
 *
 * [source,ruby]
 * ----
 * # Start a timer
 * $vertx.set_periodic(1000) { puts 'Timer has fired' }
 * ----
 *
 * When the verticle is deployed the body of the script will be executed.
 *
 * Any `vertx_start` function function defined during the body execution will be executed after the
 * execution. The `vertx_start` is executed as any other function and does not expect any argument.
 *
 * Likewise any `vertx_stop` function function defined during the body execution will be executed after the
 * execution. The `vertx_stop` is executed as any other function and does not expect any argument.
 *
 * [source,ruby]
 * ----
 * def vertx_stop future
 *   # Cleanup here
 * end
 * ----
 *
 * To load a verticle as a Ruby gem, this Ruby gem must deployed
 *
 * === Asynchronous Verticle start and stop
 *
 * Sometimes you want to do something in your verticle start-up which takes some time and you don't want the verticle to
 * be considered deployed until that happens. For example you might want to deploy other verticles in the start method.
 *
 * You can't block waiting for the other verticles to deploy in your start method as that would break the Golden Rule.
 *
 * So how can you do this?
 *
 * The way to do it is to implement the *asynchronous* start method. This version of the method takes a Future as a parameter.
 * When the method returns the verticle will *not* be considered deployed yet. Some time later, after you've done everything
 * you need to do (e.g. start other verticles), you can call complete on the Future (or fail) to signal that you're done.
 *
 * Here's an example:
 *
 * [source,ruby]
 * ----
 * def vertx_start_async start_future
 *   # Now deploy some other verticle:
 *
 *   $vertx.deploy_verticle("other_verticle.rb") do |res|
 *     if res.succeeded?
 *       start_future.complete
 *     else
 *       start_future.fail
 *     end
 *   end
 * end
 * ----
 *
 * Similarly, there is an asynchronous version of the stop method too. You use this if you want to do some verticle
 * cleanup that takes some time.
 *
 * [source,ruby]
 * ----
 * def vertx_stop_async stop_future
 *   obj.do_something_that_takes_time do |res|
 *     if res.succeeded?
 *       stop_future.complete
 *     else
 *       stop_future.fail
 *     end
 *   end
 * end
 * ----
 *
 * INFO: You don't need to manually undeploy child verticles started by a verticle, in the verticle's stop method. Vert.x
 * will automatically undeploy any child verticles when the parent is undeployed.
 *
 * === Verticle deployment options
 *
 * When deploying a Ruby, verticle it is possible to set a specific _GEM_PATH_ variable for this particular
 * verticle:
 *
 * [source,java]
 * ----
 * DeploymentOptions options = new DeploymentOptions().
 *     setConfig(new JsonObject().put("GEM_PATH", "/path/to/gems"));
 * vertx.deployVerticle("my_verticle.rb", options);
 * ----
 *
 * This can be done also possible in Ruby:
 *
 * [source,ruby]
 * ----
 * options = { :config => { :GEM_PATH => '/path/to/gems' } }
 * $vertx.deploy_verticle('my_verticle.rb', options)
 * ----
 *
 * This option can also be specified for the CLI:
 *
 * ----
 * vertx run my_verticle_rb -conf {\"GEM_PATH\":\"/path/to/gems\"}
 * ----
 *
 */
@Document(fileName = "override/verticles.adoc")
package docoverride.verticles;

import io.vertx.docgen.Document;

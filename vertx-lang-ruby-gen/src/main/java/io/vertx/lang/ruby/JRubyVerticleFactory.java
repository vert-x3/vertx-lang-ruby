/*
 * Copyright 2014 Red Hat, Inc.
 *
 * Red Hat licenses this file to you under the Apache License, version 2.0
 * (the "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package io.vertx.lang.ruby;

import io.vertx.core.Promise;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;
import io.vertx.core.spi.VerticleFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/**
 * @author <a href="http://tfox.org">Tim Fox</a>
 */
public class JRubyVerticleFactory implements VerticleFactory {

  final Map<String, ContainerHolder> holderMap = new HashMap<>();

  private Vertx vertx;

  @Override
  public String prefix() {
    return "rb";
  }

  @Override
  public void init(Vertx vertx) {
    this.vertx = vertx;
  }

  @Override
  public void createVerticle(String verticleName, ClassLoader classLoader, Promise<Callable<Verticle>> promise) {
    String actualName;
    try {
      actualName = VerticleFactory.removePrefix(verticleName);
    } catch (Exception e) {
      promise.fail(e);
      return;
    }
    ContainerHolder holder;
    synchronized (holderMap) {
      holder = holderMap.computeIfAbsent(actualName, (name -> new ContainerHolder(this, name)));
    }
    promise.complete(() -> new JRubyVerticle(this, holder, classLoader, actualName));
  }

  void removeVerticle(ContainerHolder holder) {
    synchronized (holderMap) {
      holderMap.remove(holder.getVerticleName());
    }
  }

  // This method synchronizes the callback into the JRuby code to make sure we don't have concurrent requires
  // or loads occurring in the same JRuby container
  public static synchronized void requireCallback(Runnable runnable) {
    runnable.run();
  }
}

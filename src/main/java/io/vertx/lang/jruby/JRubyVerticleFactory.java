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

package io.vertx.lang.jruby;

import io.vertx.core.Verticle;
import io.vertx.core.Vertx;
import io.vertx.core.spi.VerticleFactory;
import org.jruby.CompatVersion;
import org.jruby.RubyInstanceConfig;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.ScriptingContainer;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/**
 * @author <a href="http://tfox.org">Tim Fox</a>
 */
public class JRubyVerticleFactory implements VerticleFactory {


  private ScriptingContainer container;
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
  public Verticle createVerticle(String verticleName, ClassLoader classLoader) throws Exception {
    return new JRubyVerticle(this, classLoader, verticleName);
  }

  ScriptingContainer createContainer(String gemPath) {
    ScriptingContainer container = new ScriptingContainer(LocalContextScope.SINGLETHREAD);
    RubyInstanceConfig config = container.getProvider().getRubyInstanceConfig();
    Map newEnv = new HashMap(config.getEnvironment());
    newEnv.put("GEM_PATH", gemPath);
    config.setEnvironment(newEnv);
    initVertx(container);
    return container;
  }

  synchronized ScriptingContainer getContainer() {
    if (container == null) {
      ScriptingContainer container = new ScriptingContainer(LocalContextScope.SINGLETHREAD);
      initVertx(container);
      this.container = container;
    }
    return container;
  }

  private void initVertx(ScriptingContainer container) {
    container.setCompatVersion(CompatVersion.RUBY1_9);
    container.setError(new PrintStream(new OutputStream() {
      @Override
      public void write(int b) throws IOException {
        // > /dev/null
      }
    }));
    container.put("$_vertx", vertx);
    container.runScriptlet("require 'vertx/vertx'");
    container.runScriptlet("require 'vertx/future'");
    container.runScriptlet("$vertx=Vertx::Vertx.new($_vertx)");
    container.remove("$_vertx");
  }
}

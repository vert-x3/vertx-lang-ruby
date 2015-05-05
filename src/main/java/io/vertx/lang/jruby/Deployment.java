package io.vertx.lang.jruby;

import org.jruby.RubyModule;

/**
 * Contains the JRuby objects resulting of the deployment of the verticle in a scripting container.
 * Its purpose is to hold these objects for undeployment.
 *
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
class Deployment {

  final String modName;
  final RubyModule wrappingModule;

  public Deployment(String modName, RubyModule wrappingModule) {
    this.modName = modName;
    this.wrappingModule = wrappingModule;
  }
}

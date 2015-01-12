package io.vertx.test.lang.jruby;

import io.vertx.core.http.HttpClient;
import io.vertx.core.http.HttpClientOptions;
import io.vertx.core.http.HttpClientRequest;
import io.vertx.core.http.HttpMethod;
import io.vertx.test.core.VertxTestBase;
import org.junit.Test;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class VerticleTest extends VertxTestBase {

  @Test
  public void testHttpServer() {
    vertx.deployVerticle("examples/simple_http_server.rb", ar -> {
      assertTrue(ar.succeeded());
      HttpClient client = vertx.createHttpClient(new HttpClientOptions());
      HttpClientRequest req = client.request(HttpMethod.GET, 8080, "localhost", "/");
      req.exceptionHandler(err -> fail());
      req.handler(resp -> {
        assertEquals(200, resp.statusCode());
        testComplete();
      });
      req.end();
    });
    await();
  }
}

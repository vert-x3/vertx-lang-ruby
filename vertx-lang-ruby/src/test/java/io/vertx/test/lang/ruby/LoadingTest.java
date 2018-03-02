package io.vertx.test.lang.ruby;

import io.vertx.test.core.VertxTestBase;
import org.junit.After;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;

/**
 * @author Clement Escoffier <clement@apache.org>
 */
public class LoadingTest extends VertxTestBase {

  private static boolean deployed;
  private ClassLoader orig;

  public synchronized static void deployed() {
    deployed = true;
  }

  @After
  public void restoreTCCL() {
    Thread.currentThread().setContextClassLoader(orig);
  }

  @Test
  public void testLoadingARubyFileFromCustomClassloader() throws MalformedURLException {
    File external = new File("src/test/external-test-resources");
    orig = Thread.currentThread().getContextClassLoader();
    URLClassLoader custom = new URLClassLoader(new URL[]{external.toURI().toURL()});
    Thread.currentThread().setContextClassLoader(custom);
    deployed = false;
    vertx.deployVerticle("require/simple_verticle.rb");
    assertWaitUntil(() -> deployed);
  }

  @Test
  public void testLoadingARubyFileEmbeddedInAJarLoadedFromCustomClassloader() throws IOException {
    File jar = createJar();
    orig = Thread.currentThread().getContextClassLoader();
    URLClassLoader custom = new URLClassLoader(new URL[]{jar.toURI().toURL()});
    Thread.currentThread().setContextClassLoader(custom);
    deployed = false;
    vertx.deployVerticle("require/simple_verticle.rb");
    assertWaitUntil(() -> deployed);
  }

  private File createJar() throws IOException {
    File file = File.createTempFile("ruby-require-test", ".jar");
    Manifest manifest = new Manifest();
    manifest.getMainAttributes().put(Attributes.Name.MANIFEST_VERSION, "1.0");
    JarOutputStream target = new JarOutputStream(new FileOutputStream(file), manifest);

    File external = new File("src/test/external-test-resources/foo/bar.rb");
    JarEntry bar = new JarEntry("foo/bar.rb");
    bar.setTime(external.lastModified());
    target.putNextEntry(bar);

    byte buffer[] = new byte[1024];
    FileInputStream in = new FileInputStream(external);
    while (true) {
      int nRead = in.read(buffer, 0, buffer.length);
      if (nRead <= 0)
        break;
      target.write(buffer, 0, nRead);
    }
    in.close();
    target.close();
    return file;
  }
}

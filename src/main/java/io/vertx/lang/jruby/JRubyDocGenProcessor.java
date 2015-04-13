package io.vertx.lang.jruby;

import io.vertx.codegen.Case;
import io.vertx.codegen.ClassKind;
import io.vertx.codegen.TypeInfo;
import io.vertx.docgen.BaseProcessor;
import io.vertx.docgen.Coordinate;
import io.vertx.docgen.DocGenProcessor;

import javax.annotation.processing.ProcessingEnvironment;
import javax.lang.model.element.ExecutableElement;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.VariableElement;
import java.io.StringWriter;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class JRubyDocGenProcessor extends BaseProcessor {

  private TypeInfo.Factory factory;

  @Override
  public synchronized void init(ProcessingEnvironment processingEnv) {
    super.init(processingEnv);
    factory = new TypeInfo.Factory(processingEnv.getElementUtils(), processingEnv.getTypeUtils());
  }

  @Override
  protected void handleGen(PackageElement pkgElt) {
    StringWriter buffer = new StringWriter();
    process(buffer, pkgElt);
    write(pkgElt, buffer.toString());
  }

  @Override
  protected String getName() {
    return "ruby";
  }

  @Override
  protected String renderSource(ExecutableElement elt, String source) {
    return "todo:implement-code-translation-for-ruby";
  }

  @Override
  protected String toTypeLink(TypeElement elt, Coordinate coordinate) {
    TypeInfo type = factory.create(elt.asType());
    if (type.getKind() == ClassKind.DATA_OBJECT) {
      String baselink;
      if (coordinate == null) {
        baselink = "../";
      } else {
        baselink = "../../" + coordinate.getArtifactId() + "/";
      }
      return baselink + "cheatsheet/" + elt.getSimpleName().toString() + ".html";
    }
    if (type.getKind() == ClassKind.API) {
      String baselink = "";
      if (coordinate != null) {
        baselink = "../../" + coordinate.getArtifactId() + "/ruby/";
      }
      TypeInfo.Class.Api api = (TypeInfo.Class.Api) type.getRaw();
      String module = api.getModuleName();
      String dir = Case.CAMEL.format(Case.KEBAB.parse(module));

      return baselink + "yardoc/" + dir + "/" + api.getSimpleName() + ".html";
    }
    return "unavailable";
  }

  @Override
  protected String toMethodLink(ExecutableElement elt, Coordinate coordinate) {
    String baselink = toTypeLink((TypeElement) elt.getEnclosingElement(), coordinate);
    if (baselink.contains("cheatsheet")) {
      return baselink + '#' + java.beans.Introspector.decapitalize(elt.getSimpleName().toString().substring(3));
    } else {
      String methodName = Case.SNAKE.format(Case.CAMEL.parse(elt.getSimpleName().toString()));
      return baselink + '#' + methodName + "-" + (elt.getModifiers().contains(Modifier.STATIC) ? "class_method" : "instance_method");
    }
  }

  @Override
  protected String toConstructorLink(ExecutableElement elt, Coordinate coordinate) {
    return "todo";
  }

  @Override
  protected String toFieldLink(VariableElement elt, Coordinate coordinate) {
    return "todo";
  }
}

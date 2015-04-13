package io.vertx.lang.jruby;

import io.vertx.codegen.Case;
import io.vertx.codegen.ClassKind;
import io.vertx.codegen.TypeInfo;
import io.vertx.docgen.Coordinate;
import io.vertx.docgen.DocGenerator;

import javax.annotation.processing.ProcessingEnvironment;
import javax.lang.model.element.Element;
import javax.lang.model.element.ExecutableElement;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.VariableElement;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class JRubyDocGenerator implements DocGenerator {

  private TypeInfo.Factory factory;

  @Override
  public void init(ProcessingEnvironment processingEnv) {
    factory = new TypeInfo.Factory(processingEnv.getElementUtils(), processingEnv.getTypeUtils());
  }

  @Override
  public String getName() {
    return "ruby";
  }

  @Override
  public String renderSource(ExecutableElement elt, String source) {
    return "todo:implement-code-translation-for-ruby";
  }

  @Override
  public String toTypeLink(TypeElement elt, Coordinate coordinate) {
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
  public String toMethodLink(ExecutableElement elt, Coordinate coordinate) {
    String baselink = toTypeLink((TypeElement) elt.getEnclosingElement(), coordinate);
    if (baselink.contains("cheatsheet")) {
      return baselink + '#' + java.beans.Introspector.decapitalize(elt.getSimpleName().toString().substring(3));
    } else {
      String methodName = Case.SNAKE.format(Case.CAMEL.parse(elt.getSimpleName().toString()));
      return baselink + '#' + methodName + "-" + (elt.getModifiers().contains(Modifier.STATIC) ? "class_method" : "instance_method");
    }
  }

  @Override
  public String toConstructorLink(ExecutableElement elt, Coordinate coordinate) {
    return "todo";
  }

  @Override
  public String toFieldLink(VariableElement elt, Coordinate coordinate) {
    return "todo";
  }

  @Override
  public String resolveLabel(Element elt) {
    return "todo";
  }
}

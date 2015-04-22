require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ReservedWordParams
module RubyCodegen
  #  @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
  class ReservedWordParams
    # @private
    # @param j_del [::RubyCodegen::ReservedWordParams] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::ReservedWordParams] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [String] _alias
    # @param [String] _and
    # @param [String] _BEGIN
    # @param [String] _begin
    # @param [String] _def
    # @param [String] _elsif
    # @param [String] _END
    # @param [String] _end
    # @param [String] _ensure
    # @param [String] _in
    # @param [String] _module
    # @param [String] _next
    # @param [String] _nil
    # @param [String] _not
    # @param [String] _or
    # @param [String] _redo
    # @param [String] _rescue
    # @param [String] _retry
    # @param [String] _self
    # @param [String] _then
    # @param [String] _undef
    # @param [String] _unless
    # @param [String] _until
    # @param [String] _when
    # @param [String] _yield
    # @return [String]
    def method(_alias=nil,_and=nil,_BEGIN=nil,_begin=nil,_def=nil,_elsif=nil,_END=nil,_end=nil,_ensure=nil,_in=nil,_module=nil,_next=nil,_nil=nil,_not=nil,_or=nil,_redo=nil,_rescue=nil,_retry=nil,_self=nil,_then=nil,_undef=nil,_unless=nil,_until=nil,_when=nil,_yield=nil)
      if _alias.class == String && _and.class == String && _BEGIN.class == String && _begin.class == String && _def.class == String && _elsif.class == String && _END.class == String && _end.class == String && _ensure.class == String && _in.class == String && _module.class == String && _next.class == String && _nil.class == String && _not.class == String && _or.class == String && _redo.class == String && _rescue.class == String && _retry.class == String && _self.class == String && _then.class == String && _undef.class == String && _unless.class == String && _until.class == String && _when.class == String && _yield.class == String && !block_given?
        return @j_del.java_method(:method, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(_alias,_and,_BEGIN,_begin,_def,_elsif,_END,_end,_ensure,_in,_module,_next,_nil,_not,_or,_redo,_rescue,_retry,_self,_then,_undef,_unless,_until,_when,_yield)
      end
      raise ArgumentError, "Invalid arguments when calling method(_alias,_and,_BEGIN,_begin,_def,_elsif,_END,_end,_ensure,_in,_module,_next,_nil,_not,_or,_redo,_rescue,_retry,_self,_then,_undef,_unless,_until,_when,_yield)"
    end
  end
end

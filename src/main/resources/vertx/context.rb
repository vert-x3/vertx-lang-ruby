require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Context
module Vertx
  #  Represents the execution context of a Verticle.
  class Context
    # @private
    # @param j_del [::Vertx::Context] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Context] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Proc] action
    # return [void]
    def run_on_context(&action)
      if action.class == Proc
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:runOnContext,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,action)
      end
      raise ArgumentError, "Invalid argument action=#{action} when calling run_on_context(action)"
    end
    # @return [String]
    def deployment_id
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:deploymentID))).invoke(@j_del)
    end
    # @return [Hash{String => Object}]
    def config
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:config))).invoke(@j_del) != nil ? JSON.parse((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:config))).invoke(@j_del).encode) : nil
    end
    # @return [Array<String>]
    def process_args
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:processArgs))).invoke(@j_del).to_a.map { |elt| elt }
    end
    # @return [true,false]
    def is_event_loop_context
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isEventLoopContext))).invoke(@j_del)
    end
    # @return [true,false]
    def is_worker
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isWorker))).invoke(@j_del)
    end
    # @return [true,false]
    def is_multi_threaded
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isMultiThreaded))).invoke(@j_del)
    end
    # @param [String] key
    # @return [Object]
    def get(key)
      if key.class == String
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:get,Java::java.lang.String.java_class))).invoke(@j_del,key))
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling get(key)"
    end
    # @param [String] key
    # @param [Object] value
    # return [void]
    def put(key,value)
      if key.class == String
        if value.class == String  ||value.class == Hash || value.class == Array
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:put,Java::java.lang.String.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,key,::Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling put(key,value)"
    end
    # @param [String] key
    # @return [true,false]
    def remove(key)
      if key.class == String
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:remove,Java::java.lang.String.java_class))).invoke(@j_del,key)
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling remove(key)"
    end
  end
end

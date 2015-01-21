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
        return @j_del.runOnContext(action)
      end
      raise ArgumentError, "Invalid argument action=#{action} when calling run_on_context(action)"
    end
    # @return [String]
    def deployment_id
      @j_del.deploymentID
    end
    # @return [Hash{String => Object}]
    def config
      @j_del.config != nil ? JSON.parse(@j_del.config.encode) : nil
    end
    # @return [Array<String>]
    def process_args
      @j_del.processArgs.to_a.map { |elt| elt }
    end
    # @return [true,false]
    def is_event_loop_context
      @j_del.isEventLoopContext
    end
    # @return [true,false]
    def is_worker
      @j_del.isWorker
    end
    # @return [true,false]
    def is_multi_threaded
      @j_del.isMultiThreaded
    end
    # @param [String] key
    # @return [Object]
    def get(key)
      if key.class == String
        return ::Vertx::Util::Utils.from_object(@j_del.get(key))
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling get(key)"
    end
    # @param [String] key
    # @param [Object] value
    # return [void]
    def put(key,value)
      if key.class == String
        if value.class == String  ||value.class == Hash || value.class == Array
          return @j_del.put(key,::Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, "Invalid argument value=#{value} when calling put(key,value)"
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling put(key,value)"
    end
    # @param [String] key
    # @return [true,false]
    def remove(key)
      if key.class == String
        return @j_del.remove(key)
      end
      raise ArgumentError, "Invalid argument key=#{key} when calling remove(key)"
    end
  end
end

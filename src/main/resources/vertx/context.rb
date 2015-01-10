require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Context
module Vertx
  class Context
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def run_on_context(action)
      if action != nil && action.class == Proc
        return @j_del.runOnContext(action)
      end
      raise ArgumentError, 'dispatch error'
    end
    def deployment_id()
      return @j_del.deploymentID()
    end
    def config()
      return @j_del.config() != nil ? JSON.parse(@j_del.config().encode) : nil
    end
    def process_args()
      return @j_del.processArgs().to_a.map { |elt| elt }
    end
    def is_event_loop_context()
      return @j_del.isEventLoopContext()
    end
    def is_worker()
      return @j_del.isWorker()
    end
    def is_multi_threaded()
      return @j_del.isMultiThreaded()
    end
    def get(key)
      if key != nil && key.class == String
        return Vertx::Util::Utils.from_object(@j_del.get(key))
      end
      raise ArgumentError, 'dispatch error'
    end
    def put(key,value)
      if key != nil && key.class == String
        if value != nil && (value.class == String  ||value.class == Hash || value.class == Array)
          return @j_del.put(key,Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove(key)
      if key != nil && key.class == String
        return @j_del.remove(key)
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

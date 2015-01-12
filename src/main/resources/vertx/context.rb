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
    def run_on_context(&action)
      if action.class == Proc
        return @j_del.runOnContext(action)
      end
      raise ArgumentError, 'dispatch error'
    end
    def deployment_id()
      @j_del.deploymentID
    end
    def config()
      @j_del.config != nil ? JSON.parse(@j_del.config.encode) : nil
    end
    def process_args()
      @j_del.processArgs.to_a.map { |elt| elt }
    end
    def is_event_loop_context()
      @j_del.isEventLoopContext
    end
    def is_worker()
      @j_del.isWorker
    end
    def is_multi_threaded()
      @j_del.isMultiThreaded
    end
    def get(key)
      if key.class == String
        return Vertx::Util::Utils.from_object(@j_del.get(key))
      end
      raise ArgumentError, 'dispatch error'
    end
    def put(key,value)
      if key.class == String
        if value.class == String  ||value.class == Hash || value.class == Array
          return @j_del.put(key,Vertx::Util::Utils.to_object(value))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def remove(key)
      if key.class == String
        return @j_del.remove(key)
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

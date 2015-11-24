require 'vertx/message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.SendContext
module Vertx
  # 
  #  Encapsulates a message being sent from Vert.x. Used with event bus interceptors
  class SendContext
    # @private
    # @param j_del [::Vertx::SendContext] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::SendContext] the underlying java delegate
    def j_del
      @j_del
    end
    #  @return  The message being sent
    # @return [::Vertx::Message]
    def message
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:message, []).call(),::Vertx::Message)
      end
      raise ArgumentError, "Invalid arguments when calling message()"
    end
    #  Call the next interceptor
    # @return [void]
    def next
      if !block_given?
        return @j_del.java_method(:next, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling next()"
    end
    # @return [true,false] true if the message is being sent (point to point) or False if the message is being published
    def send?
      if !block_given?
        return @j_del.java_method(:send, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling send?()"
    end
  end
end

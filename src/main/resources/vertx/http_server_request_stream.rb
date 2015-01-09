include_class 'io.vertx.core.http.HttpServerRequest'
include_class 'io.vertx.core.streams.ReadStream'
require 'vertx/util/utils.rb'
module Vertx
  class HttpServerRequestStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause()
      return self
    end
    def resume()
      @j_del.resume()
      return self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

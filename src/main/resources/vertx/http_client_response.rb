include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.MultiMap'
include_class 'io.vertx.core.net.NetSocket'
require 'vertx/util/utils.rb'
module Vertx
  class HttpClientResponse
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def resume()
      @j_del.resume()
      return self
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
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def status_code()
      return @j_del.statusCode()
    end
    def status_message()
      return @j_del.statusMessage()
    end
    def headers()
      return nil
    end
    def trailers()
      return nil
    end
    def cookies()
      return nil
    end
    def body_handler(body_handler)
      if body_handler != nil && body_handler.class == Proc
        @j_del.bodyHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def net_socket()
      return nil
    end
  end
end

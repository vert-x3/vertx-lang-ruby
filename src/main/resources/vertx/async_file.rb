include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.streams.WriteStream'
include_class 'io.vertx.core.streams.ReadStream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.AsyncFile
module Vertx
  class AsyncFile
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      return @j_del.writeQueueFull()
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
    def write(buffer=nil,position=nil,handler=nil)
      if buffer != nil && buffer.class.method_defined?(:j_del)
        if position != nil && position.class == Fixnum
          if handler != nil && handler.class == Proc
            @j_del.write(buffer.j_del,position,nil)
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        @j_del.write(data.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(max_size)
      if max_size != nil && max_size.class == Fixnum
        @j_del.setWriteQueueMaxSize(max_size)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def close(handler=nil)
      if handler != nil && handler.class == Proc
        return @j_del.close(nil)
      end
      return @j_del.close()
    end
    def read(buffer,offset,position,length,handler)
      if buffer != nil && buffer.class.method_defined?(:j_del)
        if offset != nil && offset.class == Fixnum
          if position != nil && position.class == Fixnum
            if length != nil && length.class == Fixnum
              if handler != nil && handler.class == Proc
                @j_del.read(buffer.j_del,offset,position,length,nil)
                return self
              end
              raise ArgumentError, 'dispatch error'
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def flush(handler=nil)
      if handler != nil && handler.class == Proc
        @j_del.flush(nil)
        return self
      end
      @j_del.flush()
      return self
    end
    def set_read_pos(read_pos)
      if read_pos != nil && read_pos.class == Fixnum
        @j_del.setReadPos(read_pos)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_pos(read_pos)
      if read_pos != nil && read_pos.class == Fixnum
        @j_del.setWritePos(read_pos)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end

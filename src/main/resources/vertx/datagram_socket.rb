include_class 'io.vertx.core.datagram.PacketWritestream'
include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.metrics.Measured'
include_class 'io.vertx.core.datagram.DatagramPacket'
include_class 'io.vertx.core.streams.ReadStream'
include_class 'io.vertx.core.net.SocketAddress'
require 'vertx/util/utils.rb'
module Vertx
  class DatagramSocket
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def metric_base_name()
      return @j_del.metricBaseName()
    end
    def metrics()
      return nil
    end
    def send(param_1=nil,param_2=nil,param_3=nil,param_4=nil,param_5=nil)
        if param_1 != nil && param_1.class.method_defined?(:j_del)
            if param_2 != nil && param_2.class == Fixnum
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.send(param_1.j_del,param_2,param_3,nil)
    return self
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
          raise ArgumentError, 'dispatch error'
        end
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == Fixnum
                    if param_4 != nil && param_4.class == String
                        if param_5 != nil && param_5.class == Proc
                          @j_del.send(param_1,param_2,param_3,param_4,nil)
    return self
                        end
                      raise ArgumentError, 'dispatch error'
                    end
                  raise ArgumentError, 'dispatch error'
                end
              raise ArgumentError, 'dispatch error'
            end
            if param_2 != nil && param_2.class == Fixnum
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.send(param_1,param_2,param_3,nil)
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
    def sender(port,host)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          return nil
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def close(handler=nil)
      if handler != nil && handler.class == Proc
        return @j_del.close(nil)
      end
      return @j_del.close()
    end
    def local_address()
      return nil
    end
    def listen_multicast_group(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == Proc
              @j_del.listenMulticastGroup(param_1,nil)
    return self
            end
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.listenMulticastGroup(param_1,param_2,param_3,nil)
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
    def unlisten_multicast_group(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == Proc
              @j_del.unlistenMulticastGroup(param_1,nil)
    return self
            end
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.unlistenMulticastGroup(param_1,param_2,param_3,nil)
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
    def block_multicast_group(param_1=nil,param_2=nil,param_3=nil,param_4=nil)
        if param_1 != nil && param_1.class == String
            if param_2 != nil && param_2.class == String
                if param_3 != nil && param_3.class == Proc
                  @j_del.blockMulticastGroup(param_1,param_2,nil)
    return self
                end
                if param_3 != nil && param_3.class == String
                    if param_4 != nil && param_4.class == Proc
                      @j_del.blockMulticastGroup(param_1,param_2,param_3,nil)
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
    def listen(port,host,handler)
      if port != nil && port.class == Fixnum
        if host != nil && host.class == String
          if handler != nil && handler.class == Proc
            @j_del.listen(port,host,nil)
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
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
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler(nil)
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
  end
end

require 'vertx/util/utils.rb'
# Generated from io.vertx.core.buffer.Buffer
module Vertx
  class Buffer
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def self.buffer(param_1=nil,param_2=nil)
      if param_1 != nil && param_1.class == String
        if param_2 != nil && param_2.class == String
          return Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer(param_1,param_2))
        end
        return Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer(param_1))
      end
      if param_1 != nil && param_1.class == Fixnum
        return Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer(param_1))
      end
      Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer)
    end
    def to_string(enc)
      if enc != nil && enc.class == String
        return @j_del.toString(enc)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_byte(pos)
      if pos != nil && pos.class == Fixnum
        return @j_del.getByte(pos)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_int(pos)
      if pos != nil && pos.class == Fixnum
        return @j_del.getInt(pos)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_long(pos)
      if pos != nil && pos.class == Fixnum
        return @j_del.getLong(pos)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_double(pos)
      if pos != nil && pos.class == Fixnum
        return @j_del.getDouble(pos)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_float(pos)
      if pos != nil && pos.class == Fixnum
        return @j_del.getFloat(pos)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_short(pos)
      if pos != nil && pos.class == Fixnum
        return @j_del.getShort(pos)
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_buffer(start,end)
      if start != nil && start.class == Fixnum
        if end != nil && end.class == Fixnum
          return Vertx::Buffer.new(@j_del.getBuffer(start,end))
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def get_string(start,end,enc=nil)
      if start != nil && start.class == Fixnum
        if end != nil && end.class == Fixnum
          if enc != nil && enc.class == String
            return @j_del.getString(start,end,enc)
          end
          return @j_del.getString(start,end)
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_buffer(buff,offset=nil,len=nil)
      if buff != nil && buff.class.method_defined?(:j_del)
        if offset != nil && offset.class == Fixnum
          if len != nil && len.class == Fixnum
            @j_del.appendBuffer(buff.j_del,offset,len)
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        @j_del.appendBuffer(buff.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_byte(b)
      if b != nil && b.class == Fixnum
        @j_del.appendByte(Vertx::Util::Utils.to_byte(b))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_int(i)
      if i != nil && i.class == Fixnum
        @j_del.appendInt(i)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_long(l)
      if l != nil && l.class == Fixnum
        @j_del.appendLong(l)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_short(s)
      if s != nil && s.class == Fixnum
        @j_del.appendShort(Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_float(f)
      if f != nil && f.class == Float
        @j_del.appendFloat(Vertx::Util::Utils.to_float(f))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_double(d)
      if d != nil && d.class == Float
        @j_del.appendDouble(Vertx::Util::Utils.to_double(d))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def append_string(str,enc=nil)
      if str != nil && str.class == String
        if enc != nil && enc.class == String
          @j_del.appendString(str,enc)
          return self
        end
        @j_del.appendString(str)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_byte(pos,b)
      if pos != nil && pos.class == Fixnum
        if b != nil && b.class == Fixnum
          @j_del.setByte(pos,Vertx::Util::Utils.to_byte(b))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_int(pos,i)
      if pos != nil && pos.class == Fixnum
        if i != nil && i.class == Fixnum
          @j_del.setInt(pos,i)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_long(pos,l)
      if pos != nil && pos.class == Fixnum
        if l != nil && l.class == Fixnum
          @j_del.setLong(pos,l)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_double(pos,d)
      if pos != nil && pos.class == Fixnum
        if d != nil && d.class == Float
          @j_del.setDouble(pos,Vertx::Util::Utils.to_double(d))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_float(pos,f)
      if pos != nil && pos.class == Fixnum
        if f != nil && f.class == Float
          @j_del.setFloat(pos,Vertx::Util::Utils.to_float(f))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_short(pos,s)
      if pos != nil && pos.class == Fixnum
        if s != nil && s.class == Fixnum
          @j_del.setShort(pos,Vertx::Util::Utils.to_short(s))
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_buffer(pos,b,offset=nil,len=nil)
      if pos != nil && pos.class == Fixnum
        if b != nil && b.class.method_defined?(:j_del)
          if offset != nil && offset.class == Fixnum
            if len != nil && len.class == Fixnum
              @j_del.setBuffer(pos,b.j_del,offset,len)
              return self
            end
            raise ArgumentError, 'dispatch error'
          end
          @j_del.setBuffer(pos,b.j_del)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_string(pos,str,enc=nil)
      if pos != nil && pos.class == Fixnum
        if str != nil && str.class == String
          if enc != nil && enc.class == String
            @j_del.setString(pos,str,enc)
            return self
          end
          @j_del.setString(pos,str)
          return self
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def length()
      @j_del.length
    end
    def copy()
      Vertx::Buffer.new(@j_del.copy)
    end
    def slice(start=nil,end=nil)
      if start != nil && start.class == Fixnum
        if end != nil && end.class == Fixnum
          return Vertx::Buffer.new(@j_del.slice(start,end))
        end
        raise ArgumentError, 'dispatch error'
      end
      Vertx::Buffer.new(@j_del.slice)
    end
  end
end

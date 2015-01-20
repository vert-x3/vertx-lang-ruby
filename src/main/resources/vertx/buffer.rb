require 'vertx/util/utils.rb'
# Generated from io.vertx.core.buffer.Buffer
module Vertx
  class Buffer
    # @private
    # @param j_del [::Vertx::Buffer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Buffer] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @overload buffer()
    # @overload buffer(initialSizeHint)
    #   @param [Fixnum] initialSizeHint
    # @overload buffer(string)
    #   @param [String] string
    # @overload buffer(string,enc)
    #   @param [String] string
    #   @param [String] enc
    # @return [::Vertx::Buffer]: the return value (todo)
    def self.buffer(param_1=nil,param_2=nil)
      if param_1.class == String
        if param_2.class == String
          return ::Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer(param_1,param_2))
        end
        return ::Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer(param_1))
      end
      if param_1.class == Fixnum
        return ::Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer(param_1))
      end
      ::Vertx::Buffer.new(Java::IoVertxCoreBuffer::Buffer.buffer)
    end
    # THE METHOD DOC
    #
    # @param [String] enc
    # @return [String]: the return value (todo)
    def to_string(enc)
      if enc.class == String
        return @j_del.toString(enc)
      end
      raise ArgumentError, "Invalid argument enc=#{enc} when calling to_string(enc)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @return [Fixnum]: the return value (todo)
    def get_byte(pos)
      if pos.class == Fixnum
        return @j_del.getByte(pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_byte(pos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @return [Fixnum]: the return value (todo)
    def get_int(pos)
      if pos.class == Fixnum
        return @j_del.getInt(pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_int(pos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @return [Fixnum]: the return value (todo)
    def get_long(pos)
      if pos.class == Fixnum
        return @j_del.getLong(pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_long(pos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @return [Float]: the return value (todo)
    def get_double(pos)
      if pos.class == Fixnum
        return @j_del.getDouble(pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_double(pos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @return [Float]: the return value (todo)
    def get_float(pos)
      if pos.class == Fixnum
        return @j_del.getFloat(pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_float(pos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @return [Fixnum]: the return value (todo)
    def get_short(pos)
      if pos.class == Fixnum
        return @j_del.getShort(pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_short(pos)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] start
    # @param [Fixnum] _end
    # @return [::Vertx::Buffer]: the return value (todo)
    def get_buffer(start,_end)
      if start.class == Fixnum
        if _end.class == Fixnum
          return ::Vertx::Buffer.new(@j_del.getBuffer(start,_end))
        end
        raise ArgumentError, "Invalid argument _end=#{_end} when calling get_buffer(start,_end)"
      end
      raise ArgumentError, "Invalid argument start=#{start} when calling get_buffer(start,_end)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] start
    # @param [Fixnum] _end
    # @param [String] enc
    # @return [String]: the return value (todo)
    def get_string(start,_end,enc=nil)
      if start.class == Fixnum
        if _end.class == Fixnum
          if enc.class == String
            return @j_del.getString(start,_end,enc)
          end
          return @j_del.getString(start,_end)
        end
        raise ArgumentError, "Invalid argument _end=#{_end} when calling get_string(start,_end,enc)"
      end
      raise ArgumentError, "Invalid argument start=#{start} when calling get_string(start,_end,enc)"
    end
    # THE METHOD DOC
    #
    # @param [::Vertx::Buffer] buff
    # @param [Fixnum] offset
    # @param [Fixnum] len
    # return [self]
    def append_buffer(buff,offset=nil,len=nil)
      if buff.class.method_defined?(:j_del)
        if offset.class == Fixnum
          if len.class == Fixnum
            @j_del.appendBuffer(buff.j_del,offset,len)
            return self
          end
          raise ArgumentError, "Invalid argument len=#{len} when calling append_buffer(buff,offset,len)"
        end
        @j_del.appendBuffer(buff.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument buff=#{buff} when calling append_buffer(buff,offset,len)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] b
    # return [self]
    def append_byte(b)
      if b.class == Fixnum
        @j_del.appendByte(::Vertx::Util::Utils.to_byte(b))
        return self
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling append_byte(b)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] i
    # return [self]
    def append_int(i)
      if i.class == Fixnum
        @j_del.appendInt(i)
        return self
      end
      raise ArgumentError, "Invalid argument i=#{i} when calling append_int(i)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] l
    # return [self]
    def append_long(l)
      if l.class == Fixnum
        @j_del.appendLong(l)
        return self
      end
      raise ArgumentError, "Invalid argument l=#{l} when calling append_long(l)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] s
    # return [self]
    def append_short(s)
      if s.class == Fixnum
        @j_del.appendShort(::Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, "Invalid argument s=#{s} when calling append_short(s)"
    end
    # THE METHOD DOC
    #
    # @param [Float] f
    # return [self]
    def append_float(f)
      if f.class == Float
        @j_del.appendFloat(::Vertx::Util::Utils.to_float(f))
        return self
      end
      raise ArgumentError, "Invalid argument f=#{f} when calling append_float(f)"
    end
    # THE METHOD DOC
    #
    # @param [Float] d
    # return [self]
    def append_double(d)
      if d.class == Float
        @j_del.appendDouble(::Vertx::Util::Utils.to_double(d))
        return self
      end
      raise ArgumentError, "Invalid argument d=#{d} when calling append_double(d)"
    end
    # THE METHOD DOC
    #
    # @param [String] str
    # @param [String] enc
    # return [self]
    def append_string(str,enc=nil)
      if str.class == String
        if enc.class == String
          @j_del.appendString(str,enc)
          return self
        end
        @j_del.appendString(str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling append_string(str,enc)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [Fixnum] b
    # return [self]
    def set_byte(pos,b)
      if pos.class == Fixnum
        if b.class == Fixnum
          @j_del.setByte(pos,::Vertx::Util::Utils.to_byte(b))
          return self
        end
        raise ArgumentError, "Invalid argument b=#{b} when calling set_byte(pos,b)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_byte(pos,b)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [Fixnum] i
    # return [self]
    def set_int(pos,i)
      if pos.class == Fixnum
        if i.class == Fixnum
          @j_del.setInt(pos,i)
          return self
        end
        raise ArgumentError, "Invalid argument i=#{i} when calling set_int(pos,i)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_int(pos,i)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [Fixnum] l
    # return [self]
    def set_long(pos,l)
      if pos.class == Fixnum
        if l.class == Fixnum
          @j_del.setLong(pos,l)
          return self
        end
        raise ArgumentError, "Invalid argument l=#{l} when calling set_long(pos,l)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_long(pos,l)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [Float] d
    # return [self]
    def set_double(pos,d)
      if pos.class == Fixnum
        if d.class == Float
          @j_del.setDouble(pos,::Vertx::Util::Utils.to_double(d))
          return self
        end
        raise ArgumentError, "Invalid argument d=#{d} when calling set_double(pos,d)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_double(pos,d)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [Float] f
    # return [self]
    def set_float(pos,f)
      if pos.class == Fixnum
        if f.class == Float
          @j_del.setFloat(pos,::Vertx::Util::Utils.to_float(f))
          return self
        end
        raise ArgumentError, "Invalid argument f=#{f} when calling set_float(pos,f)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_float(pos,f)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [Fixnum] s
    # return [self]
    def set_short(pos,s)
      if pos.class == Fixnum
        if s.class == Fixnum
          @j_del.setShort(pos,::Vertx::Util::Utils.to_short(s))
          return self
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling set_short(pos,s)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_short(pos,s)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [::Vertx::Buffer] b
    # @param [Fixnum] offset
    # @param [Fixnum] len
    # return [self]
    def set_buffer(pos,b,offset=nil,len=nil)
      if pos.class == Fixnum
        if b.class.method_defined?(:j_del)
          if offset.class == Fixnum
            if len.class == Fixnum
              @j_del.setBuffer(pos,b.j_del,offset,len)
              return self
            end
            raise ArgumentError, "Invalid argument len=#{len} when calling set_buffer(pos,b,offset,len)"
          end
          @j_del.setBuffer(pos,b.j_del)
          return self
        end
        raise ArgumentError, "Invalid argument b=#{b} when calling set_buffer(pos,b,offset,len)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_buffer(pos,b,offset,len)"
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] pos
    # @param [String] str
    # @param [String] enc
    # return [self]
    def set_string(pos,str,enc=nil)
      if pos.class == Fixnum
        if str.class == String
          if enc.class == String
            @j_del.setString(pos,str,enc)
            return self
          end
          @j_del.setString(pos,str)
          return self
        end
        raise ArgumentError, "Invalid argument str=#{str} when calling set_string(pos,str,enc)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_string(pos,str,enc)"
    end
    # THE METHOD DOC
    #
    # @return [Fixnum]: the return value (todo)
    def length
      @j_del.length
    end
    # THE METHOD DOC
    #
    # @return [::Vertx::Buffer]: the return value (todo)
    def copy
      ::Vertx::Buffer.new(@j_del.copy)
    end
    # THE METHOD DOC
    #
    # @param [Fixnum] start
    # @param [Fixnum] _end
    # @return [::Vertx::Buffer]: the return value (todo)
    def slice(start=nil,_end=nil)
      if start.class == Fixnum
        if _end.class == Fixnum
          return ::Vertx::Buffer.new(@j_del.slice(start,_end))
        end
        raise ArgumentError, "Invalid argument _end=#{_end} when calling slice(start,_end)"
      end
      ::Vertx::Buffer.new(@j_del.slice)
    end
  end
end

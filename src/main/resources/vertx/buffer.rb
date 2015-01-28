require 'vertx/util/utils.rb'
# Generated from io.vertx.core.buffer.Buffer
module Vertx
  #  Most data is shuffled around inside Vert.x using buffers.
  #  <p>
  #  A buffer is a sequence of zero or more bytes that can read from or written to and which expands automatically as
  #  necessary to accommodate any bytes written to it. You can perhaps think of a buffer as smart byte array.
  #  <p>
  #  Please consult the documentation for more information on buffers.
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
    #  Create a new buffer from a string and using the specified encoding.
    #  The string will be encoded into the buffer using the specified encoding.
    # @overload buffer()
    # @overload buffer(initialSizeHint)
    #   @param [Fixnum] initialSizeHint the hint, in bytes
    # @overload buffer(string)
    #   @param [String] string the string
    # @overload buffer(string,enc)
    #   @param [String] string the string
    #   @param [String] enc
    # @return [::Vertx::Buffer] the buffer
    def self.buffer(param_1=nil,param_2=nil)
      if param_1.class == String
        if param_2.class == String
          return ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreBuffer::Buffer.java_class.declared_method(:buffer,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,param_1,param_2))
        end
        return ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreBuffer::Buffer.java_class.declared_method(:buffer,Java::java.lang.String.java_class))).invoke(@j_del,param_1))
      end
      if param_1.class == Fixnum
        return ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreBuffer::Buffer.java_class.declared_method(:buffer,Java::int.java_class))).invoke(@j_del,param_1))
      end
      ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(Java::IoVertxCoreBuffer::Buffer.java_class.declared_method(:buffer))).invoke(@j_del))
    end
    #  Returns a <code>String</code> representation of the Buffer with the encoding specified by <code>enc</code>
    # @param [String] enc
    # @return [String]
    def to_string(enc)
      if enc.class == String
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:toString,Java::java.lang.String.java_class))).invoke(@j_del,enc)
      end
      raise ArgumentError, "Invalid argument enc=#{enc} when calling to_string(enc)"
    end
    #  Returns the <code>byte</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos
    # @return [Fixnum]
    def get_byte(pos)
      if pos.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getByte,Java::int.java_class))).invoke(@j_del,pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_byte(pos)"
    end
    #  Returns the <code>int</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos
    # @return [Fixnum]
    def get_int(pos)
      if pos.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getInt,Java::int.java_class))).invoke(@j_del,pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_int(pos)"
    end
    #  Returns the <code>long</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos
    # @return [Fixnum]
    def get_long(pos)
      if pos.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getLong,Java::int.java_class))).invoke(@j_del,pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_long(pos)"
    end
    #  Returns the <code>double</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos
    # @return [Float]
    def get_double(pos)
      if pos.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getDouble,Java::int.java_class))).invoke(@j_del,pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_double(pos)"
    end
    #  Returns the <code>float</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos
    # @return [Float]
    def get_float(pos)
      if pos.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getFloat,Java::int.java_class))).invoke(@j_del,pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_float(pos)"
    end
    #  Returns the <code>short</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos
    # @return [Fixnum]
    def get_short(pos)
      if pos.class == Fixnum
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getShort,Java::int.java_class))).invoke(@j_del,pos)
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling get_short(pos)"
    end
    #  Returns a copy of a sub-sequence the Buffer as a {::Vertx::Buffer} starting at position <code>start</code>
    #  and ending at position <code>end - 1</code>
    # @param [Fixnum] start
    # @param [Fixnum] _end
    # @return [::Vertx::Buffer]
    def get_buffer(start,_end)
      if start.class == Fixnum
        if _end.class == Fixnum
          return ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getBuffer,Java::int.java_class,Java::int.java_class))).invoke(@j_del,start,_end))
        end
        raise ArgumentError, "Invalid argument _end=#{_end} when calling get_buffer(start,_end)"
      end
      raise ArgumentError, "Invalid argument start=#{start} when calling get_buffer(start,_end)"
    end
    #  Returns a copy of a sub-sequence the Buffer as a <code>String</code> starting at position <code>start</code>
    #  and ending at position <code>end - 1</code> interpreted as a String in the specified encoding
    # @param [Fixnum] start
    # @param [Fixnum] _end
    # @param [String] enc
    # @return [String]
    def get_string(start,_end,enc=nil)
      if start.class == Fixnum
        if _end.class == Fixnum
          if enc.class == String
            return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getString,Java::int.java_class,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,start,_end,enc)
          end
          return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:getString,Java::int.java_class,Java::int.java_class))).invoke(@j_del,start,_end)
        end
        raise ArgumentError, "Invalid argument _end=#{_end} when calling get_string(start,_end,enc)"
      end
      raise ArgumentError, "Invalid argument start=#{start} when calling get_string(start,_end,enc)"
    end
    #  Appends the specified <code>Buffer</code> starting at the <code>offset</code> using <code>len</code> to the end of this Buffer. The buffer will expand as necessary to accommodate
    #  any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [::Vertx::Buffer] buff
    # @param [Fixnum] offset
    # @param [Fixnum] len
    # @return [self]
    def append_buffer(buff,offset=nil,len=nil)
      if buff.class.method_defined?(:j_del)
        if offset.class == Fixnum
          if len.class == Fixnum
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendBuffer,Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::int.java_class))).invoke(@j_del,buff.j_del,offset,len)
            return self
          end
          raise ArgumentError, "Invalid argument len=#{len} when calling append_buffer(buff,offset,len)"
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendBuffer,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,buff.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument buff=#{buff} when calling append_buffer(buff,offset,len)"
    end
    #  Appends the specified <code>byte</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] b
    # @return [self]
    def append_byte(b)
      if b.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendByte,Java::byte.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_byte(b))
        return self
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling append_byte(b)"
    end
    #  Appends the specified <code>int</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i
    # @return [self]
    def append_int(i)
      if i.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendInt,Java::int.java_class))).invoke(@j_del,i)
        return self
      end
      raise ArgumentError, "Invalid argument i=#{i} when calling append_int(i)"
    end
    #  Appends the specified <code>long</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] l
    # @return [self]
    def append_long(l)
      if l.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendLong,Java::long.java_class))).invoke(@j_del,l)
        return self
      end
      raise ArgumentError, "Invalid argument l=#{l} when calling append_long(l)"
    end
    #  Appends the specified <code>short</code> to the end of the Buffer.The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] s
    # @return [self]
    def append_short(s)
      if s.class == Fixnum
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendShort,Java::short.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, "Invalid argument s=#{s} when calling append_short(s)"
    end
    #  Appends the specified <code>float</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Float] f
    # @return [self]
    def append_float(f)
      if f.class == Float
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendFloat,Java::float.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_float(f))
        return self
      end
      raise ArgumentError, "Invalid argument f=#{f} when calling append_float(f)"
    end
    #  Appends the specified <code>double</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Float] d
    # @return [self]
    def append_double(d)
      if d.class == Float
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendDouble,Java::double.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_double(d))
        return self
      end
      raise ArgumentError, "Invalid argument d=#{d} when calling append_double(d)"
    end
    #  Appends the specified <code>String</code> to the end of the Buffer with the encoding as specified by <code>enc</code>.<p>
    #  The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.<p>
    # @param [String] str
    # @param [String] enc
    # @return [self]
    def append_string(str,enc=nil)
      if str.class == String
        if enc.class == String
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendString,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,str,enc)
          return self
        end
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:appendString,Java::java.lang.String.java_class))).invoke(@j_del,str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling append_string(str,enc)"
    end
    #  Sets the <code>byte</code> at position <code>pos</code> in the Buffer to the value <code>b</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [Fixnum] b
    # @return [self]
    def set_byte(pos,b)
      if pos.class == Fixnum
        if b.class == Fixnum
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setByte,Java::int.java_class,Java::byte.java_class))).invoke(@j_del,pos,::Vertx::Util::Utils.to_byte(b))
          return self
        end
        raise ArgumentError, "Invalid argument b=#{b} when calling set_byte(pos,b)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_byte(pos,b)"
    end
    #  Sets the <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [Fixnum] i
    # @return [self]
    def set_int(pos,i)
      if pos.class == Fixnum
        if i.class == Fixnum
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setInt,Java::int.java_class,Java::int.java_class))).invoke(@j_del,pos,i)
          return self
        end
        raise ArgumentError, "Invalid argument i=#{i} when calling set_int(pos,i)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_int(pos,i)"
    end
    #  Sets the <code>long</code> at position <code>pos</code> in the Buffer to the value <code>l</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [Fixnum] l
    # @return [self]
    def set_long(pos,l)
      if pos.class == Fixnum
        if l.class == Fixnum
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setLong,Java::int.java_class,Java::long.java_class))).invoke(@j_del,pos,l)
          return self
        end
        raise ArgumentError, "Invalid argument l=#{l} when calling set_long(pos,l)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_long(pos,l)"
    end
    #  Sets the <code>double</code> at position <code>pos</code> in the Buffer to the value <code>d</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [Float] d
    # @return [self]
    def set_double(pos,d)
      if pos.class == Fixnum
        if d.class == Float
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setDouble,Java::int.java_class,Java::double.java_class))).invoke(@j_del,pos,::Vertx::Util::Utils.to_double(d))
          return self
        end
        raise ArgumentError, "Invalid argument d=#{d} when calling set_double(pos,d)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_double(pos,d)"
    end
    #  Sets the <code>float</code> at position <code>pos</code> in the Buffer to the value <code>f</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [Float] f
    # @return [self]
    def set_float(pos,f)
      if pos.class == Fixnum
        if f.class == Float
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setFloat,Java::int.java_class,Java::float.java_class))).invoke(@j_del,pos,::Vertx::Util::Utils.to_float(f))
          return self
        end
        raise ArgumentError, "Invalid argument f=#{f} when calling set_float(pos,f)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_float(pos,f)"
    end
    #  Sets the <code>short</code> at position <code>pos</code> in the Buffer to the value <code>s</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [Fixnum] s
    # @return [self]
    def set_short(pos,s)
      if pos.class == Fixnum
        if s.class == Fixnum
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setShort,Java::int.java_class,Java::short.java_class))).invoke(@j_del,pos,::Vertx::Util::Utils.to_short(s))
          return self
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling set_short(pos,s)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_short(pos,s)"
    end
    #  Sets the bytes at position <code>pos</code> in the Buffer to the bytes represented by the <code>Buffer b</code> on the given <code>offset</code> and <code>len</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [::Vertx::Buffer] b
    # @param [Fixnum] offset
    # @param [Fixnum] len
    # @return [self]
    def set_buffer(pos,b,offset=nil,len=nil)
      if pos.class == Fixnum
        if b.class.method_defined?(:j_del)
          if offset.class == Fixnum
            if len.class == Fixnum
              (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setBuffer,Java::int.java_class,Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::int.java_class))).invoke(@j_del,pos,b.j_del,offset,len)
              return self
            end
            raise ArgumentError, "Invalid argument len=#{len} when calling set_buffer(pos,b,offset,len)"
          end
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setBuffer,Java::int.java_class,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,pos,b.j_del)
          return self
        end
        raise ArgumentError, "Invalid argument b=#{b} when calling set_buffer(pos,b,offset,len)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_buffer(pos,b,offset,len)"
    end
    #  Sets the bytes at position <code>pos</code> in the Buffer to the value of <code>str</code> encoded in encoding <code>enc</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos
    # @param [String] str
    # @param [String] enc
    # @return [self]
    def set_string(pos,str,enc=nil)
      if pos.class == Fixnum
        if str.class == String
          if enc.class == String
            (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setString,Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class))).invoke(@j_del,pos,str,enc)
            return self
          end
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setString,Java::int.java_class,Java::java.lang.String.java_class))).invoke(@j_del,pos,str)
          return self
        end
        raise ArgumentError, "Invalid argument str=#{str} when calling set_string(pos,str,enc)"
      end
      raise ArgumentError, "Invalid argument pos=#{pos} when calling set_string(pos,str,enc)"
    end
    #  Returns the length of the buffer, measured in bytes.
    #  All positions are indexed from zero.
    # @return [Fixnum]
    def length
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:length))).invoke(@j_del)
    end
    #  Returns a copy of the entire Buffer.
    # @return [::Vertx::Buffer]
    def copy
      ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:copy))).invoke(@j_del))
    end
    #  Returns a slice of this buffer. Modifying the content
    #  of the returned buffer or this buffer affects each other's content
    #  while they maintain separate indexes and marks.
    # @param [Fixnum] start
    # @param [Fixnum] _end
    # @return [::Vertx::Buffer]
    def slice(start=nil,_end=nil)
      if start.class == Fixnum
        if _end.class == Fixnum
          return ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:slice,Java::int.java_class,Java::int.java_class))).invoke(@j_del,start,_end))
        end
        raise ArgumentError, "Invalid argument _end=#{_end} when calling slice(start,_end)"
      end
      ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:slice))).invoke(@j_del))
    end
  end
end

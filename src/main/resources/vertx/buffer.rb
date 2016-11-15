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
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == Buffer
    end
    def @@j_api_type.wrap(obj)
      Buffer.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreBuffer::Buffer.java_class
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
      if !block_given? && param_1 == nil && param_2 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreBuffer::Buffer.java_method(:buffer, []).call(),::Vertx::Buffer)
      elsif param_1.class == Fixnum && !block_given? && param_2 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreBuffer::Buffer.java_method(:buffer, [Java::int.java_class]).call(param_1),::Vertx::Buffer)
      elsif param_1.class == String && !block_given? && param_2 == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreBuffer::Buffer.java_method(:buffer, [Java::java.lang.String.java_class]).call(param_1),::Vertx::Buffer)
      elsif param_1.class == String && param_2.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreBuffer::Buffer.java_method(:buffer, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(param_1,param_2),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling buffer(#{param_1},#{param_2})"
    end
    #  Returns a <code>String</code> representation of the Buffer with the encoding specified by <code>enc</code>
    # @param [String] enc 
    # @return [String]
    def to_string(enc=nil)
      if !block_given? && enc == nil
        return @j_del.java_method(:toString, []).call()
      elsif enc.class == String && !block_given?
        return @j_del.java_method(:toString, [Java::java.lang.String.java_class]).call(enc)
      end
      raise ArgumentError, "Invalid arguments when calling to_string(#{enc})"
    end
    #  Returns a Json object representation of the Buffer
    # @return [Hash{String => Object}]
    def to_json_object
      if !block_given?
        return @j_del.java_method(:toJsonObject, []).call() != nil ? JSON.parse(@j_del.java_method(:toJsonObject, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling to_json_object()"
    end
    #  Returns a Json array representation of the Buffer
    # @return [Array<String,Object>]
    def to_json_array
      if !block_given?
        return @j_del.java_method(:toJsonArray, []).call() != nil ? JSON.parse(@j_del.java_method(:toJsonArray, []).call().encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling to_json_array()"
    end
    #  Returns the <code>byte</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_byte(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getByte, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_byte(#{pos})"
    end
    #  Returns the unsigned <code>byte</code> at position <code>pos</code> in the Buffer, as a <code>short</code>.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_byte(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedByte, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_byte(#{pos})"
    end
    #  Returns the <code>int</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_int(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getInt, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_int(#{pos})"
    end
    #  Gets a 32-bit integer at the specified absolute <code>index</code> in this buffer with Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_int_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getIntLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_int_le(#{pos})"
    end
    #  Returns the unsigned <code>int</code> at position <code>pos</code> in the Buffer, as a <code>long</code>.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_int(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedInt, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_int(#{pos})"
    end
    #  Returns the unsigned <code>int</code> at position <code>pos</code> in the Buffer, as a <code>long</code> in Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_int_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedIntLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_int_le(#{pos})"
    end
    #  Returns the <code>long</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_long(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getLong, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_long(#{pos})"
    end
    #  Gets a 64-bit long integer at the specified absolute <code>index</code> in this buffer in Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_long_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getLongLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_long_le(#{pos})"
    end
    #  Returns the <code>double</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos 
    # @return [Float]
    def get_double(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getDouble, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_double(#{pos})"
    end
    #  Returns the <code>float</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos 
    # @return [Float]
    def get_float(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getFloat, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_float(#{pos})"
    end
    #  Returns the <code>short</code> at position <code>pos</code> in the Buffer.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_short(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getShort, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_short(#{pos})"
    end
    #  Gets a 16-bit short integer at the specified absolute <code>index</code> in this buffer in Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_short_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getShortLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_short_le(#{pos})"
    end
    #  Returns the unsigned <code>short</code> at position <code>pos</code> in the Buffer, as an <code>int</code>.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_short(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedShort, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_short(#{pos})"
    end
    #  Gets an unsigned 16-bit short integer at the specified absolute <code>index</code> in this buffer in Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_short_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedShortLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_short_le(#{pos})"
    end
    #  Gets a 24-bit medium integer at the specified absolute <code>index</code> in this buffer.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_medium(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getMedium, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_medium(#{pos})"
    end
    #  Gets a 24-bit medium integer at the specified absolute <code>index</code> in this buffer in the Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_medium_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getMediumLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_medium_le(#{pos})"
    end
    #  Gets an unsigned 24-bit medium integer at the specified absolute <code>index</code> in this buffer.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_medium(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedMedium, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_medium(#{pos})"
    end
    #  Gets an unsigned 24-bit medium integer at the specified absolute <code>index</code> in this buffer in Little Endian Byte Order.
    # @param [Fixnum] pos 
    # @return [Fixnum]
    def get_unsigned_medium_le(pos=nil)
      if pos.class == Fixnum && !block_given?
        return @j_del.java_method(:getUnsignedMediumLE, [Java::int.java_class]).call(pos)
      end
      raise ArgumentError, "Invalid arguments when calling get_unsigned_medium_le(#{pos})"
    end
    #  Returns a copy of a sub-sequence the Buffer as a {::Vertx::Buffer} starting at position <code>start</code>
    #  and ending at position <code>end - 1</code>
    # @param [Fixnum] start 
    # @param [Fixnum] _end 
    # @return [::Vertx::Buffer]
    def get_buffer(start=nil,_end=nil)
      if start.class == Fixnum && _end.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:getBuffer, [Java::int.java_class,Java::int.java_class]).call(start,_end),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling get_buffer(#{start},#{_end})"
    end
    #  Returns a copy of a sub-sequence the Buffer as a <code>String</code> starting at position <code>start</code>
    #  and ending at position <code>end - 1</code> interpreted as a String in the specified encoding
    # @param [Fixnum] start 
    # @param [Fixnum] _end 
    # @param [String] enc 
    # @return [String]
    def get_string(start=nil,_end=nil,enc=nil)
      if start.class == Fixnum && _end.class == Fixnum && !block_given? && enc == nil
        return @j_del.java_method(:getString, [Java::int.java_class,Java::int.java_class]).call(start,_end)
      elsif start.class == Fixnum && _end.class == Fixnum && enc.class == String && !block_given?
        return @j_del.java_method(:getString, [Java::int.java_class,Java::int.java_class,Java::java.lang.String.java_class]).call(start,_end,enc)
      end
      raise ArgumentError, "Invalid arguments when calling get_string(#{start},#{_end},#{enc})"
    end
    #  Appends the specified <code>Buffer</code> starting at the <code>offset</code> using <code>len</code> to the end of this Buffer. The buffer will expand as necessary to accommodate
    #  any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [::Vertx::Buffer] buff 
    # @param [Fixnum] offset 
    # @param [Fixnum] len 
    # @return [self]
    def append_buffer(buff=nil,offset=nil,len=nil)
      if buff.class.method_defined?(:j_del) && !block_given? && offset == nil && len == nil
        @j_del.java_method(:appendBuffer, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(buff.j_del)
        return self
      elsif buff.class.method_defined?(:j_del) && offset.class == Fixnum && len.class == Fixnum && !block_given?
        @j_del.java_method(:appendBuffer, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::int.java_class]).call(buff.j_del,offset,len)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_buffer(#{buff},#{offset},#{len})"
    end
    #  Appends the specified <code>byte</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] b 
    # @return [self]
    def append_byte(b=nil)
      if b.class == Fixnum && !block_given?
        @j_del.java_method(:appendByte, [Java::byte.java_class]).call(::Vertx::Util::Utils.to_byte(b))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_byte(#{b})"
    end
    #  Appends the specified unsigned <code>byte</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] b 
    # @return [self]
    def append_unsigned_byte(b=nil)
      if b.class == Fixnum && !block_given?
        @j_del.java_method(:appendUnsignedByte, [Java::short.java_class]).call(::Vertx::Util::Utils.to_short(b))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_unsigned_byte(#{b})"
    end
    #  Appends the specified <code>int</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i 
    # @return [self]
    def append_int(i=nil)
      if i.class == Fixnum && !block_given?
        @j_del.java_method(:appendInt, [Java::int.java_class]).call(i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_int(#{i})"
    end
    #  Appends the specified <code>int</code> to the end of the Buffer in the Little Endian Byte Order. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i 
    # @return [self]
    def append_int_le(i=nil)
      if i.class == Fixnum && !block_given?
        @j_del.java_method(:appendIntLE, [Java::int.java_class]).call(i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_int_le(#{i})"
    end
    #  Appends the specified unsigned <code>int</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i 
    # @return [self]
    def append_unsigned_int(i=nil)
      if i.class == Fixnum && !block_given?
        @j_del.java_method(:appendUnsignedInt, [Java::long.java_class]).call(i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_unsigned_int(#{i})"
    end
    #  Appends the specified unsigned <code>int</code> to the end of the Buffer in the Little Endian Byte Order. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i 
    # @return [self]
    def append_unsigned_int_le(i=nil)
      if i.class == Fixnum && !block_given?
        @j_del.java_method(:appendUnsignedIntLE, [Java::long.java_class]).call(i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_unsigned_int_le(#{i})"
    end
    #  Appends the specified 24bit <code>int</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i 
    # @return [self]
    def append_medium(i=nil)
      if i.class == Fixnum && !block_given?
        @j_del.java_method(:appendMedium, [Java::int.java_class]).call(i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_medium(#{i})"
    end
    #  Appends the specified 24bit <code>int</code> to the end of the Buffer in the Little Endian Byte Order. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] i 
    # @return [self]
    def append_medium_le(i=nil)
      if i.class == Fixnum && !block_given?
        @j_del.java_method(:appendMediumLE, [Java::int.java_class]).call(i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_medium_le(#{i})"
    end
    #  Appends the specified <code>long</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] l 
    # @return [self]
    def append_long(l=nil)
      if l.class == Fixnum && !block_given?
        @j_del.java_method(:appendLong, [Java::long.java_class]).call(l)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_long(#{l})"
    end
    #  Appends the specified <code>long</code> to the end of the Buffer in the Little Endian Byte Order. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] l 
    # @return [self]
    def append_long_le(l=nil)
      if l.class == Fixnum && !block_given?
        @j_del.java_method(:appendLongLE, [Java::long.java_class]).call(l)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_long_le(#{l})"
    end
    #  Appends the specified <code>short</code> to the end of the Buffer.The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] s 
    # @return [self]
    def append_short(s=nil)
      if s.class == Fixnum && !block_given?
        @j_del.java_method(:appendShort, [Java::short.java_class]).call(::Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_short(#{s})"
    end
    #  Appends the specified <code>short</code> to the end of the Buffer in the Little Endian Byte Order.The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] s 
    # @return [self]
    def append_short_le(s=nil)
      if s.class == Fixnum && !block_given?
        @j_del.java_method(:appendShortLE, [Java::short.java_class]).call(::Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_short_le(#{s})"
    end
    #  Appends the specified unsigned <code>short</code> to the end of the Buffer.The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] s 
    # @return [self]
    def append_unsigned_short(s=nil)
      if s.class == Fixnum && !block_given?
        @j_del.java_method(:appendUnsignedShort, [Java::int.java_class]).call(s)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_unsigned_short(#{s})"
    end
    #  Appends the specified unsigned <code>short</code> to the end of the Buffer in the Little Endian Byte Order.The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Fixnum] s 
    # @return [self]
    def append_unsigned_short_le(s=nil)
      if s.class == Fixnum && !block_given?
        @j_del.java_method(:appendUnsignedShortLE, [Java::int.java_class]).call(s)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_unsigned_short_le(#{s})"
    end
    #  Appends the specified <code>float</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Float] f 
    # @return [self]
    def append_float(f=nil)
      if f.class == Float && !block_given?
        @j_del.java_method(:appendFloat, [Java::float.java_class]).call(::Vertx::Util::Utils.to_float(f))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_float(#{f})"
    end
    #  Appends the specified <code>double</code> to the end of the Buffer. The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.
    # @param [Float] d 
    # @return [self]
    def append_double(d=nil)
      if d.class == Float && !block_given?
        @j_del.java_method(:appendDouble, [Java::double.java_class]).call(::Vertx::Util::Utils.to_double(d))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_double(#{d})"
    end
    #  Appends the specified <code>String</code> to the end of the Buffer with the encoding as specified by <code>enc</code>.<p>
    #  The buffer will expand as necessary to accommodate any bytes written.<p>
    #  Returns a reference to <code>this</code> so multiple operations can be appended together.<p>
    # @param [String] str 
    # @param [String] enc 
    # @return [self]
    def append_string(str=nil,enc=nil)
      if str.class == String && !block_given? && enc == nil
        @j_del.java_method(:appendString, [Java::java.lang.String.java_class]).call(str)
        return self
      elsif str.class == String && enc.class == String && !block_given?
        @j_del.java_method(:appendString, [Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(str,enc)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling append_string(#{str},#{enc})"
    end
    #  Sets the <code>byte</code> at position <code>pos</code> in the Buffer to the value <code>b</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] b 
    # @return [self]
    def set_byte(pos=nil,b=nil)
      if pos.class == Fixnum && b.class == Fixnum && !block_given?
        @j_del.java_method(:setByte, [Java::int.java_class,Java::byte.java_class]).call(pos,::Vertx::Util::Utils.to_byte(b))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_byte(#{pos},#{b})"
    end
    #  Sets the unsigned <code>byte</code> at position <code>pos</code> in the Buffer to the value <code>b</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] b 
    # @return [self]
    def set_unsigned_byte(pos=nil,b=nil)
      if pos.class == Fixnum && b.class == Fixnum && !block_given?
        @j_del.java_method(:setUnsignedByte, [Java::int.java_class,Java::short.java_class]).call(pos,::Vertx::Util::Utils.to_short(b))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_unsigned_byte(#{pos},#{b})"
    end
    #  Sets the <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] i 
    # @return [self]
    def set_int(pos=nil,i=nil)
      if pos.class == Fixnum && i.class == Fixnum && !block_given?
        @j_del.java_method(:setInt, [Java::int.java_class,Java::int.java_class]).call(pos,i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_int(#{pos},#{i})"
    end
    #  Sets the <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code> in the Little Endian Byte Order.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] i 
    # @return [self]
    def set_int_le(pos=nil,i=nil)
      if pos.class == Fixnum && i.class == Fixnum && !block_given?
        @j_del.java_method(:setIntLE, [Java::int.java_class,Java::int.java_class]).call(pos,i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_int_le(#{pos},#{i})"
    end
    #  Sets the unsigned <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] i 
    # @return [self]
    def set_unsigned_int(pos=nil,i=nil)
      if pos.class == Fixnum && i.class == Fixnum && !block_given?
        @j_del.java_method(:setUnsignedInt, [Java::int.java_class,Java::long.java_class]).call(pos,i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_unsigned_int(#{pos},#{i})"
    end
    #  Sets the unsigned <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code> in the Little Endian Byte Order.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] i 
    # @return [self]
    def set_unsigned_int_le(pos=nil,i=nil)
      if pos.class == Fixnum && i.class == Fixnum && !block_given?
        @j_del.java_method(:setUnsignedIntLE, [Java::int.java_class,Java::long.java_class]).call(pos,i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_unsigned_int_le(#{pos},#{i})"
    end
    #  Sets the 24bit <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] i 
    # @return [self]
    def set_medium(pos=nil,i=nil)
      if pos.class == Fixnum && i.class == Fixnum && !block_given?
        @j_del.java_method(:setMedium, [Java::int.java_class,Java::int.java_class]).call(pos,i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_medium(#{pos},#{i})"
    end
    #  Sets the 24bit <code>int</code> at position <code>pos</code> in the Buffer to the value <code>i</code>. in the Little Endian Byte Order<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] i 
    # @return [self]
    def set_medium_le(pos=nil,i=nil)
      if pos.class == Fixnum && i.class == Fixnum && !block_given?
        @j_del.java_method(:setMediumLE, [Java::int.java_class,Java::int.java_class]).call(pos,i)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_medium_le(#{pos},#{i})"
    end
    #  Sets the <code>long</code> at position <code>pos</code> in the Buffer to the value <code>l</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] l 
    # @return [self]
    def set_long(pos=nil,l=nil)
      if pos.class == Fixnum && l.class == Fixnum && !block_given?
        @j_del.java_method(:setLong, [Java::int.java_class,Java::long.java_class]).call(pos,l)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_long(#{pos},#{l})"
    end
    #  Sets the <code>long</code> at position <code>pos</code> in the Buffer to the value <code>l</code> in the Little Endian Byte Order.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] l 
    # @return [self]
    def set_long_le(pos=nil,l=nil)
      if pos.class == Fixnum && l.class == Fixnum && !block_given?
        @j_del.java_method(:setLongLE, [Java::int.java_class,Java::long.java_class]).call(pos,l)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_long_le(#{pos},#{l})"
    end
    #  Sets the <code>double</code> at position <code>pos</code> in the Buffer to the value <code>d</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Float] d 
    # @return [self]
    def set_double(pos=nil,d=nil)
      if pos.class == Fixnum && d.class == Float && !block_given?
        @j_del.java_method(:setDouble, [Java::int.java_class,Java::double.java_class]).call(pos,::Vertx::Util::Utils.to_double(d))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_double(#{pos},#{d})"
    end
    #  Sets the <code>float</code> at position <code>pos</code> in the Buffer to the value <code>f</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Float] f 
    # @return [self]
    def set_float(pos=nil,f=nil)
      if pos.class == Fixnum && f.class == Float && !block_given?
        @j_del.java_method(:setFloat, [Java::int.java_class,Java::float.java_class]).call(pos,::Vertx::Util::Utils.to_float(f))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_float(#{pos},#{f})"
    end
    #  Sets the <code>short</code> at position <code>pos</code> in the Buffer to the value <code>s</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] s 
    # @return [self]
    def set_short(pos=nil,s=nil)
      if pos.class == Fixnum && s.class == Fixnum && !block_given?
        @j_del.java_method(:setShort, [Java::int.java_class,Java::short.java_class]).call(pos,::Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_short(#{pos},#{s})"
    end
    #  Sets the <code>short</code> at position <code>pos</code> in the Buffer to the value <code>s</code> in the Little Endian Byte Order.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] s 
    # @return [self]
    def set_short_le(pos=nil,s=nil)
      if pos.class == Fixnum && s.class == Fixnum && !block_given?
        @j_del.java_method(:setShortLE, [Java::int.java_class,Java::short.java_class]).call(pos,::Vertx::Util::Utils.to_short(s))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_short_le(#{pos},#{s})"
    end
    #  Sets the unsigned <code>short</code> at position <code>pos</code> in the Buffer to the value <code>s</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] s 
    # @return [self]
    def set_unsigned_short(pos=nil,s=nil)
      if pos.class == Fixnum && s.class == Fixnum && !block_given?
        @j_del.java_method(:setUnsignedShort, [Java::int.java_class,Java::int.java_class]).call(pos,s)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_unsigned_short(#{pos},#{s})"
    end
    #  Sets the unsigned <code>short</code> at position <code>pos</code> in the Buffer to the value <code>s</code> in the Little Endian Byte Order.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [Fixnum] s 
    # @return [self]
    def set_unsigned_short_le(pos=nil,s=nil)
      if pos.class == Fixnum && s.class == Fixnum && !block_given?
        @j_del.java_method(:setUnsignedShortLE, [Java::int.java_class,Java::int.java_class]).call(pos,s)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_unsigned_short_le(#{pos},#{s})"
    end
    #  Sets the bytes at position <code>pos</code> in the Buffer to the bytes represented by the <code>Buffer b</code> on the given <code>offset</code> and <code>len</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [::Vertx::Buffer] b 
    # @param [Fixnum] offset 
    # @param [Fixnum] len 
    # @return [self]
    def set_buffer(pos=nil,b=nil,offset=nil,len=nil)
      if pos.class == Fixnum && b.class.method_defined?(:j_del) && !block_given? && offset == nil && len == nil
        @j_del.java_method(:setBuffer, [Java::int.java_class,Java::IoVertxCoreBuffer::Buffer.java_class]).call(pos,b.j_del)
        return self
      elsif pos.class == Fixnum && b.class.method_defined?(:j_del) && offset.class == Fixnum && len.class == Fixnum && !block_given?
        @j_del.java_method(:setBuffer, [Java::int.java_class,Java::IoVertxCoreBuffer::Buffer.java_class,Java::int.java_class,Java::int.java_class]).call(pos,b.j_del,offset,len)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_buffer(#{pos},#{b},#{offset},#{len})"
    end
    #  Sets the bytes at position <code>pos</code> in the Buffer to the value of <code>str</code> encoded in encoding <code>enc</code>.<p>
    #  The buffer will expand as necessary to accommodate any value written.
    # @param [Fixnum] pos 
    # @param [String] str 
    # @param [String] enc 
    # @return [self]
    def set_string(pos=nil,str=nil,enc=nil)
      if pos.class == Fixnum && str.class == String && !block_given? && enc == nil
        @j_del.java_method(:setString, [Java::int.java_class,Java::java.lang.String.java_class]).call(pos,str)
        return self
      elsif pos.class == Fixnum && str.class == String && enc.class == String && !block_given?
        @j_del.java_method(:setString, [Java::int.java_class,Java::java.lang.String.java_class,Java::java.lang.String.java_class]).call(pos,str,enc)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_string(#{pos},#{str},#{enc})"
    end
    #  Returns the length of the buffer, measured in bytes.
    #  All positions are indexed from zero.
    # @return [Fixnum]
    def length
      if !block_given?
        return @j_del.java_method(:length, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling length()"
    end
    #  Returns a copy of the entire Buffer.
    # @return [::Vertx::Buffer]
    def copy
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:copy, []).call(),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling copy()"
    end
    #  Returns a slice of this buffer. Modifying the content
    #  of the returned buffer or this buffer affects each other's content
    #  while they maintain separate indexes and marks.
    # @param [Fixnum] start 
    # @param [Fixnum] _end 
    # @return [::Vertx::Buffer]
    def slice(start=nil,_end=nil)
      if !block_given? && start == nil && _end == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:slice, []).call(),::Vertx::Buffer)
      elsif start.class == Fixnum && _end.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:slice, [Java::int.java_class,Java::int.java_class]).call(start,_end),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling slice(#{start},#{_end})"
    end
  end
end

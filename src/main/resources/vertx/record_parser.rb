require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.parsetools.RecordParser
module Vertx
  #  A helper class which allows you to easily parse protocols which are delimited by a sequence of bytes, or fixed
  #  size records.
  #  <p>
  #  Instances of this class take as input {::Vertx::Buffer} instances containing raw bytes,
  #  and output records.
  #  <p>
  #  For example, if I had a simple ASCII text protocol delimited by '\n' and the input was the following:
  #  <p>
  #  <pre>
  #  buffer1:HELLO\nHOW ARE Y
  #  buffer2:OU?\nI AM
  #  buffer3: DOING OK
  #  buffer4:\n
  #  </pre>
  #  Then the output would be:<p>
  #  <pre>
  #  buffer1:HELLO
  #  buffer2:HOW ARE YOU?
  #  buffer3:I AM DOING OK
  #  </pre>
  #  Instances of this class can be changed between delimited mode and fixed size record mode on the fly as
  #  individual records are read, this allows you to parse protocols where, for example, the first 5 records might
  #  all be fixed size (of potentially different sizes), followed by some delimited records, followed by more fixed
  #  size records.
  #  <p>
  #  Instances of this class can't currently be used for protocols where the text is encoded with something other than
  #  a 1-1 byte-char mapping.
  #  <p>
  #  Please see the documentation for more information.
  class RecordParser
    # @private
    # @param j_del [::Vertx::RecordParser] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::RecordParser] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == RecordParser
    end
    def @@j_api_type.wrap(obj)
      RecordParser.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreParsetools::RecordParser.java_class
    end
    # @yield 
    # @return [void]
    def set_output
      if block_given?
        return @j_del.java_method(:setOutput, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) }))
      end
      raise ArgumentError, "Invalid arguments when calling set_output()"
    end
    #  Create a new <code>RecordParser</code> instance, initially in delimited mode, and where the delimiter can be represented
    #  by the <code>Buffer</code> delim.
    #  <p>
    #  <code>output</code> Will receive whole records which have been parsed.
    # @overload newDelimited(delim,output)
    #   @param [String] delim the initial delimiter string
    #   @yield handler that will receive the output
    # @overload newDelimited(delim,output)
    #   @param [::Vertx::Buffer] delim the initial delimiter buffer
    #   @yield handler that will receive the output
    # @return [::Vertx::RecordParser]
    def self.new_delimited(param_1=nil)
      if param_1.class == String && block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreParsetools::RecordParser.java_method(:newDelimited, [Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1,(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) })),::Vertx::RecordParser)
      elsif param_1.class.method_defined?(:j_del) && block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreParsetools::RecordParser.java_method(:newDelimited, [Java::IoVertxCoreBuffer::Buffer.java_class,Java::IoVertxCore::Handler.java_class]).call(param_1.j_del,(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) })),::Vertx::RecordParser)
      end
      raise ArgumentError, "Invalid arguments when calling new_delimited(#{param_1})"
    end
    #  Create a new <code>RecordParser</code> instance, initially in fixed size mode, and where the record size is specified
    #  by the <code>size</code> parameter.
    #  <p>
    #  <code>output</code> Will receive whole records which have been parsed.
    # @param [Fixnum] size the initial record size
    # @yield handler that will receive the output
    # @return [::Vertx::RecordParser]
    def self.new_fixed(size=nil)
      if size.class == Fixnum && block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreParsetools::RecordParser.java_method(:newFixed, [Java::int.java_class,Java::IoVertxCore::Handler.java_class]).call(size,(Proc.new { |event| yield(::Vertx::Util::Utils.safe_create(event,::Vertx::Buffer)) })),::Vertx::RecordParser)
      end
      raise ArgumentError, "Invalid arguments when calling new_fixed(#{size})"
    end
    #  Flip the parser into delimited mode, and where the delimiter can be represented
    #  by the delimiter <code>delim</code>.
    #  <p>
    #  This method can be called multiple times with different values of delim while data is being parsed.
    # @overload delimitedMode(delim)
    #   @param [String] delim the new delimeter
    # @overload delimitedMode(delim)
    #   @param [::Vertx::Buffer] delim the new delimiter
    # @return [void]
    def delimited_mode(param_1=nil)
      if param_1.class == String && !block_given?
        return @j_del.java_method(:delimitedMode, [Java::java.lang.String.java_class]).call(param_1)
      elsif param_1.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:delimitedMode, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(param_1.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling delimited_mode(#{param_1})"
    end
    #  Flip the parser into fixed size mode, where the record size is specified by <code>size</code> in bytes.
    #  <p>
    #  This method can be called multiple times with different values of size while data is being parsed.
    # @param [Fixnum] size the new record size
    # @return [void]
    def fixed_size_mode(size=nil)
      if size.class == Fixnum && !block_given?
        return @j_del.java_method(:fixedSizeMode, [Java::int.java_class]).call(size)
      end
      raise ArgumentError, "Invalid arguments when calling fixed_size_mode(#{size})"
    end
    #  This method is called to provide the parser with data.
    # @param [::Vertx::Buffer] buffer a chunk of data
    # @return [void]
    def handle(buffer=nil)
      if buffer.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handle, [Java::IoVertxCoreBuffer::Buffer.java_class]).call(buffer.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle(#{buffer})"
    end
  end
end

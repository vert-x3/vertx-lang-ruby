require 'json'
require 'set'
java_import 'io.vertx.core.json.JsonObject'
java_import 'io.vertx.core.json.JsonArray'
module Vertx
  module Util
    class Utils
      def self.raise_runtime_exception(err)
        raise err.getMessage
      end
      def self.from_throwable(err)
        begin
          raise_runtime_exception(err)
        rescue Exception => e;
          return e;
        end
      end
      def self.to_throwable(err)
        Java::IoVertxLangRuby::Helper.catchAndReturnThrowable(Proc.new { raise err });
      end
      def self.safe_create(object, clazz, *args)
        if nil != object
          return clazz.new(object, *args)
        end
        return nil
      end
      def self.to_object(object)
        if object.is_a? Hash
          JsonObject.new(JSON.generate(object))
        elsif object.is_a? Array
          JsonArray.new(JSON.generate(object))
        else
          # Best effort, we let jruby handle the conversion
          object
        end
      end
      def self.to_string(val)
        if val != nil && val.class == String
          val
        else
          raise ArgumentError, 'Only String accepted'
        end
      end
      def self.to_long(val)
        if val != nil && val.class == Fixnum
          Java::JavaLang::Long.new(val)
        else
          raise ArgumentError, 'Only Fixnum accepted'
        end
      end
      def self.to_integer(val)
        if val != nil && val.class == Fixnum
          Java::JavaLang::Integer.new(val)
        else
          raise ArgumentError, 'Only Fixnum accepted'
        end
      end
      def self.to_short(val)
        if val != nil && val.class == Fixnum
          Java::JavaLang::Short.new(val)
        else
          raise ArgumentError, 'Only Fixnum accepted'
        end
      end
      def self.to_byte(val)
        if val != nil && val.class == Fixnum
          Java::JavaLang::Byte.new(val)
        else
          raise ArgumentError, 'Only Fixnum accepted'
        end
      end
      def self.to_character(val)
        if val != nil && val.class == Fixnum
          Java::JavaLang::Character.new(val)
        else
          raise ArgumentError, 'Only Fixnum accepted'
        end
      end
      def self.to_boolean(val)
        if val
          true
        else
          false
        end
      end
      def self.to_float(val)
        if val != nil && val.class == Float
          Java::JavaLang::Float.new(val)
        else
          raise ArgumentError, 'Only Float accepted'
        end
      end
      def self.to_double(val)
        if val != nil && val.class == Float
          Java::JavaLang::Double.new(val)
        else
          raise ArgumentError, 'Only Float accepted'
        end
      end
      def self.to_json_object(val)
        if val != nil && val.is_a?(Hash)
          JsonObject.new(JSON.generate(val))
        else
          raise ArgumentError, 'Only Hash accepted'
        end
      end
      def self.to_json_array(val)
        if val.is_a? Array
          return to_json_object({:key=>val}).getJsonArray('key')
        else
          raise ArgumentError, 'Only Array accepted'
        end
      end
      def self.from_object(object)
        if object.is_a?(JsonObject) || object.is_a?(JsonArray)
          JSON.parse(object.encode)
        else
          # Best effort, we let jruby handle the conversion
          object
        end
      end
      def self.to_set(set)
        ret = Set.new
        set.each { |elt| ret.add elt }
        ret
      end
      def self.to_handler_proc(handler, &converter)
        Proc.new { |val|
          val = yield val;
          handler.handle(val);
        }
      end
      def self.to_async_result_handler_proc(handler, &converter)
        Proc.new { |err,val|
          if nil != err
            handler.handle(Java::IoVertxLangRuby::Helper.failedResult(err));
          else
            val = yield val;
            handler.handle(Java::IoVertxLangRuby::Helper.succeededResult(val));
          end
        }
      end
      def self.v_type_of ruby_type
        if ruby_type.respond_to? :j_api_type
          ruby_type.j_api_type
        else
          ::Vertx::Util.unknown_type
        end
      end
      def self.j_class_of ruby_type
        if ruby_type.respond_to? :j_class
          ruby_type.j_class
        else
          if ruby_type == Hash
            Java::IoVertxCoreJson::JsonObject.java_class
          else
            nil
          end
        end
      end
    end

    @@unknown_type = Object.new
    def @@unknown_type.accept?(obj)
      obj.class == String  || obj.class == Hash || obj.class == Array || obj.class == NilClass || obj.class == TrueClass || obj.class == FalseClass || obj.class == Fixnum || obj.class == Float
    end
    def @@unknown_type.wrap(obj)
      Vertx::Util::Utils.from_object(obj)
    end
    def @@unknown_type.unwrap(obj)
      Vertx::Util::Utils.to_object(obj)
    end
    def self.unknown_type
      @@unknown_type
    end

    class HashProxy < Hash
      def initialize
        super
      end
      def [](key)
        val = super(key)
        puts "getting #{key} = #{val}"
        val
      end
      def []=(key,val)
        super(key,val)
        puts "putting #{key}=#{val}"
      end
    end
  end
end

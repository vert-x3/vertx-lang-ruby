require 'json'
java_import 'io.vertx.core.json.JsonObject'
java_import 'io.vertx.core.json.JsonArray'
module Vertx
  module Util
    class Utils
      def self.to_object(object)
        if object.is_a? Hash
          JsonObject.new(JSON.generate(object))
        elsif object.is_a? Array
          JsonArray.new(JSON.generate(object))
        elsif object.is_a? String
          object
        else
          raise "conversion of #{object.class} not implemented"
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
      def self.to_json_object(hash)
        if hash.is_a? Hash
          JsonObject.new(JSON.generate(hash))
        else
          raise "Not a json object #{hash}"
        end
      end
      def self.to_json_array(array)
        if array.is_a? Array
          return to_json_object({"key"=>array}).getJsonArray("key")
        else
          raise "Not a json array: #{array}"
        end
      end
    end
  end
end
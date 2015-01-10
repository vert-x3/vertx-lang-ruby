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
        if object.is_a? String
          object;
        elsif object.is_a?(JsonObject) || object.is_a?(JsonArray)
          JSON.parse(object.encode)
        else
          raise "conversion of type #{object.class} not implemented"
        end
      end
      def self.to_json_object(hash)
        if hash.is_a? Hash
          JsonObject.new(JSON.generate(hash))
        else
          raise "conversion of #{hash} not implemented"
        end
      end
    end
  end
end
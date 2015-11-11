require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.DataObjectTCK
module Testmodel
  #  todo:
  #  - Buffer support
  class DataObjectTCK
    # @private
    # @param j_del [::Testmodel::DataObjectTCK] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::DataObjectTCK] the underlying java delegate
    def j_del
      @j_del
    end
    # @return [Hash]
    def get_data_object_with_values
      if !block_given?
        return @j_del.java_method(:getDataObjectWithValues, []).call() != nil ? JSON.parse(@j_del.java_method(:getDataObjectWithValues, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling get_data_object_with_values()"
    end
    # @param [Hash] dataObject 
    # @return [void]
    def set_data_object_with_values(dataObject=nil)
      if dataObject.class == Hash && !block_given?
        return @j_del.java_method(:setDataObjectWithValues, [Java::IoVertxCodegenTestmodel::DataObjectWithValues.java_class]).call(Java::IoVertxCodegenTestmodel::DataObjectWithValues.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid arguments when calling set_data_object_with_values(dataObject)"
    end
    # @return [Hash]
    def get_data_object_with_lists
      if !block_given?
        return @j_del.java_method(:getDataObjectWithLists, []).call() != nil ? JSON.parse(@j_del.java_method(:getDataObjectWithLists, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling get_data_object_with_lists()"
    end
    # @param [Hash] dataObject 
    # @return [void]
    def set_data_object_with_lists(dataObject=nil)
      if dataObject.class == Hash && !block_given?
        return @j_del.java_method(:setDataObjectWithLists, [Java::IoVertxCodegenTestmodel::DataObjectWithLists.java_class]).call(Java::IoVertxCodegenTestmodel::DataObjectWithLists.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid arguments when calling set_data_object_with_lists(dataObject)"
    end
    # @return [Hash]
    def get_data_object_with_maps
      if !block_given?
        return @j_del.java_method(:getDataObjectWithMaps, []).call() != nil ? JSON.parse(@j_del.java_method(:getDataObjectWithMaps, []).call().toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling get_data_object_with_maps()"
    end
    # @param [Hash] dataObject 
    # @return [void]
    def set_data_object_with_maps(dataObject=nil)
      if dataObject.class == Hash && !block_given?
        return @j_del.java_method(:setDataObjectWithMaps, [Java::IoVertxCodegenTestmodel::DataObjectWithMaps.java_class]).call(Java::IoVertxCodegenTestmodel::DataObjectWithMaps.new(::Vertx::Util::Utils.to_json_object(dataObject)))
      end
      raise ArgumentError, "Invalid arguments when calling set_data_object_with_maps(dataObject)"
    end
  end
end

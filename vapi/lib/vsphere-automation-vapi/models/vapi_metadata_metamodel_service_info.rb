# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'date'

module VSphereAutomation
  module VAPI
    class VapiMetadataMetamodelServiceInfo
    # Metamodel information of all the constant elements contained in the service element. The key in the {@term map} is the name of the constant element and the value in the {@term map} is the metamodel information for the contant element.
    attr_accessor :constants

    # English language documentation for the service element. It can contain HTML markup and Javadoc tags. The first sentence of the service documentation is a complete sentence that identifies the service by name and summarizes the purpose of the service. The remaining part of the documentation provides a summary of how to use the operations defined in the service.
    attr_accessor :documentation

    # Metamodel information of all the enumeration elements contained in the service element. The key in the {@term map} is the identifier of the enumeration element and the value in the {@term map} is the metamodel information for the enumeration element.
    attr_accessor :enumerations

    # Generic metadata elements for the service element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. <p> The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for keys in the {@term map}.
    attr_accessor :metadata

    # Dot separated name of the service element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
    attr_accessor :name

    # Metamodel information of all the operation elements contained in the service element. The key in the {@term map} is the identifier of the operation element and the value in the {@term map} is the metamodel information for the operation element.
    attr_accessor :operations

    # Metamodel information of all the structure elements contained in the service element. The key in the {@term map} is the identifier of the structure element and the value in the {@term map} is the metamodel information for the structure element.
    attr_accessor :structures

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'constants' => :'constants',
        :'documentation' => :'documentation',
        :'enumerations' => :'enumerations',
        :'metadata' => :'metadata',
        :'name' => :'name',
        :'operations' => :'operations',
        :'structures' => :'structures'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'constants' => :'Array<VapiMetadataMetamodelServiceInfoConstants>',
        :'documentation' => :'String',
        :'enumerations' => :'Array<VapiMetadataMetamodelPackageInfoEnumerations>',
        :'metadata' => :'Array<VapiMetadataMetamodelComponentInfoMetadata>',
        :'name' => :'String',
        :'operations' => :'Array<VapiMetadataMetamodelServiceInfoOperations>',
        :'structures' => :'Array<VapiMetadataMetamodelPackageInfoStructures>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'constants')
        if (value = attributes[:'constants']).is_a?(Array)
          self.constants = value
        end
      end

      if attributes.has_key?(:'documentation')
        self.documentation = attributes[:'documentation']
      end

      if attributes.has_key?(:'enumerations')
        if (value = attributes[:'enumerations']).is_a?(Array)
          self.enumerations = value
        end
      end

      if attributes.has_key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Array)
          self.metadata = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'operations')
        if (value = attributes[:'operations']).is_a?(Array)
          self.operations = value
        end
      end

      if attributes.has_key?(:'structures')
        if (value = attributes[:'structures']).is_a?(Array)
          self.structures = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @constants.nil?
        invalid_properties.push('invalid value for "constants", constants cannot be nil.')
      end

      if @documentation.nil?
        invalid_properties.push('invalid value for "documentation", documentation cannot be nil.')
      end

      if @enumerations.nil?
        invalid_properties.push('invalid value for "enumerations", enumerations cannot be nil.')
      end

      if @metadata.nil?
        invalid_properties.push('invalid value for "metadata", metadata cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @operations.nil?
        invalid_properties.push('invalid value for "operations", operations cannot be nil.')
      end

      if @structures.nil?
        invalid_properties.push('invalid value for "structures", structures cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @constants.nil?
      return false if @documentation.nil?
      return false if @enumerations.nil?
      return false if @metadata.nil?
      return false if @name.nil?
      return false if @operations.nil?
      return false if @structures.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          constants == o.constants &&
          documentation == o.documentation &&
          enumerations == o.enumerations &&
          metadata == o.metadata &&
          name == o.name &&
          operations == o.operations &&
          structures == o.structures
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [constants, documentation, enumerations, metadata, name, operations, structures].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN, :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = VSphereAutomation::VAPI.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
  end
end

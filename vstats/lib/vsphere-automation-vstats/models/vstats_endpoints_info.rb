# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module VStats
    class VstatsEndpointsInfo
    # Count of acquisition specifications configured to this endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :acqspec_count

    attr_accessor :auth_data

    # Endpoint identifier. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Endpoint. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Endpoint.
    attr_accessor :id

    # Designates the endpoint name to identify an endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :name

    # Designates the port of an endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, there is no port provided.
    attr_accessor :port

    # Designates the type of data format supported for stats data at endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :push_data_format

    attr_accessor :status

    # The reason explaining why the status of an endpoint is either DISABLED or INVALID. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, it means status is ENABLED.
    attr_accessor :status_reason

    # Designates the uniform resource identifier of an endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acqspec_count' => :'acqspec_count',
        :'auth_data' => :'auth_data',
        :'id' => :'id',
        :'name' => :'name',
        :'port' => :'port',
        :'push_data_format' => :'push_data_format',
        :'status' => :'status',
        :'status_reason' => :'status_reason',
        :'uri' => :'uri'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'acqspec_count' => :'String',
        :'auth_data' => :'VstatsEndpointsAuthSpec',
        :'id' => :'String',
        :'name' => :'String',
        :'port' => :'String',
        :'push_data_format' => :'String',
        :'status' => :'VstatsEndpointsStatus',
        :'status_reason' => :'String',
        :'uri' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acqspec_count')
        self.acqspec_count = attributes[:'acqspec_count']
      end

      if attributes.has_key?(:'auth_data')
        self.auth_data = attributes[:'auth_data']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'push_data_format')
        self.push_data_format = attributes[:'push_data_format']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'status_reason')
        self.status_reason = attributes[:'status_reason']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @acqspec_count.nil?
        invalid_properties.push('invalid value for "acqspec_count", acqspec_count cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @push_data_format.nil?
        invalid_properties.push('invalid value for "push_data_format", push_data_format cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @uri.nil?
        invalid_properties.push('invalid value for "uri", uri cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @acqspec_count.nil?
      return false if @id.nil?
      return false if @name.nil?
      return false if @push_data_format.nil?
      return false if @status.nil?
      return false if @uri.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acqspec_count == o.acqspec_count &&
          auth_data == o.auth_data &&
          id == o.id &&
          name == o.name &&
          port == o.port &&
          push_data_format == o.push_data_format &&
          status == o.status &&
          status_reason == o.status_reason &&
          uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [acqspec_count, auth_data, id, name, port, push_data_format, status, status_reason, uri].hash
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
        temp_model = VSphereAutomation::VStats.const_get(type).new
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

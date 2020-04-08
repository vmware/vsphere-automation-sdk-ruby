# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module VStats
    class VstatsCounterMetadataInfo
    # Counter Id. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter.
    attr_accessor :cid

    # Metadata Id. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.CounterMetadata. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.CounterMetadata.
    attr_accessor :mid

    # ID of the respective provider. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. This field is unset in the current version. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Provider.
    attr_accessor :pid

    attr_accessor :scale

    attr_accessor :status

    attr_accessor :type

    attr_accessor :units

    attr_accessor :user_info

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cid' => :'cid',
        :'mid' => :'mid',
        :'pid' => :'pid',
        :'scale' => :'scale',
        :'status' => :'status',
        :'type' => :'type',
        :'units' => :'units',
        :'user_info' => :'user_info'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cid' => :'String',
        :'mid' => :'String',
        :'pid' => :'String',
        :'scale' => :'VstatsCounterMetadataUnitsFactor',
        :'status' => :'VstatsCounterMetadataCounterEditionStatus',
        :'type' => :'VstatsCounterMetadataSampleType',
        :'units' => :'VstatsCounterMetadataMetricUnits',
        :'user_info' => :'VstatsUserInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.has_key?(:'mid')
        self.mid = attributes[:'mid']
      end

      if attributes.has_key?(:'pid')
        self.pid = attributes[:'pid']
      end

      if attributes.has_key?(:'scale')
        self.scale = attributes[:'scale']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.has_key?(:'user_info')
        self.user_info = attributes[:'user_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @mid.nil?
        invalid_properties.push('invalid value for "mid", mid cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @units.nil?
        invalid_properties.push('invalid value for "units", units cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cid.nil?
      return false if @mid.nil?
      return false if @status.nil?
      return false if @type.nil?
      return false if @units.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cid == o.cid &&
          mid == o.mid &&
          pid == o.pid &&
          scale == o.scale &&
          status == o.status &&
          type == o.type &&
          units == o.units &&
          user_info == o.user_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cid, mid, pid, scale, status, type, units, user_info].hash
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

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNamespaceManagementClustersStats
    # Total CPU capacity in the cluster available for vSphere Namespaces, in MHz. This is the sum of CPU capacities from all worker nodes in the cluster.
    attr_accessor :cpu_capacity

    # Overall CPU usage of the cluster, in MHz. This is the sum of CPU usage across all worker nodes in the cluster.
    attr_accessor :cpu_used

    # Total memory capacity of the cluster available for vSphere Namespaces, in mebibytes. This is the sum of memory capacities from all worker nodesin the cluster.
    attr_accessor :memory_capacity

    # Overall memory usage of the cluster, in mebibytes. This is the sum of memory usage across all worker nodes in the cluster.
    attr_accessor :memory_used

    # Overall storage capacity of the cluster available for vSphere Namespaces, in mebibytes. This is the sum of total storage available from all worker nodes in the cluster.
    attr_accessor :storage_capacity

    # Overall storage used by the cluster, in mebibytes. This is the sum of storage used across all worker nodes in the cluster.
    attr_accessor :storage_used

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cpu_capacity' => :'cpu_capacity',
        :'cpu_used' => :'cpu_used',
        :'memory_capacity' => :'memory_capacity',
        :'memory_used' => :'memory_used',
        :'storage_capacity' => :'storage_capacity',
        :'storage_used' => :'storage_used'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cpu_capacity' => :'Integer',
        :'cpu_used' => :'Integer',
        :'memory_capacity' => :'Integer',
        :'memory_used' => :'Integer',
        :'storage_capacity' => :'Integer',
        :'storage_used' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cpu_capacity')
        self.cpu_capacity = attributes[:'cpu_capacity']
      end

      if attributes.has_key?(:'cpu_used')
        self.cpu_used = attributes[:'cpu_used']
      end

      if attributes.has_key?(:'memory_capacity')
        self.memory_capacity = attributes[:'memory_capacity']
      end

      if attributes.has_key?(:'memory_used')
        self.memory_used = attributes[:'memory_used']
      end

      if attributes.has_key?(:'storage_capacity')
        self.storage_capacity = attributes[:'storage_capacity']
      end

      if attributes.has_key?(:'storage_used')
        self.storage_used = attributes[:'storage_used']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cpu_capacity.nil?
        invalid_properties.push('invalid value for "cpu_capacity", cpu_capacity cannot be nil.')
      end

      if @cpu_used.nil?
        invalid_properties.push('invalid value for "cpu_used", cpu_used cannot be nil.')
      end

      if @memory_capacity.nil?
        invalid_properties.push('invalid value for "memory_capacity", memory_capacity cannot be nil.')
      end

      if @memory_used.nil?
        invalid_properties.push('invalid value for "memory_used", memory_used cannot be nil.')
      end

      if @storage_capacity.nil?
        invalid_properties.push('invalid value for "storage_capacity", storage_capacity cannot be nil.')
      end

      if @storage_used.nil?
        invalid_properties.push('invalid value for "storage_used", storage_used cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cpu_capacity.nil?
      return false if @cpu_used.nil?
      return false if @memory_capacity.nil?
      return false if @memory_used.nil?
      return false if @storage_capacity.nil?
      return false if @storage_used.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cpu_capacity == o.cpu_capacity &&
          cpu_used == o.cpu_used &&
          memory_capacity == o.memory_capacity &&
          memory_used == o.memory_used &&
          storage_capacity == o.storage_capacity &&
          storage_used == o.storage_used
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cpu_capacity, cpu_used, memory_capacity, memory_used, storage_capacity, storage_used].hash
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
        temp_model = VSphereAutomation::VCenter.const_get(type).new
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

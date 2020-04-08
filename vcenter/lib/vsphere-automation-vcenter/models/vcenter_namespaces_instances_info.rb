# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNamespacesInstancesInfo
    # Access controls associated with the namespace.
    attr_accessor :access_list

    # Identifier for the cluster hosting the namespace. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource.
    attr_accessor :cluster

    attr_accessor :config_status

    # Description of the namespace.
    attr_accessor :description

    # Current set of messages associated with the object.
    attr_accessor :messages

    # Quotas on the namespace resources. Refer to vcenter.namespace_management.NamespaceResourceOptions#get for the type of the value for this field. If unset, no resource constraints are associated with the namespace.
    attr_accessor :resource_spec

    attr_accessor :stats

    # Storage associated with the namespace.
    attr_accessor :storage_specs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_list' => :'access_list',
        :'cluster' => :'cluster',
        :'config_status' => :'config_status',
        :'description' => :'description',
        :'messages' => :'messages',
        :'resource_spec' => :'resource_spec',
        :'stats' => :'stats',
        :'storage_specs' => :'storage_specs'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'access_list' => :'Array<VcenterNamespacesInstancesAccess>',
        :'cluster' => :'String',
        :'config_status' => :'VcenterNamespacesInstancesConfigStatus',
        :'description' => :'String',
        :'messages' => :'Array<VcenterNamespacesInstancesMessage>',
        :'resource_spec' => :'Object',
        :'stats' => :'VcenterNamespacesInstancesStats',
        :'storage_specs' => :'Array<VcenterNamespacesInstancesStorageSpec>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'access_list')
        if (value = attributes[:'access_list']).is_a?(Array)
          self.access_list = value
        end
      end

      if attributes.has_key?(:'cluster')
        self.cluster = attributes[:'cluster']
      end

      if attributes.has_key?(:'config_status')
        self.config_status = attributes[:'config_status']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'messages')
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
      end

      if attributes.has_key?(:'resource_spec')
        self.resource_spec = attributes[:'resource_spec']
      end

      if attributes.has_key?(:'stats')
        self.stats = attributes[:'stats']
      end

      if attributes.has_key?(:'storage_specs')
        if (value = attributes[:'storage_specs']).is_a?(Array)
          self.storage_specs = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @access_list.nil?
        invalid_properties.push('invalid value for "access_list", access_list cannot be nil.')
      end

      if @cluster.nil?
        invalid_properties.push('invalid value for "cluster", cluster cannot be nil.')
      end

      if @config_status.nil?
        invalid_properties.push('invalid value for "config_status", config_status cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @messages.nil?
        invalid_properties.push('invalid value for "messages", messages cannot be nil.')
      end

      if @stats.nil?
        invalid_properties.push('invalid value for "stats", stats cannot be nil.')
      end

      if @storage_specs.nil?
        invalid_properties.push('invalid value for "storage_specs", storage_specs cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @access_list.nil?
      return false if @cluster.nil?
      return false if @config_status.nil?
      return false if @description.nil?
      return false if @messages.nil?
      return false if @stats.nil?
      return false if @storage_specs.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_list == o.access_list &&
          cluster == o.cluster &&
          config_status == o.config_status &&
          description == o.description &&
          messages == o.messages &&
          resource_spec == o.resource_spec &&
          stats == o.stats &&
          storage_specs == o.storage_specs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [access_list, cluster, config_status, description, messages, resource_spec, stats, storage_specs].hash
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

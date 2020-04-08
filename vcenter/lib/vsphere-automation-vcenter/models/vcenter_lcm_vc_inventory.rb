# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterLcmVcInventory
    # Full path to the cluster. Format: /{datacenter folder}/{datacenter name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path
    attr_accessor :cluster_path

    # The datastore cluster on which to store the files of the appliance. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #datastore_name and #datastore_cluster_name
    attr_accessor :datastore_cluster_name

    # The datastore on which to store the files of the appliance. This value has to be either a specific datastore name, or a specific datastore in a datastore cluster. The datastore must be accessible from the ESX host and must have at least 25 GB of free space. Otherwise, the new appliance might not power on. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #datastore_name and #datastore_cluster_name
    attr_accessor :datastore_name

    # 
    attr_accessor :host_path

    # Name of the network. e.g. VM Network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :network_name

    # Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host name}/{cluster_name}/Resources/{resource pool}. e.g: Your Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource Pool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path
    attr_accessor :resource_pool_path

    # Path of the VM folder. VM folder must be visible by the Data Center of the compute resourceFormat:{vm_folder1}/{vm_folder2}e.g.:'VM Folder 0/VM Folder1'. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path
    attr_accessor :vm_folder_path

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cluster_path' => :'cluster_path',
        :'datastore_cluster_name' => :'datastore_cluster_name',
        :'datastore_name' => :'datastore_name',
        :'host_path' => :'host_path',
        :'network_name' => :'network_name',
        :'resource_pool_path' => :'resource_pool_path',
        :'vm_folder_path' => :'vm_folder_path'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cluster_path' => :'String',
        :'datastore_cluster_name' => :'String',
        :'datastore_name' => :'String',
        :'host_path' => :'String',
        :'network_name' => :'String',
        :'resource_pool_path' => :'String',
        :'vm_folder_path' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cluster_path')
        self.cluster_path = attributes[:'cluster_path']
      end

      if attributes.has_key?(:'datastore_cluster_name')
        self.datastore_cluster_name = attributes[:'datastore_cluster_name']
      end

      if attributes.has_key?(:'datastore_name')
        self.datastore_name = attributes[:'datastore_name']
      end

      if attributes.has_key?(:'host_path')
        self.host_path = attributes[:'host_path']
      end

      if attributes.has_key?(:'network_name')
        self.network_name = attributes[:'network_name']
      end

      if attributes.has_key?(:'resource_pool_path')
        self.resource_pool_path = attributes[:'resource_pool_path']
      end

      if attributes.has_key?(:'vm_folder_path')
        self.vm_folder_path = attributes[:'vm_folder_path']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @network_name.nil?
        invalid_properties.push('invalid value for "network_name", network_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @network_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cluster_path == o.cluster_path &&
          datastore_cluster_name == o.datastore_cluster_name &&
          datastore_name == o.datastore_name &&
          host_path == o.host_path &&
          network_name == o.network_name &&
          resource_pool_path == o.resource_pool_path &&
          vm_folder_path == o.vm_folder_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cluster_path, datastore_cluster_name, datastore_name, host_path, network_name, resource_pool_path, vm_folder_path].hash
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

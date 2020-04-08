# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# cis - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module CIS
    class CisTasksFilterSpec
    # Identifiers of operations. Tasks created by these operations match the filter (see CommonInfo.operation).   Note that an operation identifier by itself is not globally unique. To filter on an operation, the identifier of the service interface containing the operation should also be specified in Tasks.FilterSpec.services.  If unset or empty, tasks associated with any operation will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.operation.
    attr_accessor :operations

    # Identifiers of services. Tasks created by operations in these services match the filter (see CommonInfo.service). This field may be unset if Tasks.FilterSpec.tasks is specified. Currently all services must be from the same provider. If this field is unset or empty, tasks for any service will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.service. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.service.
    attr_accessor :services

    # Status that a task must have to match the filter (see CommonInfo.status). If unset or empty, tasks with any status match the filter.
    attr_accessor :status

    # Identifiers of the targets the operation for the associated task created or was performed on (see CommonInfo.target). If unset or empty, tasks associated with operations on any target match the filter.
    attr_accessor :targets

    # Identifiers of tasks that can match the filter. This field may be unset if Tasks.FilterSpec.services is specified. Currently all tasks must be from the same provider. If unset or empty, tasks with any identifier will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.task. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.task.
    attr_accessor :tasks

    # Users who must have initiated the operation for the associated task to match the filter (see CommonInfo.user). If unset or empty, tasks associated with operations initiated by any user match the filter.
    attr_accessor :users

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'operations' => :'operations',
        :'services' => :'services',
        :'status' => :'status',
        :'targets' => :'targets',
        :'tasks' => :'tasks',
        :'users' => :'users'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'operations' => :'Array<String>',
        :'services' => :'Array<String>',
        :'status' => :'Array<CisTaskStatus>',
        :'targets' => :'Array<VapiStdDynamicID>',
        :'tasks' => :'Array<String>',
        :'users' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'operations')
        if (value = attributes[:'operations']).is_a?(Array)
          self.operations = value
        end
      end

      if attributes.has_key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'status')
        if (value = attributes[:'status']).is_a?(Array)
          self.status = value
        end
      end

      if attributes.has_key?(:'targets')
        if (value = attributes[:'targets']).is_a?(Array)
          self.targets = value
        end
      end

      if attributes.has_key?(:'tasks')
        if (value = attributes[:'tasks']).is_a?(Array)
          self.tasks = value
        end
      end

      if attributes.has_key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          operations == o.operations &&
          services == o.services &&
          status == o.status &&
          targets == o.targets &&
          tasks == o.tasks &&
          users == o.users
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [operations, services, status, targets, tasks, users].hash
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
        temp_model = VSphereAutomation::CIS.const_get(type).new
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

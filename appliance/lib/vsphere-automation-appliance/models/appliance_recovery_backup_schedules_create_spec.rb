# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceRecoveryBackupSchedulesCreateSpec
    # List of optional parts to be backed up. Use the {@link appliance.recovery.backup.Parts#list} {@term operation} to get information about the supported parts.
    attr_accessor :parts

    # Password for a backup piece. The backupPassword must adhere to the following password requirements: At least 8 characters, cannot be more than 20 characters in length. At least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible ASCII characters (for example, no space).
    attr_accessor :backup_password

    # URL of the backup location.
    attr_accessor :location

    # Username for the given location.
    attr_accessor :location_user

    # Password for the given location.
    attr_accessor :location_password

    # Enable or disable a schedule.
    attr_accessor :enable

    attr_accessor :recurrence_info

    attr_accessor :retention_info

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'parts' => :'parts',
        :'backup_password' => :'backup_password',
        :'location' => :'location',
        :'location_user' => :'location_user',
        :'location_password' => :'location_password',
        :'enable' => :'enable',
        :'recurrence_info' => :'recurrence_info',
        :'retention_info' => :'retention_info'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'parts' => :'Array<String>',
        :'backup_password' => :'String',
        :'location' => :'String',
        :'location_user' => :'String',
        :'location_password' => :'String',
        :'enable' => :'Boolean',
        :'recurrence_info' => :'ApplianceRecoveryBackupSchedulesRecurrenceInfo',
        :'retention_info' => :'ApplianceRecoveryBackupSchedulesRetentionInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'parts')
        if (value = attributes[:'parts']).is_a?(Array)
          self.parts = value
        end
      end

      if attributes.has_key?(:'backup_password')
        self.backup_password = attributes[:'backup_password']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'location_user')
        self.location_user = attributes[:'location_user']
      end

      if attributes.has_key?(:'location_password')
        self.location_password = attributes[:'location_password']
      end

      if attributes.has_key?(:'enable')
        self.enable = attributes[:'enable']
      end

      if attributes.has_key?(:'recurrence_info')
        self.recurrence_info = attributes[:'recurrence_info']
      end

      if attributes.has_key?(:'retention_info')
        self.retention_info = attributes[:'retention_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @location.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parts == o.parts &&
          backup_password == o.backup_password &&
          location == o.location &&
          location_user == o.location_user &&
          location_password == o.location_password &&
          enable == o.enable &&
          recurrence_info == o.recurrence_info &&
          retention_info == o.retention_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [parts, backup_password, location, location_user, location_password, enable, recurrence_info, retention_info].hash
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
        temp_model = VSphereAutomation::Appliance.const_get(type).new
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

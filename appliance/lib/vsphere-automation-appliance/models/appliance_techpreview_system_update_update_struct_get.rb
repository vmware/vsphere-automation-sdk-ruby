# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewSystemUpdateUpdateStructGet
    attr_accessor :check_updates

    # Current appliance update repository URL.
    attr_accessor :current_url

    attr_accessor :day

    # Default appliance update repository URL.
    attr_accessor :default_url

    # timestamp of latest update installation
    attr_accessor :latest_update_install_time

    # timestamp of latest query to update repository
    attr_accessor :latest_update_query_time

    # password for the url update repository
    attr_accessor :password

    # time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
    attr_accessor :time

    # username for the url update repository
    attr_accessor :username

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'check_updates' => :'check_updates',
        :'current_url' => :'current_URL',
        :'day' => :'day',
        :'default_url' => :'default_URL',
        :'latest_update_install_time' => :'latest_update_install_time',
        :'latest_update_query_time' => :'latest_update_query_time',
        :'password' => :'password',
        :'time' => :'time',
        :'username' => :'username'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'check_updates' => :'ApplianceTechpreviewSystemUpdateAutoUpdateNotification',
        :'current_url' => :'String',
        :'day' => :'ApplianceTechpreviewSystemUpdateUpdateDay',
        :'default_url' => :'String',
        :'latest_update_install_time' => :'String',
        :'latest_update_query_time' => :'String',
        :'password' => :'String',
        :'time' => :'String',
        :'username' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'check_updates')
        self.check_updates = attributes[:'check_updates']
      end

      if attributes.has_key?(:'current_URL')
        self.current_url = attributes[:'current_URL']
      end

      if attributes.has_key?(:'day')
        self.day = attributes[:'day']
      end

      if attributes.has_key?(:'default_URL')
        self.default_url = attributes[:'default_URL']
      end

      if attributes.has_key?(:'latest_update_install_time')
        self.latest_update_install_time = attributes[:'latest_update_install_time']
      end

      if attributes.has_key?(:'latest_update_query_time')
        self.latest_update_query_time = attributes[:'latest_update_query_time']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @check_updates.nil?
        invalid_properties.push('invalid value for "check_updates", check_updates cannot be nil.')
      end

      if @current_url.nil?
        invalid_properties.push('invalid value for "current_url", current_url cannot be nil.')
      end

      if @day.nil?
        invalid_properties.push('invalid value for "day", day cannot be nil.')
      end

      if @default_url.nil?
        invalid_properties.push('invalid value for "default_url", default_url cannot be nil.')
      end

      if @latest_update_install_time.nil?
        invalid_properties.push('invalid value for "latest_update_install_time", latest_update_install_time cannot be nil.')
      end

      if @latest_update_query_time.nil?
        invalid_properties.push('invalid value for "latest_update_query_time", latest_update_query_time cannot be nil.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @time.nil?
        invalid_properties.push('invalid value for "time", time cannot be nil.')
      end

      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @check_updates.nil?
      return false if @current_url.nil?
      return false if @day.nil?
      return false if @default_url.nil?
      return false if @latest_update_install_time.nil?
      return false if @latest_update_query_time.nil?
      return false if @password.nil?
      return false if @time.nil?
      return false if @username.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          check_updates == o.check_updates &&
          current_url == o.current_url &&
          day == o.day &&
          default_url == o.default_url &&
          latest_update_install_time == o.latest_update_install_time &&
          latest_update_query_time == o.latest_update_query_time &&
          password == o.password &&
          time == o.time &&
          username == o.username
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [check_updates, current_url, day, default_url, latest_update_install_time, latest_update_query_time, password, time, username].hash
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

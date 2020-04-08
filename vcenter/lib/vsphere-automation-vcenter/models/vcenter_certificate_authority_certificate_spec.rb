# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterCertificateAuthorityCertificateSpec
    # The common name of the host for which certificate is generated. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :common_name

    # Country field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :country

    # Email field in Certificate extensions. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :email_address

    # Hostname field in Certificate extensions. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :hostname

    # IPAddress of the of the host for which certificate is generated. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset IPAddress will not be included in SAN.
    attr_accessor :ip_address

    # The size of the key to be used for public and private key generation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the key size will be '2048'.
    attr_accessor :key_size

    # Locality field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :locality

    # Organization field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :organization

    # Organization unit field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :organization_unit

    # State field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :state_or_province

    # Validity field takes as input the number of years for which the generated certificate is to be made valid. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset validity will be set as 2 years.
    attr_accessor :validity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'common_name' => :'common_name',
        :'country' => :'country',
        :'email_address' => :'email_address',
        :'hostname' => :'hostname',
        :'ip_address' => :'ip_address',
        :'key_size' => :'key_size',
        :'locality' => :'locality',
        :'organization' => :'organization',
        :'organization_unit' => :'organization_unit',
        :'state_or_province' => :'state_or_province',
        :'validity' => :'validity'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'common_name' => :'String',
        :'country' => :'String',
        :'email_address' => :'String',
        :'hostname' => :'String',
        :'ip_address' => :'String',
        :'key_size' => :'Integer',
        :'locality' => :'String',
        :'organization' => :'String',
        :'organization_unit' => :'String',
        :'state_or_province' => :'String',
        :'validity' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'common_name')
        self.common_name = attributes[:'common_name']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.has_key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.has_key?(:'key_size')
        self.key_size = attributes[:'key_size']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'organization_unit')
        self.organization_unit = attributes[:'organization_unit']
      end

      if attributes.has_key?(:'state_or_province')
        self.state_or_province = attributes[:'state_or_province']
      end

      if attributes.has_key?(:'validity')
        self.validity = attributes[:'validity']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @common_name.nil?
        invalid_properties.push('invalid value for "common_name", common_name cannot be nil.')
      end

      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      if @email_address.nil?
        invalid_properties.push('invalid value for "email_address", email_address cannot be nil.')
      end

      if @hostname.nil?
        invalid_properties.push('invalid value for "hostname", hostname cannot be nil.')
      end

      if @locality.nil?
        invalid_properties.push('invalid value for "locality", locality cannot be nil.')
      end

      if @organization.nil?
        invalid_properties.push('invalid value for "organization", organization cannot be nil.')
      end

      if @organization_unit.nil?
        invalid_properties.push('invalid value for "organization_unit", organization_unit cannot be nil.')
      end

      if @state_or_province.nil?
        invalid_properties.push('invalid value for "state_or_province", state_or_province cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @common_name.nil?
      return false if @country.nil?
      return false if @email_address.nil?
      return false if @hostname.nil?
      return false if @locality.nil?
      return false if @organization.nil?
      return false if @organization_unit.nil?
      return false if @state_or_province.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          common_name == o.common_name &&
          country == o.country &&
          email_address == o.email_address &&
          hostname == o.hostname &&
          ip_address == o.ip_address &&
          key_size == o.key_size &&
          locality == o.locality &&
          organization == o.organization &&
          organization_unit == o.organization_unit &&
          state_or_province == o.state_or_province &&
          validity == o.validity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [common_name, country, email_address, hostname, ip_address, key_size, locality, organization, organization_unit, state_or_province, validity].hash
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

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterDeploymentSourceInfo
    # The domain name of the Active Directory server to which the source vCenter Server is joined.
    attr_accessor :active_directory_domain

    attr_accessor :data_migration_info

    attr_accessor :deployment_size

    attr_accessor :deployment_type

    # IP addresses of the DNS servers of the Active Directory server.
    attr_accessor :dns_servers

    # The IP address or DNS resolvable name of the source vCenter Server.
    attr_accessor :hostname

    # The SSO domain name of the source vCenter Server.
    attr_accessor :sso_domain_name

    # Source vCenter Server version.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active_directory_domain' => :'active_directory_domain',
        :'data_migration_info' => :'data_migration_info',
        :'deployment_size' => :'deployment_size',
        :'deployment_type' => :'deployment_type',
        :'dns_servers' => :'dns_servers',
        :'hostname' => :'hostname',
        :'sso_domain_name' => :'sso_domain_name',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active_directory_domain' => :'String',
        :'data_migration_info' => :'VcenterDeploymentDataMigrationInfo',
        :'deployment_size' => :'VcenterDeploymentApplianceSize',
        :'deployment_type' => :'VcenterDeploymentApplianceType',
        :'dns_servers' => :'Array<String>',
        :'hostname' => :'String',
        :'sso_domain_name' => :'String',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'active_directory_domain')
        self.active_directory_domain = attributes[:'active_directory_domain']
      end

      if attributes.has_key?(:'data_migration_info')
        self.data_migration_info = attributes[:'data_migration_info']
      end

      if attributes.has_key?(:'deployment_size')
        self.deployment_size = attributes[:'deployment_size']
      end

      if attributes.has_key?(:'deployment_type')
        self.deployment_type = attributes[:'deployment_type']
      end

      if attributes.has_key?(:'dns_servers')
        if (value = attributes[:'dns_servers']).is_a?(Array)
          self.dns_servers = value
        end
      end

      if attributes.has_key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.has_key?(:'sso_domain_name')
        self.sso_domain_name = attributes[:'sso_domain_name']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @active_directory_domain.nil?
        invalid_properties.push('invalid value for "active_directory_domain", active_directory_domain cannot be nil.')
      end

      if @deployment_size.nil?
        invalid_properties.push('invalid value for "deployment_size", deployment_size cannot be nil.')
      end

      if @deployment_type.nil?
        invalid_properties.push('invalid value for "deployment_type", deployment_type cannot be nil.')
      end

      if @dns_servers.nil?
        invalid_properties.push('invalid value for "dns_servers", dns_servers cannot be nil.')
      end

      if @hostname.nil?
        invalid_properties.push('invalid value for "hostname", hostname cannot be nil.')
      end

      if @sso_domain_name.nil?
        invalid_properties.push('invalid value for "sso_domain_name", sso_domain_name cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @active_directory_domain.nil?
      return false if @deployment_size.nil?
      return false if @deployment_type.nil?
      return false if @dns_servers.nil?
      return false if @hostname.nil?
      return false if @sso_domain_name.nil?
      return false if @version.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active_directory_domain == o.active_directory_domain &&
          data_migration_info == o.data_migration_info &&
          deployment_size == o.deployment_size &&
          deployment_type == o.deployment_type &&
          dns_servers == o.dns_servers &&
          hostname == o.hostname &&
          sso_domain_name == o.sso_domain_name &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [active_directory_domain, data_migration_info, deployment_size, deployment_type, dns_servers, hostname, sso_domain_name, version].hash
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
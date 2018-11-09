=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.2

=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceHealthSystemHealthLevel
    
    ORANGE = 'orange'.freeze
    GRAY = 'gray'.freeze
    GREEN = 'green'.freeze
    RED = 'red'.freeze
    YELLOW = 'yellow'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceHealthSystemHealthLevel.constants.select { |c| ApplianceHealthSystemHealthLevel::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceHealthSystemHealthLevel" if constantValues.empty?
      value
    end
  end
  end
end

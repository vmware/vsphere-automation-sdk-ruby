=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.2

=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterServicesServiceState
    
    STARTING = 'STARTING'.freeze
    STOPPING = 'STOPPING'.freeze
    STARTED = 'STARTED'.freeze
    STOPPED = 'STOPPED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterServicesServiceState.constants.select { |c| VcenterServicesServiceState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterServicesServiceState" if constantValues.empty?
      value
    end
  end
  end
end

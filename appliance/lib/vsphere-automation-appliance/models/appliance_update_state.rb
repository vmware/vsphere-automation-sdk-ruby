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
    class ApplianceUpdateState
    
    UP_TO_DATE = 'UP_TO_DATE'.freeze
    UPDATES_PENDING = 'UPDATES_PENDING'.freeze
    STAGE_IN_PROGRESS = 'STAGE_IN_PROGRESS'.freeze
    INSTALL_IN_PROGRESS = 'INSTALL_IN_PROGRESS'.freeze
    INSTALL_FAILED = 'INSTALL_FAILED'.freeze
    ROLLBACK_IN_PROGRESS = 'ROLLBACK_IN_PROGRESS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceUpdateState.constants.select { |c| ApplianceUpdateState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceUpdateState" if constantValues.empty?
      value
    end
  end
  end
end

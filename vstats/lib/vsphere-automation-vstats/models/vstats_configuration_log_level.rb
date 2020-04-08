# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module VStats
    class VstatsConfigurationLogLevel
    
    NONE = "NONE".freeze
    ERROR = "ERROR".freeze
    WARNING = "WARNING".freeze
    INFO = "INFO".freeze
    VERBOSE = "VERBOSE".freeze
    TRIVIA = "TRIVIA".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VstatsConfigurationLogLevel.constants.select { |c| VstatsConfigurationLogLevel::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VstatsConfigurationLogLevel" if constantValues.empty?
      value
    end
  end
  end
end

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module ESX
    class EsxSettingsClustersSoftwareDraftsSourceType
    
    PULL = "PULL".freeze
    PUSH = "PUSH".freeze
    JSON_STRING = "JSON_STRING".freeze
    LATEST_RECOMMENDATION = "LATEST_RECOMMENDATION".freeze
    CURRENT_SERIES_RECOMMENDATION = "CURRENT_SERIES_RECOMMENDATION".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EsxSettingsClustersSoftwareDraftsSourceType.constants.select { |c| EsxSettingsClustersSoftwareDraftsSourceType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EsxSettingsClustersSoftwareDraftsSourceType" if constantValues.empty?
      value
    end
  end
  end
end

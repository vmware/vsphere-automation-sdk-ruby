# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module ESX
    class EsxHealthPerspective
    
    INITIALIZATION = "INITIALIZATION".freeze
    PLANNED_MAINTENANCE = "PLANNED_MAINTENANCE".freeze
    BEFORE_EXIT_MAINTENANCE_MODE = "BEFORE_EXIT_MAINTENANCE_MODE".freeze
    CLUSTER_PLANNED_MAINTENANCE = "CLUSTER_PLANNED_MAINTENANCE".freeze
    CLUSTER_READY_FOR_APPLY = "CLUSTER_READY_FOR_APPLY".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EsxHealthPerspective.constants.select { |c| EsxHealthPerspective::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EsxHealthPerspective" if constantValues.empty?
      value
    end
  end
  end
end

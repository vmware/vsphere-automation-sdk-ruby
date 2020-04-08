# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'date'

module VSphereAutomation
  module Content
    class VapiStdErrorsErrorType
    
    ERROR = "ERROR".freeze
    ALREADY_EXISTS = "ALREADY_EXISTS".freeze
    ALREADY_IN_DESIRED_STATE = "ALREADY_IN_DESIRED_STATE".freeze
    CANCELED = "CANCELED".freeze
    CONCURRENT_CHANGE = "CONCURRENT_CHANGE".freeze
    FEATURE_IN_USE = "FEATURE_IN_USE".freeze
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR".freeze
    INVALID_ARGUMENT = "INVALID_ARGUMENT".freeze
    INVALID_ELEMENT_CONFIGURATION = "INVALID_ELEMENT_CONFIGURATION".freeze
    INVALID_ELEMENT_TYPE = "INVALID_ELEMENT_TYPE".freeze
    INVALID_REQUEST = "INVALID_REQUEST".freeze
    NOT_ALLOWED_IN_CURRENT_STATE = "NOT_ALLOWED_IN_CURRENT_STATE".freeze
    NOT_FOUND = "NOT_FOUND".freeze
    OPERATION_NOT_FOUND = "OPERATION_NOT_FOUND".freeze
    RESOURCE_BUSY = "RESOURCE_BUSY".freeze
    RESOURCE_IN_USE = "RESOURCE_IN_USE".freeze
    RESOURCE_INACCESSIBLE = "RESOURCE_INACCESSIBLE".freeze
    SERVICE_UNAVAILABLE = "SERVICE_UNAVAILABLE".freeze
    TIMED_OUT = "TIMED_OUT".freeze
    UNABLE_TO_ALLOCATE_RESOURCE = "UNABLE_TO_ALLOCATE_RESOURCE".freeze
    UNAUTHENTICATED = "UNAUTHENTICATED".freeze
    UNAUTHORIZED = "UNAUTHORIZED".freeze
    UNEXPECTED_INPUT = "UNEXPECTED_INPUT".freeze
    UNSUPPORTED = "UNSUPPORTED".freeze
    UNVERIFIED_PEER = "UNVERIFIED_PEER".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VapiStdErrorsErrorType.constants.select { |c| VapiStdErrorsErrorType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VapiStdErrorsErrorType" if constantValues.empty?
      value
    end
  end
  end
end

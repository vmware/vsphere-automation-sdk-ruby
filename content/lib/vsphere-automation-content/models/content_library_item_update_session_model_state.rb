# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemUpdateSessionModelState
    
    ACTIVE = "ACTIVE".freeze
    DONE = "DONE".freeze
    ERROR = "ERROR".freeze
    CANCELED = "CANCELED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ContentLibraryItemUpdateSessionModelState.constants.select { |c| ContentLibraryItemUpdateSessionModelState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ContentLibraryItemUpdateSessionModelState" if constantValues.empty?
      value
    end
  end
  end
end

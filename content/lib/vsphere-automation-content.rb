# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


# Common files
require 'vsphere-automation-runtime/api_client'
require 'vsphere-automation-runtime/api_error'
require 'vsphere-automation-runtime/configuration'
require 'vsphere-automation-content/version'

# Models
require 'vsphere-automation-content/models/content_configuration_model'
require 'vsphere-automation-content/models/content_configuration_result'
require 'vsphere-automation-content/models/content_configuration_update'
require 'vsphere-automation-content/models/content_library_find'
require 'vsphere-automation-content/models/content_library_find_result'
require 'vsphere-automation-content/models/content_library_find_spec'
require 'vsphere-automation-content/models/content_library_item_copy'
require 'vsphere-automation-content/models/content_library_item_copy_result'
require 'vsphere-automation-content/models/content_library_item_create'
require 'vsphere-automation-content/models/content_library_item_create_result'
require 'vsphere-automation-content/models/content_library_item_destination_spec'
require 'vsphere-automation-content/models/content_library_item_download_session_create'
require 'vsphere-automation-content/models/content_library_item_download_session_create_result'
require 'vsphere-automation-content/models/content_library_item_download_session_fail'
require 'vsphere-automation-content/models/content_library_item_download_session_keep_alive'
require 'vsphere-automation-content/models/content_library_item_download_session_list_result'
require 'vsphere-automation-content/models/content_library_item_download_session_model'
require 'vsphere-automation-content/models/content_library_item_download_session_model_state'
require 'vsphere-automation-content/models/content_library_item_download_session_result'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_endpoint_type'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_get'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_info'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_list_result'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_prepare'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_prepare_result'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_prepare_status'
require 'vsphere-automation-content/models/content_library_item_downloadsession_file_result'
require 'vsphere-automation-content/models/content_library_item_file_checksum_algorithm'
require 'vsphere-automation-content/models/content_library_item_file_checksum_info'
require 'vsphere-automation-content/models/content_library_item_file_get'
require 'vsphere-automation-content/models/content_library_item_file_info'
require 'vsphere-automation-content/models/content_library_item_file_list_result'
require 'vsphere-automation-content/models/content_library_item_file_result'
require 'vsphere-automation-content/models/content_library_item_find'
require 'vsphere-automation-content/models/content_library_item_find_result'
require 'vsphere-automation-content/models/content_library_item_find_spec'
require 'vsphere-automation-content/models/content_library_item_list_result'
require 'vsphere-automation-content/models/content_library_item_model'
require 'vsphere-automation-content/models/content_library_item_publish'
require 'vsphere-automation-content/models/content_library_item_result'
require 'vsphere-automation-content/models/content_library_item_storage_get'
require 'vsphere-automation-content/models/content_library_item_storage_info'
require 'vsphere-automation-content/models/content_library_item_storage_list_result'
require 'vsphere-automation-content/models/content_library_item_storage_result'
require 'vsphere-automation-content/models/content_library_item_transfer_endpoint'
require 'vsphere-automation-content/models/content_library_item_transfer_status'
require 'vsphere-automation-content/models/content_library_item_update'
require 'vsphere-automation-content/models/content_library_item_update_session_create'
require 'vsphere-automation-content/models/content_library_item_update_session_create_result'
require 'vsphere-automation-content/models/content_library_item_update_session_fail'
require 'vsphere-automation-content/models/content_library_item_update_session_keep_alive'
require 'vsphere-automation-content/models/content_library_item_update_session_list_result'
require 'vsphere-automation-content/models/content_library_item_update_session_model'
require 'vsphere-automation-content/models/content_library_item_update_session_model_state'
require 'vsphere-automation-content/models/content_library_item_update_session_result'
require 'vsphere-automation-content/models/content_library_item_update_session_update'
require 'vsphere-automation-content/models/content_library_item_updatesession_certificate_info'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_add'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_add_result'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_add_spec'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_get'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_info'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_list_result'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_remove'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_result'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_source_type'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_validate_result'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_validation_error'
require 'vsphere-automation-content/models/content_library_item_updatesession_file_validation_result'
require 'vsphere-automation-content/models/content_library_item_updatesession_preview_info'
require 'vsphere-automation-content/models/content_library_item_updatesession_preview_info_state'
require 'vsphere-automation-content/models/content_library_item_updatesession_preview_warning_info'
require 'vsphere-automation-content/models/content_library_item_updatesession_warning_behavior'
require 'vsphere-automation-content/models/content_library_item_updatesession_warning_type'
require 'vsphere-automation-content/models/content_library_list_result'
require 'vsphere-automation-content/models/content_library_model'
require 'vsphere-automation-content/models/content_library_model_library_type'
require 'vsphere-automation-content/models/content_library_optimization_info'
require 'vsphere-automation-content/models/content_library_publish_info'
require 'vsphere-automation-content/models/content_library_publish_info_authentication_method'
require 'vsphere-automation-content/models/content_library_result'
require 'vsphere-automation-content/models/content_library_source_info'
require 'vsphere-automation-content/models/content_library_storage_backing'
require 'vsphere-automation-content/models/content_library_storage_backing_type'
require 'vsphere-automation-content/models/content_library_subscribed_item_sync'
require 'vsphere-automation-content/models/content_library_subscription_info'
require 'vsphere-automation-content/models/content_library_subscription_info_authentication_method'
require 'vsphere-automation-content/models/content_library_subscriptions_create'
require 'vsphere-automation-content/models/content_library_subscriptions_create_result'
require 'vsphere-automation-content/models/content_library_subscriptions_create_spec'
require 'vsphere-automation-content/models/content_library_subscriptions_create_spec_new_subscribed_library'
require 'vsphere-automation-content/models/content_library_subscriptions_create_spec_placement'
require 'vsphere-automation-content/models/content_library_subscriptions_create_spec_subscribed_library'
require 'vsphere-automation-content/models/content_library_subscriptions_create_spec_subscribed_library_target'
require 'vsphere-automation-content/models/content_library_subscriptions_create_spec_vcenter'
require 'vsphere-automation-content/models/content_library_subscriptions_delete'
require 'vsphere-automation-content/models/content_library_subscriptions_get'
require 'vsphere-automation-content/models/content_library_subscriptions_info'
require 'vsphere-automation-content/models/content_library_subscriptions_list_result'
require 'vsphere-automation-content/models/content_library_subscriptions_location'
require 'vsphere-automation-content/models/content_library_subscriptions_placement_info'
require 'vsphere-automation-content/models/content_library_subscriptions_result'
require 'vsphere-automation-content/models/content_library_subscriptions_summary'
require 'vsphere-automation-content/models/content_library_subscriptions_update'
require 'vsphere-automation-content/models/content_library_subscriptions_update_spec'
require 'vsphere-automation-content/models/content_library_subscriptions_update_spec_placement'
require 'vsphere-automation-content/models/content_library_subscriptions_update_spec_vcenter'
require 'vsphere-automation-content/models/content_library_subscriptions_vcenter_info'
require 'vsphere-automation-content/models/content_library_update'
require 'vsphere-automation-content/models/content_local_library_create'
require 'vsphere-automation-content/models/content_local_library_create_result'
require 'vsphere-automation-content/models/content_local_library_destination_spec'
require 'vsphere-automation-content/models/content_local_library_list_result'
require 'vsphere-automation-content/models/content_local_library_publish'
require 'vsphere-automation-content/models/content_local_library_result'
require 'vsphere-automation-content/models/content_local_library_update'
require 'vsphere-automation-content/models/content_subscribed_library_create'
require 'vsphere-automation-content/models/content_subscribed_library_create_result'
require 'vsphere-automation-content/models/content_subscribed_library_list_result'
require 'vsphere-automation-content/models/content_subscribed_library_probe'
require 'vsphere-automation-content/models/content_subscribed_library_probe_result'
require 'vsphere-automation-content/models/content_subscribed_library_probe_result_status'
require 'vsphere-automation-content/models/content_subscribed_library_result'
require 'vsphere-automation-content/models/content_subscribed_library_update'
require 'vsphere-automation-content/models/vapi_std_errors_already_exists'
require 'vsphere-automation-content/models/vapi_std_errors_already_exists_error'
require 'vsphere-automation-content/models/vapi_std_errors_concurrent_change'
require 'vsphere-automation-content/models/vapi_std_errors_concurrent_change_error'
require 'vsphere-automation-content/models/vapi_std_errors_error'
require 'vsphere-automation-content/models/vapi_std_errors_error_error'
require 'vsphere-automation-content/models/vapi_std_errors_invalid_argument'
require 'vsphere-automation-content/models/vapi_std_errors_invalid_argument_error'
require 'vsphere-automation-content/models/vapi_std_errors_invalid_element_configuration'
require 'vsphere-automation-content/models/vapi_std_errors_invalid_element_configuration_error'
require 'vsphere-automation-content/models/vapi_std_errors_invalid_element_type'
require 'vsphere-automation-content/models/vapi_std_errors_invalid_element_type_error'
require 'vsphere-automation-content/models/vapi_std_errors_not_allowed_in_current_state'
require 'vsphere-automation-content/models/vapi_std_errors_not_allowed_in_current_state_error'
require 'vsphere-automation-content/models/vapi_std_errors_not_found'
require 'vsphere-automation-content/models/vapi_std_errors_not_found_error'
require 'vsphere-automation-content/models/vapi_std_errors_resource_busy'
require 'vsphere-automation-content/models/vapi_std_errors_resource_busy_error'
require 'vsphere-automation-content/models/vapi_std_errors_resource_inaccessible'
require 'vsphere-automation-content/models/vapi_std_errors_resource_inaccessible_error'
require 'vsphere-automation-content/models/vapi_std_errors_unauthenticated'
require 'vsphere-automation-content/models/vapi_std_errors_unauthenticated_error'
require 'vsphere-automation-content/models/vapi_std_errors_unauthorized'
require 'vsphere-automation-content/models/vapi_std_errors_unauthorized_error'
require 'vsphere-automation-content/models/vapi_std_errors_unsupported'
require 'vsphere-automation-content/models/vapi_std_errors_unsupported_error'
require 'vsphere-automation-content/models/vapi_std_localizable_message'

# APIs
require 'vsphere-automation-content/api/configuration_api'
require 'vsphere-automation-content/api/library_api'
require 'vsphere-automation-content/api/library_item_api'
require 'vsphere-automation-content/api/library_item_download_session_api'
require 'vsphere-automation-content/api/library_item_downloadsession_file_api'
require 'vsphere-automation-content/api/library_item_file_api'
require 'vsphere-automation-content/api/library_item_storage_api'
require 'vsphere-automation-content/api/library_item_update_session_api'
require 'vsphere-automation-content/api/library_item_updatesession_file_api'
require 'vsphere-automation-content/api/library_subscribed_item_api'
require 'vsphere-automation-content/api/library_subscriptions_api'
require 'vsphere-automation-content/api/local_library_api'
require 'vsphere-automation-content/api/subscribed_library_api'

module VSphereAutomation
  class << self
    # Customize default settings for the SDK using block.
    #   VSphereAutomation.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end

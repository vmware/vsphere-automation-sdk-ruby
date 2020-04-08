# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsClustersSoftwareReportsHardwareCompatibilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @param cluster Identifier of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def check_task(cluster, opts = {})
      data, _status_code, _headers = check_task_with_http_info(cluster, opts)
      data
    end

    # Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def check_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareReportsHardwareCompatibilityApi.check_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareReportsHardwareCompatibilityApi.check_task"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility?action=check&vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'ESX::String',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareReportsHardwareCompatibilityApi#check_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the hcl validation check summary.
    # @param cluster identifier of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(cluster, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, opts)
      data
    end

    # Returns the hcl validation check summary.
    # @api private
    # @param cluster identifier of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareReportsHardwareCompatibilityApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareReportsHardwareCompatibilityApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility'.sub('{' + 'cluster' + '}', cluster.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'ESX::EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareReportsHardwareCompatibilityApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

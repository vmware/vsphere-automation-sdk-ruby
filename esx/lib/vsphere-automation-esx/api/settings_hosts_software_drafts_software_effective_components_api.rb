# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the components that comprise the desired software state of the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier of the host.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, EsxSettingsEffectiveComponentInfo>|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def list(host, draft, opts = {})
      data, _status_code, _headers = list_with_http_info(host, draft, opts)
      data
    end

    # Returns the components that comprise the desired software state of the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier of the host.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, EsxSettingsEffectiveComponentInfo>|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(host, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi.list ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi.list"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi.list"
      end
      # resource path
      local_var_path = '/api/esx/settings/hosts/{host}/software/drafts/{draft}/software/effective-components'.sub('{' + 'host' + '}', host.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
	  '200' => 'ESX::Hash<String, EsxSettingsEffectiveComponentInfo>',
	  '400' => 'ESX::VapiStdErrorsUnsupported',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

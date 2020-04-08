# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsHostsSoftwareDraftsInternalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier of the host
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsHostsSoftwareDraftsInternalCreateResult|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def delete_and_create(host, opts = {})
      data, _status_code, _headers = delete_and_create_with_http_info(host, opts)
      data
    end

    # Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier of the host
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsHostsSoftwareDraftsInternalCreateResult|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_and_create_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsHostsSoftwareDraftsInternalApi.delete_and_create ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling SettingsHostsSoftwareDraftsInternalApi.delete_and_create"
      end
      # resource path
      local_var_path = '/api/esx/settings/hosts/{host}/software/drafts-internal?action=delete-and-create'.sub('{' + 'host' + '}', host.to_s)

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
	  '200' => 'ESX::EsxSettingsHostsSoftwareDraftsInternalCreateResult',
	  '400' => 'ESX::VapiStdErrorsUnsupported',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsHostsSoftwareDraftsInternalApi#delete_and_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Imports the desired software specification as a new draft. If there is a draft already associated with the user for this host, that draft will be deleted before new draft is created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier of the host.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsHostsSoftwareDraftsInternalImportSpec] :request_body 
    # @return [EsxSettingsHostsSoftwareDraftsInternalCreateResult|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def delete_and_import(host, opts = {})
      data, _status_code, _headers = delete_and_import_with_http_info(host, opts)
      data
    end

    # Imports the desired software specification as a new draft. If there is a draft already associated with the user for this host, that draft will be deleted before new draft is created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier of the host.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsHostsSoftwareDraftsInternalImportSpec] :request_body 
    # @return [Array<(EsxSettingsHostsSoftwareDraftsInternalCreateResult|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_and_import_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsHostsSoftwareDraftsInternalApi.delete_and_import ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling SettingsHostsSoftwareDraftsInternalApi.delete_and_import"
      end
      # resource path
      local_var_path = '/api/esx/settings/hosts/{host}/software/drafts-internal?action=delete-and-import'.sub('{' + 'host' + '}', host.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'ESX::EsxSettingsHostsSoftwareDraftsInternalCreateResult',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsHostsSoftwareDraftsInternalApi#delete_and_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
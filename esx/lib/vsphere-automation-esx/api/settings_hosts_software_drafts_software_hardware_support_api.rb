# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes a given host's working copy document Hardware Support Package configuration.
    # @param host Identifier for the host.
    # @param draft Identifier of image working copy document being updated
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def delete(host, draft, opts = {})
      delete_with_http_info(host, draft, opts)
      nil
    end

    # Deletes a given host&#39;s working copy document Hardware Support Package configuration.
    # @api private
    # @param host Identifier for the host.
    # @param draft Identifier of image working copy document being updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(host, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.delete ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.delete"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.delete"
      end
      # resource path
      local_var_path = '/api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support'.sub('{' + 'host' + '}', host.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a given host's working copy document Hardware Support Package (HSP) configuration.
    # @param host Identifier for the host.
    # @param draft Identifier of image working copy document being updated
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsHardwareSupportInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(host, draft, opts = {})
      data, _status_code, _headers = get_with_http_info(host, draft, opts)
      data
    end

    # Returns a given host&#39;s working copy document Hardware Support Package (HSP) configuration.
    # @api private
    # @param host Identifier for the host.
    # @param draft Identifier of image working copy document being updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsHardwareSupportInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(host, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.get ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.get"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support'.sub('{' + 'host' + '}', host.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
	  '200' => 'ESX::EsxSettingsHardwareSupportInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Replaces a given host's working copy document Hardware Support Package (HSP) configured.
    # @param host Identifier for the host.
    # @param draft Identifier of image working copy document being updated
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsHardwareSupportSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def set(host, draft, opts = {})
      set_with_http_info(host, draft, opts)
      nil
    end

    # Replaces a given host&#39;s working copy document Hardware Support Package (HSP) configured.
    # @api private
    # @param host Identifier for the host.
    # @param draft Identifier of image working copy document being updated
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsHardwareSupportSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(host, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.set ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.set"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.set"
      end
      # resource path
      local_var_path = '/api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support'.sub('{' + 'host' + '}', host.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

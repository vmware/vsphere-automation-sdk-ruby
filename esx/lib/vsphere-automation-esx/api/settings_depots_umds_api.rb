# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsDepotsUmdsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def delete(opts = {})
      delete_with_http_info(opts)
      nil
    end

    # Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsUmdsApi.delete ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/umds'

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
        @api_client.config.logger.debug "API called: SettingsDepotsUmdsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the information about a currently configured UMDS software depot.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsDepotsUmdsInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Gets the information about a currently configured UMDS software depot.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsDepotsUmdsInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsUmdsApi.get ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/umds'

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
	  '200' => 'ESX::EsxSettingsDepotsUmdsInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsUmdsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets or overwrites information about an UMDS software depot.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsUmdsSetSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def set(opts = {})
      set_with_http_info(opts)
      nil
    end

    # Sets or overwrites information about an UMDS software depot.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsUmdsSetSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsUmdsApi.set ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/umds'

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
        @api_client.config.logger.debug "API called: SettingsDepotsUmdsApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a currently configured UMDS software depot.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsUmdsUpdateSpec] :request_body 
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def update(opts = {})
      update_with_http_info(opts)
      nil
    end

    # Updates the configuration of a currently configured UMDS software depot.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsUmdsUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsUmdsApi.update ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/umds'

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsUmdsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

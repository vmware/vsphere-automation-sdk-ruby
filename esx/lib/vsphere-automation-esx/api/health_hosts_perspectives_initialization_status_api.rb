# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class HealthHostsPerspectivesInitializationStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check if the given host is ready to accept workloads.
    # @param host Contains the MoID identifying the ESXi host.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :request_body 
    # @return [EsxHealthStatusInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def check(host, opts = {})
      data, _status_code, _headers = check_with_http_info(host, opts)
      data
    end

    # Check if the given host is ready to accept workloads.
    # @api private
    # @param host Contains the MoID identifying the ESXi host.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :request_body 
    # @return [Array<(EsxHealthStatusInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthHostsPerspectivesInitializationStatusApi.check ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HealthHostsPerspectivesInitializationStatusApi.check"
      end
      # resource path
      local_var_path = '/api/esx/health/hosts/{host}/perspectives/initialization/status?action=check'.sub('{' + 'host' + '}', host.to_s)

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
	  '200' => 'ESX::EsxHealthStatusInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '403' => 'ESX::VapiStdErrorsUnauthorized',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthHostsPerspectivesInitializationStatusApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TokenserviceTokenExchangeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Exchanges incoming token based on the spec and current client authorization data.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTokenserviceTokenExchangeExchangeResp|VapiStdErrorsInvalidRequestError|VapiStdErrorsUnauthorizedError|VcenterTokenserviceInvalidScopeError|]
    def exchange(request_body, opts = {})
      data, _status_code, _headers = exchange_with_http_info(request_body, opts)
      data
    end

    # Exchanges incoming token based on the spec and current client authorization data.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTokenserviceTokenExchangeExchangeResp|VapiStdErrorsInvalidRequestError|VapiStdErrorsUnauthorizedError|VcenterTokenserviceInvalidScopeError|, Fixnum, Hash)>]  data, response status code and response headers
    def exchange_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenserviceTokenExchangeApi.exchange ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TokenserviceTokenExchangeApi.exchange"
      end
      # resource path
      local_var_path = '/rest/vcenter/tokenservice/token-exchange'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterTokenserviceTokenExchangeExchangeResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidRequestError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '500' => 'VCenter::VcenterTokenserviceInvalidScopeError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenserviceTokenExchangeApi#exchange\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

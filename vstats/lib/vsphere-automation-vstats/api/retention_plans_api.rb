# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module VStats
  class RetentionPlansApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the default retention plan. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param [Hash] opts the optional parameters
    # @return [VstatsRetentionPlansInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get_default(opts = {})
      data, _status_code, _headers = get_default_with_http_info(opts)
      data
    end

    # Returns the default retention plan. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VstatsRetentionPlansInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_default_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionPlansApi.get_default ...'
      end
      # resource path
      local_var_path = '/api/stats/retentions/default'

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
	  '200' => 'VStats::VstatsRetentionPlansInfo',
	  '401' => 'VStats::VapiStdErrorsUnauthenticated',
	  '403' => 'VStats::VapiStdErrorsUnauthorized',
	  '404' => 'VStats::VapiStdErrorsNotFound',
	  '500' => 'VStats::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionPlansApi#get_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

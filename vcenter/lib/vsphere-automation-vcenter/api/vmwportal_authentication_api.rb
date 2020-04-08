# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmwportalAuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmwportalAuthenticationCreateSpec] :request_body 
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def create(opts = {})
      create_with_http_info(opts)
      nil
    end

    # Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmwportalAuthenticationCreateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmwportalAuthenticationApi.create ...'
      end
      # resource path
      local_var_path = '/api/vcenter/vmwportal/authentication'

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmwportalAuthenticationApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

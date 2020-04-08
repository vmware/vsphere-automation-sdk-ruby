# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NsxEdgeClustersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return information about NSX Edge cluster specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNsxEdgeClustersInfo|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(cluster, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, opts)
      data
    end

    # Return information about NSX Edge cluster specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNsxEdgeClustersInfo|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxEdgeClustersApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NsxEdgeClustersApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/edge-clusters/{cluster}'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNsxEdgeClustersInfo',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxEdgeClustersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update NSX Edge capabilities of an existing NSX Edge cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxEdgeClusterUpdateSpec] :request_body 
    # @return [|VapiStdErrorsUnsupported|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def update(cluster, opts = {})
      update_with_http_info(cluster, opts)
      nil
    end

    # Update NSX Edge capabilities of an existing NSX Edge cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxEdgeClusterUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnsupported|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxEdgeClustersApi.update ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NsxEdgeClustersApi.update"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/edge-clusters/{cluster}?action=update'.sub('{' + 'cluster' + '}', cluster.to_s)

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
        @api_client.config.logger.debug "API called: NsxEdgeClustersApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

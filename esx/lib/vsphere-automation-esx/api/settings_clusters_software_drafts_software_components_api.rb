# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsClustersSoftwareDraftsSoftwareComponentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes the given component from the software draft.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param component Identifier of the component.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def delete(cluster, draft, component, opts = {})
      delete_with_http_info(cluster, draft, component, opts)
      nil
    end

    # Deletes the given component from the software draft.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param component Identifier of the component.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(cluster, draft, component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareComponentsApi.delete ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.delete"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.delete"
      end
      # verify the required parameter 'component' is set
      if @api_client.config.client_side_validation && component.nil?
        fail ArgumentError, "Missing the required parameter 'component' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.delete"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component}'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s).sub('{' + 'component' + '}', component.to_s)

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
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareComponentsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the component version for the given component in the software draft.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param component Identifier of the component.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsComponentInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(cluster, draft, component, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, draft, component, opts)
      data
    end

    # Returns the component version for the given component in the software draft.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param component Identifier of the component.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsComponentInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, draft, component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareComponentsApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.get"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.get"
      end
      # verify the required parameter 'component' is set
      if @api_client.config.client_side_validation && component.nil?
        fail ArgumentError, "Missing the required parameter 'component' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component}'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s).sub('{' + 'component' + '}', component.to_s)

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
	  '200' => 'ESX::EsxSettingsComponentInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareComponentsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the components that comprise the software draft.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, EsxSettingsComponentInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def list(cluster, draft, opts = {})
      data, _status_code, _headers = list_with_http_info(cluster, draft, opts)
      data
    end

    # Returns the components that comprise the software draft.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, EsxSettingsComponentInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cluster, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareComponentsApi.list ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.list"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.list"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
	  '200' => 'ESX::Hash<String, EsxSettingsComponentInfo>',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareComponentsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set the component version for a given component in the software draft. This will overwrite any existing version for the given component.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param component Identifier of the component.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def set(cluster, draft, component, opts = {})
      set_with_http_info(cluster, draft, component, opts)
      nil
    end

    # Set the component version for a given component in the software draft. This will overwrite any existing version for the given component.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param component Identifier of the component.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(cluster, draft, component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareComponentsApi.set ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.set"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.set"
      end
      # verify the required parameter 'component' is set
      if @api_client.config.client_side_validation && component.nil?
        fail ArgumentError, "Missing the required parameter 'component' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.set"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component}'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s).sub('{' + 'component' + '}', component.to_s)

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
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareComponentsApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec] :request_body 
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def update(cluster, draft, opts = {})
      update_with_http_info(cluster, draft, opts)
      nil
    end

    # Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(cluster, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareComponentsApi.update ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.update"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi.update"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareComponentsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class VmonServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the state of a service.
    # @param service identifier of the service whose state is being queried. The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceVmonServiceResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(service, opts = {})
      data, _status_code, _headers = get_with_http_info(service, opts)
      data
    end

    # Returns the state of a service.
    # @api private
    # @param service identifier of the service whose state is being queried. The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceVmonServiceResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmonServiceApi.get ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling VmonServiceApi.get"
      end
      # resource path
      local_var_path = '/appliance/vmon/service/{service}'.sub('{' + 'service' + '}', service.to_s)

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
	  '200' => 'Appliance::ApplianceVmonServiceResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmonServiceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists details of services managed by vMon.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceVmonServiceListDetailsResult|VapiStdErrorsErrorError|]
    def list_details(opts = {})
      data, _status_code, _headers = list_details_with_http_info(opts)
      data
    end

    # Lists details of services managed by vMon.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceVmonServiceListDetailsResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmonServiceApi.list_details ...'
      end
      # resource path
      local_var_path = '/appliance/vmon/service'

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
	  '200' => 'Appliance::ApplianceVmonServiceListDetailsResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmonServiceApi#list_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Restarts a service
    # @param service identifier of the service to restart The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil]
    def restart(service, opts = {})
      restart_with_http_info(service, opts)
      nil
    end

    # Restarts a service
    # @api private
    # @param service identifier of the service to restart The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def restart_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmonServiceApi.restart ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling VmonServiceApi.restart"
      end
      # resource path
      local_var_path = '/appliance/vmon/service/{service}/restart'.sub('{' + 'service' + '}', service.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmonServiceApi#restart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts a service
    # @param service identifier of the service to start The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil]
    def start(service, opts = {})
      start_with_http_info(service, opts)
      nil
    end

    # Starts a service
    # @api private
    # @param service identifier of the service to start The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmonServiceApi.start ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling VmonServiceApi.start"
      end
      # resource path
      local_var_path = '/appliance/vmon/service/{service}/start'.sub('{' + 'service' + '}', service.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmonServiceApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Stops a service
    # @param service identifier of the service to stop The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def stop(service, opts = {})
      stop_with_http_info(service, opts)
      nil
    end

    # Stops a service
    # @api private
    # @param service identifier of the service to stop The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def stop_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmonServiceApi.stop ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling VmonServiceApi.stop"
      end
      # resource path
      local_var_path = '/appliance/vmon/service/{service}/stop'.sub('{' + 'service' + '}', service.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmonServiceApi#stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of a service.
    # @param service identifier of the service whose properties are being updated. The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def update(service, request_body, opts = {})
      update_with_http_info(service, request_body, opts)
      nil
    end

    # Updates the properties of a service.
    # @api private
    # @param service identifier of the service whose properties are being updated. The parameter must be an identifier for the resource type: appliance.vmon.Service.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(service, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmonServiceApi.update ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling VmonServiceApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmonServiceApi.update"
      end
      # resource path
      local_var_path = '/appliance/vmon/service/{service}'.sub('{' + 'service' + '}', service.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmonServiceApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

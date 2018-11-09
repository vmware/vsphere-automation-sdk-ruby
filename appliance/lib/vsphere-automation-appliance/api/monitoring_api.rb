=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.2

=end

require 'uri'

module VSphereAutomation
  module Appliance
  class MonitoringApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get monitored item info
    # @param stat_id statistic item id
    # @param [Hash] opts the optional parameters
    # @return [ApplianceMonitoringResult|VapiStdErrorsErrorError|]
    def get(stat_id, opts = {})
      data, _status_code, _headers = get_with_http_info(stat_id, opts)
      data
    end

    # Get monitored item info
    # @param stat_id statistic item id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceMonitoringResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(stat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.get ...'
      end
      # verify the required parameter 'stat_id' is set
      if @api_client.config.client_side_validation && stat_id.nil?
        fail ArgumentError, "Missing the required parameter 'stat_id' when calling MonitoringApi.get"
      end
      # resource path
      local_var_path = '/appliance/monitoring/{stat_id}'.sub('{' + 'stat_id' + '}', stat_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceMonitoringResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get monitored items list
    # @param [Hash] opts the optional parameters
    # @return [ApplianceMonitoringListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get monitored items list
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceMonitoringListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/monitoring'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceMonitoringListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get monitoring data.
    # @param item MonitoredItemDataRequest Structure
    # @param [Hash] opts the optional parameters
    # @return [ApplianceMonitoringQueryResult|VapiStdErrorsErrorError|]
    def query(item, opts = {})
      data, _status_code, _headers = query_with_http_info(item, opts)
      data
    end

    # Get monitoring data.
    # @param item MonitoredItemDataRequest Structure
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceMonitoringQueryResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def query_with_http_info(item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.query ...'
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling MonitoringApi.query"
      end
      # resource path
      local_var_path = '/appliance/monitoring/query'

      # query parameters
      query_params = {}
      query_params[:'item'] = item

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceMonitoringQueryResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemUpdatesessionFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. <p> When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
    # @param update_session_id Identifier of the update session to be modified.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileAddResp|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def add(update_session_id, request_body, opts = {})
      data, _status_code, _headers = add_with_http_info(update_session_id, request_body, opts)
      data
    end

    # Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. &lt;p&gt; When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
    # @api private
    # @param update_session_id Identifier of the update session to be modified.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileAddResp|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(update_session_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.add ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.add"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemUpdatesessionFileApi.add"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=add'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileAddResp',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
    # @param update_session_id Identifier of the update session.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|]
    def get(update_session_id, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(update_session_id, request_body, opts)
      data
    end

    # Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
    # @api private
    # @param update_session_id Identifier of the update session.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(update_session_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.get ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemUpdatesessionFileApi.get"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=get'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileResp',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all files in the library item associated with the update session.
    # @param update_session_id Identifier of the update session.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileListResp|VapiStdErrorsNotFoundError|]
    def list(update_session_id, opts = {})
      data, _status_code, _headers = list_with_http_info(update_session_id, opts)
      data
    end

    # Lists all files in the library item associated with the update session.
    # @api private
    # @param update_session_id Identifier of the update session.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileListResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.list ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.list"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/updatesession/file'

      # query parameters
      query_params = {}
      query_params[:'update_session_id'] = update_session_id

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
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileListResp',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Requests a file to be removed. The file will only be effectively removed when the update session is completed.
    # @param update_session_id Identifier of the update session.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil]
    def remove(update_session_id, request_body, opts = {})
      remove_with_http_info(update_session_id, request_body, opts)
      nil
    end

    # Requests a file to be removed. The file will only be effectively removed when the update session is completed.
    # @api private
    # @param update_session_id Identifier of the update session.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_with_http_info(update_session_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.remove ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.remove"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemUpdatesessionFileApi.remove"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=remove'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.
    # @param update_session_id Identifier of the update session to validate.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileValidateResp|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|]
    def validate(update_session_id, opts = {})
      data, _status_code, _headers = validate_with_http_info(update_session_id, opts)
      data
    end

    # Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.
    # @api private
    # @param update_session_id Identifier of the update session to validate.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileValidateResp|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def validate_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.validate ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.validate"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=validate'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileValidateResp',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end

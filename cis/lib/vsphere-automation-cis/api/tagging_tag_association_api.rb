# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# cis - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module CIS
  class TaggingTagAssociationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_attach 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def attach(tag_id, cis_tagging_tag_association_attach, opts = {})
      attach_with_http_info(tag_id, cis_tagging_tag_association_attach, opts)
      nil
    end

    # Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
    # @api private
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_attach 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def attach_with_http_info(tag_id, cis_tagging_tag_association_attach, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.attach ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TaggingTagAssociationApi.attach"
      end
      # verify the required parameter 'cis_tagging_tag_association_attach' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_attach.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_attach' when calling TaggingTagAssociationApi.attach"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association/id:{tag_id}?~action=attach'.sub('{' + 'tag_id' + '}', tag_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_attach)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#attach\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.
    # @param cis_tagging_tag_association_attach_multiple_tags_to_object 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationAttachMultipleTagsToObjectResult|VapiStdErrorsUnauthorizedError|]
    def attach_multiple_tags_to_object(cis_tagging_tag_association_attach_multiple_tags_to_object, opts = {})
      data, _status_code, _headers = attach_multiple_tags_to_object_with_http_info(cis_tagging_tag_association_attach_multiple_tags_to_object, opts)
      data
    end

    # Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.
    # @api private
    # @param cis_tagging_tag_association_attach_multiple_tags_to_object 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationAttachMultipleTagsToObjectResult|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def attach_multiple_tags_to_object_with_http_info(cis_tagging_tag_association_attach_multiple_tags_to_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.attach_multiple_tags_to_object ...'
      end
      # verify the required parameter 'cis_tagging_tag_association_attach_multiple_tags_to_object' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_attach_multiple_tags_to_object.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_attach_multiple_tags_to_object' when calling TaggingTagAssociationApi.attach_multiple_tags_to_object"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association?~action=attach-multiple-tags-to-object'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_attach_multiple_tags_to_object)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationAttachMultipleTagsToObjectResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#attach_multiple_tags_to_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_attach_tag_to_multiple_objects 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationAttachTagToMultipleObjectsResult|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def attach_tag_to_multiple_objects(tag_id, cis_tagging_tag_association_attach_tag_to_multiple_objects, opts = {})
      data, _status_code, _headers = attach_tag_to_multiple_objects_with_http_info(tag_id, cis_tagging_tag_association_attach_tag_to_multiple_objects, opts)
      data
    end

    # Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
    # @api private
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_attach_tag_to_multiple_objects 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationAttachTagToMultipleObjectsResult|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def attach_tag_to_multiple_objects_with_http_info(tag_id, cis_tagging_tag_association_attach_tag_to_multiple_objects, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.attach_tag_to_multiple_objects ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TaggingTagAssociationApi.attach_tag_to_multiple_objects"
      end
      # verify the required parameter 'cis_tagging_tag_association_attach_tag_to_multiple_objects' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_attach_tag_to_multiple_objects.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_attach_tag_to_multiple_objects' when calling TaggingTagAssociationApi.attach_tag_to_multiple_objects"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association/id:{tag_id}?~action=attach-tag-to-multiple-objects'.sub('{' + 'tag_id' + '}', tag_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_attach_tag_to_multiple_objects)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationAttachTagToMultipleObjectsResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	  '404' => 'CIS::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#attach_tag_to_multiple_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_detach 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def detach(tag_id, cis_tagging_tag_association_detach, opts = {})
      detach_with_http_info(tag_id, cis_tagging_tag_association_detach, opts)
      nil
    end

    # Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
    # @api private
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_detach 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def detach_with_http_info(tag_id, cis_tagging_tag_association_detach, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.detach ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TaggingTagAssociationApi.detach"
      end
      # verify the required parameter 'cis_tagging_tag_association_detach' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_detach.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_detach' when calling TaggingTagAssociationApi.detach"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association/id:{tag_id}?~action=detach'.sub('{' + 'tag_id' + '}', tag_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_detach)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#detach\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.
    # @param cis_tagging_tag_association_detach_multiple_tags_from_object 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationDetachMultipleTagsFromObjectResult|VapiStdErrorsUnauthorizedError|]
    def detach_multiple_tags_from_object(cis_tagging_tag_association_detach_multiple_tags_from_object, opts = {})
      data, _status_code, _headers = detach_multiple_tags_from_object_with_http_info(cis_tagging_tag_association_detach_multiple_tags_from_object, opts)
      data
    end

    # Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.
    # @api private
    # @param cis_tagging_tag_association_detach_multiple_tags_from_object 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationDetachMultipleTagsFromObjectResult|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def detach_multiple_tags_from_object_with_http_info(cis_tagging_tag_association_detach_multiple_tags_from_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.detach_multiple_tags_from_object ...'
      end
      # verify the required parameter 'cis_tagging_tag_association_detach_multiple_tags_from_object' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_detach_multiple_tags_from_object.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_detach_multiple_tags_from_object' when calling TaggingTagAssociationApi.detach_multiple_tags_from_object"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association?~action=detach-multiple-tags-from-object'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_detach_multiple_tags_from_object)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationDetachMultipleTagsFromObjectResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#detach_multiple_tags_from_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_detach_tag_from_multiple_objects 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationDetachTagFromMultipleObjectsResult|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def detach_tag_from_multiple_objects(tag_id, cis_tagging_tag_association_detach_tag_from_multiple_objects, opts = {})
      data, _status_code, _headers = detach_tag_from_multiple_objects_with_http_info(tag_id, cis_tagging_tag_association_detach_tag_from_multiple_objects, opts)
      data
    end

    # Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
    # @api private
    # @param tag_id The identifier of the input tag.
    # @param cis_tagging_tag_association_detach_tag_from_multiple_objects 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationDetachTagFromMultipleObjectsResult|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def detach_tag_from_multiple_objects_with_http_info(tag_id, cis_tagging_tag_association_detach_tag_from_multiple_objects, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.detach_tag_from_multiple_objects ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TaggingTagAssociationApi.detach_tag_from_multiple_objects"
      end
      # verify the required parameter 'cis_tagging_tag_association_detach_tag_from_multiple_objects' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_detach_tag_from_multiple_objects.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_detach_tag_from_multiple_objects' when calling TaggingTagAssociationApi.detach_tag_from_multiple_objects"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association/id:{tag_id}?~action=detach-tag-from-multiple-objects'.sub('{' + 'tag_id' + '}', tag_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_detach_tag_from_multiple_objects)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationDetachTagFromMultipleObjectsResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	  '404' => 'CIS::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#detach_tag_from_multiple_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.
    # @param cis_tagging_tag_association_list_attachable_tags 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationListAttachableTagsResult|VapiStdErrorsUnauthorizedError|]
    def list_attachable_tags(cis_tagging_tag_association_list_attachable_tags, opts = {})
      data, _status_code, _headers = list_attachable_tags_with_http_info(cis_tagging_tag_association_list_attachable_tags, opts)
      data
    end

    # Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.
    # @api private
    # @param cis_tagging_tag_association_list_attachable_tags 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationListAttachableTagsResult|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_attachable_tags_with_http_info(cis_tagging_tag_association_list_attachable_tags, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.list_attachable_tags ...'
      end
      # verify the required parameter 'cis_tagging_tag_association_list_attachable_tags' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_list_attachable_tags.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_list_attachable_tags' when calling TaggingTagAssociationApi.list_attachable_tags"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association?~action=list-attachable-tags'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_list_attachable_tags)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationListAttachableTagsResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#list_attachable_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
    # @param tag_id The identifier of the input tag.
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationListAttachedObjectsResult|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list_attached_objects(tag_id, opts = {})
      data, _status_code, _headers = list_attached_objects_with_http_info(tag_id, opts)
      data
    end

    # Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
    # @api private
    # @param tag_id The identifier of the input tag.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationListAttachedObjectsResult|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_attached_objects_with_http_info(tag_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.list_attached_objects ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TaggingTagAssociationApi.list_attached_objects"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association/id:{tag_id}?~action=list-attached-objects'.sub('{' + 'tag_id' + '}', tag_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationListAttachedObjectsResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	  '404' => 'CIS::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#list_attached_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.
    # @param cis_tagging_tag_association_list_attached_objects_on_tags 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationListAttachedObjectsOnTagsResult|]
    def list_attached_objects_on_tags(cis_tagging_tag_association_list_attached_objects_on_tags, opts = {})
      data, _status_code, _headers = list_attached_objects_on_tags_with_http_info(cis_tagging_tag_association_list_attached_objects_on_tags, opts)
      data
    end

    # Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.
    # @api private
    # @param cis_tagging_tag_association_list_attached_objects_on_tags 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationListAttachedObjectsOnTagsResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_attached_objects_on_tags_with_http_info(cis_tagging_tag_association_list_attached_objects_on_tags, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.list_attached_objects_on_tags ...'
      end
      # verify the required parameter 'cis_tagging_tag_association_list_attached_objects_on_tags' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_list_attached_objects_on_tags.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_list_attached_objects_on_tags' when calling TaggingTagAssociationApi.list_attached_objects_on_tags"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association?~action=list-attached-objects-on-tags'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_list_attached_objects_on_tags)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationListAttachedObjectsOnTagsResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#list_attached_objects_on_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.
    # @param cis_tagging_tag_association_list_attached_tags 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationListAttachedTagsResult|VapiStdErrorsUnauthorizedError|]
    def list_attached_tags(cis_tagging_tag_association_list_attached_tags, opts = {})
      data, _status_code, _headers = list_attached_tags_with_http_info(cis_tagging_tag_association_list_attached_tags, opts)
      data
    end

    # Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.
    # @api private
    # @param cis_tagging_tag_association_list_attached_tags 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationListAttachedTagsResult|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_attached_tags_with_http_info(cis_tagging_tag_association_list_attached_tags, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.list_attached_tags ...'
      end
      # verify the required parameter 'cis_tagging_tag_association_list_attached_tags' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_list_attached_tags.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_list_attached_tags' when calling TaggingTagAssociationApi.list_attached_tags"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association?~action=list-attached-tags'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_list_attached_tags)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationListAttachedTagsResult',
	  '403' => 'CIS::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#list_attached_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.
    # @param cis_tagging_tag_association_list_attached_tags_on_objects 
    # @param [Hash] opts the optional parameters
    # @return [CisTaggingTagAssociationListAttachedTagsOnObjectsResult|]
    def list_attached_tags_on_objects(cis_tagging_tag_association_list_attached_tags_on_objects, opts = {})
      data, _status_code, _headers = list_attached_tags_on_objects_with_http_info(cis_tagging_tag_association_list_attached_tags_on_objects, opts)
      data
    end

    # Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.
    # @api private
    # @param cis_tagging_tag_association_list_attached_tags_on_objects 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisTaggingTagAssociationListAttachedTagsOnObjectsResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_attached_tags_on_objects_with_http_info(cis_tagging_tag_association_list_attached_tags_on_objects, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingTagAssociationApi.list_attached_tags_on_objects ...'
      end
      # verify the required parameter 'cis_tagging_tag_association_list_attached_tags_on_objects' is set
      if @api_client.config.client_side_validation && cis_tagging_tag_association_list_attached_tags_on_objects.nil?
        fail ArgumentError, "Missing the required parameter 'cis_tagging_tag_association_list_attached_tags_on_objects' when calling TaggingTagAssociationApi.list_attached_tags_on_objects"
      end
      # resource path
      local_var_path = '/com/vmware/cis/tagging/tag-association?~action=list-attached-tags-on-objects'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cis_tagging_tag_association_list_attached_tags_on_objects)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisTaggingTagAssociationListAttachedTagsOnObjectsResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingTagAssociationApi#list_attached_tags_on_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VStats::DataApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DataApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VStats::DataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DataApi' do
    it 'should create an instance of DataApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VStats::DataApi)
    end
  end

  # unit tests for query_data_points
  # Returns Data.DataPointsResult matching the filter parameters.   /vstats/data/dp?types&#x3D;VM&amp;types&#x3D;VCPU    /vstats/data/dp?rsrcs&#x3D;type.HOST&#x3D;host-16&amp;rsrcs&#x3D;type.VM&#x3D;vm-31 . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Start of a time window (included), timestamp in seconds UTC. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be limited by start time.
  # @option opts [Integer] :_end End of a time window (excluded), timestamp in seconds UTC. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be limited by end time.
  # @option opts [String] :cid Counter ID. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by counter. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter.
  # @option opts [String] :metric Metric name. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by metric name. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Metric. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Metric.
  # @option opts [Array<String>] :types List of Resource types. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by resource types. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType.
  # @option opts [Array<String>] :resources Resources to include in the query. Each resource is specified through a composite string that follows the following format.   type.&lt;resource type&gt;[.&lt;scheme&gt;]&#x3D;&lt;resource id&gt;    resource type specifies the type of resource for example VM, VCPU etc.    scheme is an optional element to disambiguate the resource as needed for example to differentiate managed object id from uuid.    resource id is the unique resource identifier value for example: vm-41    Example values include: type.VM&#x3D;vm-41, type.VCPU&#x3D;1, type.VM.moid&#x3D;vm-41 . Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When left unset the result will not be filtered for specific resources.
  # @option opts [String] :order Directs the server to order the returned data. Passing a value of DEFAULT will apply default ordering of the results that makes them easier for consumption. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When this parameter is unset the server will not order the result, save computational time and therefore the API will operate faster.
  # @option opts [String] :page Used to retrieve paged data for larger result sets. The value of this token is generated by server and returned as next field in the result of Data.query-data-points operations. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the first page of results will be returned.
  # @return [VstatsDataDataPointsResult]
  describe 'query_data_points test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

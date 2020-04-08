# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::HlmSddcsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HlmSddcsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::HlmSddcsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HlmSddcsApi' do
    it 'should create an instance of HlmSddcsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::HlmSddcsApi)
    end
  end

  # unit tests for list
  # Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param filter_only_available_to_add Whether or not to filter results based on if the sddc is available to add to the community. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [VcenterHlmSddcsListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

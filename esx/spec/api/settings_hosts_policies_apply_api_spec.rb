# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsHostsPoliciesApplyApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsHostsPoliciesApplyApi' do
    it 'should create an instance of SettingsHostsPoliciesApplyApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi)
    end
  end

  # unit tests for get
  # Returns the configured policy that has been set for the ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host The host identifier.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsHostsPoliciesApplyConfiguredPolicySpec]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # This API will set the configured policy for an ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host The host identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsHostsPoliciesApplyConfiguredPolicySpec] :request_body 
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareAddOnApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareAddOnApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareAddOnApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareAddOnApi' do
    it 'should create an instance of SettingsClustersSoftwareAddOnApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareAddOnApi)
    end
  end

  # unit tests for get
  # Returns the desired OEM add-on specification for a given cluster.
  # @param cluster Identifier of the cluster.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsAddOnInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

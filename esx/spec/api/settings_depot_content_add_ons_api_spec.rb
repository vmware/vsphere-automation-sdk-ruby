# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsDepotContentAddOnsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsDepotContentAddOnsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsDepotContentAddOnsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsDepotContentAddOnsApi' do
    it 'should create an instance of SettingsDepotContentAddOnsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsDepotContentAddOnsApi)
    end
  end

  # unit tests for list
  # Returns a list of currently available OEM add-ons in the depot.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :vendors Vendors that an add-on must have to match the filter.
  # @option opts [Array<String>] :names Names that an add-on must have to match the filter.
  # @option opts [Array<String>] :versions Versions that an add-on must have to match the filter.
  # @option opts [String] :min_version Minimum version of an add-on that can match the filter.
  # @return [Array<EsxSettingsDepotContentAddOnsSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

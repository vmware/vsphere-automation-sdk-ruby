# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsDepotContentBaseImagesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsDepotContentBaseImagesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsDepotContentBaseImagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsDepotContentBaseImagesApi' do
    it 'should create an instance of SettingsDepotContentBaseImagesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsDepotContentBaseImagesApi)
    end
  end

  # unit tests for list
  # Returns a list of currently available base-images in the depot.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :min_version Minimum version of a base-image that can match the filter.
  # @return [Array<EsxSettingsDepotContentBaseImagesSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
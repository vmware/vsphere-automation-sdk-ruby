# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi' do
    it 'should create an instance of SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi)
    end
  end

  # unit tests for delete
  # Deletes a given cluster&#39;s working copy document Hardware Support Package (HSP) configuration.
  # @param cluster Identifier for the cluster.
  # @param draft Identifier of image working copy document being updated
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns a given cluster&#39;s working copy document Hardware Support Package (HSP) configuration.
  # @param cluster Identifier for the cluster.
  # @param draft Identifier of image working copy document being updated
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsHardwareSupportInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Replaces a given cluster&#39;s working copy document Hardware Support Package (HSP) configuration.
  # @param cluster Identifier for the cluster.
  # @param draft Identifier of image working copy document being updated
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsHardwareSupportSpec] :request_body 
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

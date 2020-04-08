# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareCommitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareCommitsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareCommitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareCommitsApi' do
    it 'should create an instance of SettingsClustersSoftwareCommitsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareCommitsApi)
    end
  end

  # unit tests for get
  # Returns the information about a specific commit.
  # @param cluster Identifier of the cluster.
  # @param commit Identifier of the specific commit.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsClustersSoftwareCommitsInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

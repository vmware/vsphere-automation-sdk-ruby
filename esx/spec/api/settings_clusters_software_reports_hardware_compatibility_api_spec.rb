# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareReportsHardwareCompatibilityApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareReportsHardwareCompatibilityApi' do
    it 'should create an instance of SettingsClustersSoftwareReportsHardwareCompatibilityApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi)
    end
  end

  # unit tests for check_task
  # Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  # @param cluster Identifier of the cluster.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'check_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns the hcl validation check summary.
  # @param cluster identifier of the cluster.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

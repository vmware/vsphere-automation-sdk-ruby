# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DeploymentUpgradeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentUpgradeApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentUpgradeApi' do
    it 'should create an instance of DeploymentUpgradeApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DeploymentUpgradeApi)
    end
  end

  # unit tests for cancel
  # Cancel the appliance upgrade that is in progress.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check
  # Run sanity checks using the UpgradeSpec parameters passed.
  # @param vcenter_deployment_upgrade_check 
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentUpgradeCheckResult]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentUpgradeResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Start the appliance installation.
  # @param vcenter_deployment_upgrade_start 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
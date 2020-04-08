# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DeploymentMigrateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentMigrateApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DeploymentMigrateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentMigrateApi' do
    it 'should create an instance of DeploymentMigrateApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DeploymentMigrateApi)
    end
  end

  # unit tests for cancel
  # Cancel the appliance migration that is in progress.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check
  # Run sanity checks using the MigrateSpec parameters passed.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentMigrateCheckResp]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get the MigrateSpec parameters used to configure the ongoing appliance migration.
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentMigrateResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Start the appliance migration.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
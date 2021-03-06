# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DeploymentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DeploymentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentApi' do
    it 'should create an instance of DeploymentApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DeploymentApi)
    end
  end

  # unit tests for get
  # Get the current status of the appliance deployment.
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for rollback
  # Rollback a failed appliance so it can be configured once again.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'rollback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

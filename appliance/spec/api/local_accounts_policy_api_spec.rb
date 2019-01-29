# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::LocalAccountsPolicyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LocalAccountsPolicyApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::LocalAccountsPolicyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocalAccountsPolicyApi' do
    it 'should create an instance of LocalAccountsPolicyApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::LocalAccountsPolicyApi)
    end
  end

  # unit tests for get
  # Get the global password policy.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceLocalAccountsPolicyResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set the global password policy.
  # @param appliance_local_accounts_policy_set 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
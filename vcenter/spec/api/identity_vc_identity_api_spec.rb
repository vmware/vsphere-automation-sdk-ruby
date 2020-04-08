# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::IdentityVcIdentityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IdentityVcIdentityApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::IdentityVcIdentityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdentityVcIdentityApi' do
    it 'should create an instance of IdentityVcIdentityApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::IdentityVcIdentityApi)
    end
  end

  # unit tests for get
  # Retrieve VcIdentity for local domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [VcenterIdentityVcIdentityResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update the VcIdentity for local domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

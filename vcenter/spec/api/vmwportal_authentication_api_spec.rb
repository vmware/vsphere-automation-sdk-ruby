# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmwportalAuthenticationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmwportalAuthenticationApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmwportalAuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmwportalAuthenticationApi' do
    it 'should create an instance of VmwportalAuthenticationApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmwportalAuthenticationApi)
    end
  end

  # unit tests for create
  # Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterVmwportalAuthenticationCreateSpec] :request_body 
  # @return [nil]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

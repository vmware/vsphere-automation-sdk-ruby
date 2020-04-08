# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::ContentRegistriesHealthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContentRegistriesHealthApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::ContentRegistriesHealthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentRegistriesHealthApi' do
    it 'should create an instance of ContentRegistriesHealthApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::ContentRegistriesHealthApi)
    end
  end

  # unit tests for get
  # Returns the health information of a container registry in the vCenter.
  # @param registry Identifier of the registry.
  # @param [Hash] opts the optional parameters
  # @return [VcenterContentRegistriesHealthResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

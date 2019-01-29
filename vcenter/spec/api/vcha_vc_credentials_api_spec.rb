# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VchaVcCredentialsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VchaVcCredentialsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VchaVcCredentialsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VchaVcCredentialsApi' do
    it 'should create an instance of VchaVcCredentialsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VchaVcCredentialsApi)
    end
  end

  # unit tests for validate
  # Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
  # @param vcenter_vcha_vc_credentials_validate 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'validate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
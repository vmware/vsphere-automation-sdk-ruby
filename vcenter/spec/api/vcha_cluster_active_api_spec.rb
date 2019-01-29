# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VchaClusterActiveApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VchaClusterActiveApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VchaClusterActiveApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VchaClusterActiveApi' do
    it 'should create an instance of VchaClusterActiveApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VchaClusterActiveApi)
    end
  end

  # unit tests for get
  # Retrieves information about the active node of a VCHA cluster.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterVchaClusterActiveGet] :vcenter_vcha_cluster_active_get 
  # @return [VcenterVchaClusterActiveResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
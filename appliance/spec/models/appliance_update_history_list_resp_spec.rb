# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::Appliance::ApplianceUpdateHistoryListResp
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApplianceUpdateHistoryListResp' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::ApplianceUpdateHistoryListResp.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplianceUpdateHistoryListResp' do
    it 'should create an instance of ApplianceUpdateHistoryListResp' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::ApplianceUpdateHistoryListResp)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

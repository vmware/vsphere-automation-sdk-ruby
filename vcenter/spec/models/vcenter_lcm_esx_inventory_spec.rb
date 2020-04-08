# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VCenter::VcenterLcmEsxInventory
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterLcmEsxInventory' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterLcmEsxInventory.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterLcmEsxInventory' do
    it 'should create an instance of VcenterLcmEsxInventory' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterLcmEsxInventory)
    end
  end
  describe 'test attribute "datastore_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "network_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resource_pool_path"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

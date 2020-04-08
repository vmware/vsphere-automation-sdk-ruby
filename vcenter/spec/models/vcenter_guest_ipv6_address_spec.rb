# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VCenter::VcenterGuestIpv6Address
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterGuestIpv6Address' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterGuestIpv6Address.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterGuestIpv6Address' do
    it 'should create an instance of VcenterGuestIpv6Address' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterGuestIpv6Address)
    end
  end
  describe 'test attribute "ip_address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "prefix"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
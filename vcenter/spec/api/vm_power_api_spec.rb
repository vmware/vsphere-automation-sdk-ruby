# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmPowerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmPowerApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmPowerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmPowerApi' do
    it 'should create an instance of VmPowerApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmPowerApi)
    end
  end

  # unit tests for get
  # Returns the power state information of a virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmPowerResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset
  # Resets a powered-on virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'reset test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Powers on a powered-off or suspended virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for stop
  # Powers off a powered-on or suspended virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'stop test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suspend
  # Suspends a powered-on virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'suspend test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmGuestDataSetsEntriesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmGuestDataSetsEntriesApi' do
    it 'should create an instance of VmGuestDataSetsEntriesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi)
    end
  end

  # unit tests for delete
  # Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
  # @param key The key of the entry to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_multiple
  # Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :request_body 
  # @return [nil]
  describe 'delete_multiple test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
  # @param key The key of the entry to query.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_multiple
  # Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :request_body 
  # @return [Hash<String, String>]
  describe 'get_multiple test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
  # @param key The key of the entry to set. A key can be at most 4096 bytes.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :request_body 
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_multiple
  # Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :request_body 
  # @return [nil]
  describe 'set_multiple test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

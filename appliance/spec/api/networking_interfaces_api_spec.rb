# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::NetworkingInterfacesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkingInterfacesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::NetworkingInterfacesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkingInterfacesApi' do
    it 'should create an instance of NetworkingInterfacesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::NetworkingInterfacesApi)
    end
  end

  # unit tests for get
  # Get information about a particular network interface.
  # @param interface_name Network interface, for example, \&quot;nic0\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceNetworkingInterfacesResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get list of available network interfaces, including those that are not yet configured.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceNetworkingInterfacesListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
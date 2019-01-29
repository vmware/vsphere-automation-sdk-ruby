# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::VmonServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmonServiceApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::VmonServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmonServiceApi' do
    it 'should create an instance of VmonServiceApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::VmonServiceApi)
    end
  end

  # unit tests for get
  # Returns the state of a service.
  # @param service identifier of the service whose state is being queried. The parameter must be an identifier for the resource type: appliance.vmon.Service.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceVmonServiceResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_details
  # Lists details of services managed by vMon.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceVmonServiceListDetailsResult]
  describe 'list_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restart
  # Restarts a service
  # @param service identifier of the service to restart The parameter must be an identifier for the resource type: appliance.vmon.Service.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'restart test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Starts a service
  # @param service identifier of the service to start The parameter must be an identifier for the resource type: appliance.vmon.Service.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for stop
  # Stops a service
  # @param service identifier of the service to stop The parameter must be an identifier for the resource type: appliance.vmon.Service.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'stop test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the properties of a service.
  # @param service identifier of the service whose properties are being updated. The parameter must be an identifier for the resource type: appliance.vmon.Service.
  # @param appliance_vmon_service_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
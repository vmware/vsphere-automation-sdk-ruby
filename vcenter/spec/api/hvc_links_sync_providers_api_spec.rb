# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::HvcLinksSyncProvidersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HvcLinksSyncProvidersApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::HvcLinksSyncProvidersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HvcLinksSyncProvidersApi' do
    it 'should create an instance of HvcLinksSyncProvidersApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::HvcLinksSyncProvidersApi)
    end
  end

  # unit tests for get
  # Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param link Unique identifier of the link
  # @param provider Unique identifier of the sync provider.
  # @param [Hash] opts the optional parameters
  # @return [VcenterHvcLinksSyncProvidersResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param link Unique identifier of the link
  # @param [Hash] opts the optional parameters
  # @return [VcenterHvcLinksSyncProvidersListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param link Unique identifier of the link
  # @param provider Unique identifier representing the sync provider
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterHvcLinksSyncProvidersStart] :request_body 
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

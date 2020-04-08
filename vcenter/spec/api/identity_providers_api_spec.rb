# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::IdentityProvidersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IdentityProvidersApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::IdentityProvidersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdentityProvidersApi' do
    it 'should create an instance of IdentityProvidersApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::IdentityProvidersApi)
    end
  end

  # unit tests for create
  # Create a vCenter Server identity provider.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterIdentityProvidersCreateResp]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Delete a vCenter Server identity provider.
  # @param provider the identifier of the provider to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Retrieve detailed information of the specified identity provider.
  # @param provider the identifier of the provider
  # @param [Hash] opts the optional parameters
  # @return [VcenterIdentityProvidersResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Retrieve all identity providers.
  # @param [Hash] opts the optional parameters
  # @return [VcenterIdentityProvidersListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a vCenter Server identity provider.
  # @param provider the identifier of the provider to update
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

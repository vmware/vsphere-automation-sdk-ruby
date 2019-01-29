# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VAPI::MetadataPrivilegePackageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetadataPrivilegePackageApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::MetadataPrivilegePackageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataPrivilegePackageApi' do
    it 'should create an instance of MetadataPrivilegePackageApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::MetadataPrivilegePackageApi)
    end
  end

  # unit tests for get
  # Retrieves privilege information about the package element corresponding to {@param.name packageId}.
  # @param package_id Identifier of the package element.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataPrivilegePackageResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the identifiers for the package elements that have privilege information.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataPrivilegePackageListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
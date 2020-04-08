# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareComponentsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareComponentsApi' do
    it 'should create an instance of SettingsClustersSoftwareComponentsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi)
    end
  end

  # unit tests for get
  # Returns the component version for the given component in the desired software specification.
  # @param cluster Identifier of the cluster.
  # @param component Identifier of the component.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsComponentInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns a list of components in the desired software specification.
  # @param cluster Identifier of the cluster.
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, EsxSettingsComponentInfo>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
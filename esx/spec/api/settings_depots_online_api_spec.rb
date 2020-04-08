# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsDepotsOnlineApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsDepotsOnlineApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsDepotsOnlineApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsDepotsOnlineApi' do
    it 'should create an instance of SettingsDepotsOnlineApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsDepotsOnlineApi)
    end
  end

  # unit tests for create
  # Adds a new online software depot to the list of currently configured online software depots.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsDepotsOnlineCreateSpec] :request_body 
  # @return [String]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.
  # @param depot Identifier of the depot to be removed.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the information about a currently configured online software depot.
  # @param depot Identifier for the depot.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsDepotsOnlineInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns a list of currently configured online software depots.
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, EsxSettingsDepotsOnlineSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the configuration of a currently configured online software depot.
  # @param depot Identifier of the depot to be updated.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsDepotsOnlineUpdateSpec] :request_body 
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

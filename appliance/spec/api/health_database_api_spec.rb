# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::HealthDatabaseApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HealthDatabaseApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::HealthDatabaseApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HealthDatabaseApi' do
    it 'should create an instance of HealthDatabaseApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::HealthDatabaseApi)
    end
  end

  # unit tests for get
  # Returns the health status of the database. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceHealthDatabaseResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

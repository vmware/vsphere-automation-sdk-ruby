# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsHostsSoftwareSolutionsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsHostsSoftwareSolutionsApi' do
    it 'should create an instance of SettingsHostsSoftwareSolutionsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi)
    end
  end

  # unit tests for delete_task
  # Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host Identifier of the host.
  # @param solution Identifier of the solution.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns components registered for the given solution in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host Identifier of the host.
  # @param solution Identifier of the solution.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsSolutionInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns all solutions in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host Identifier of the host.
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, EsxSettingsSolutionInfo>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_task
  # Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host Identifier of the host.
  # @param solution Identifier of the solution.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsSolutionSpec] :request_body 
  # @return [String]
  describe 'set_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

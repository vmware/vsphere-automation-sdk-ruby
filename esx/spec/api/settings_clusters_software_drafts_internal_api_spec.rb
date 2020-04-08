# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareDraftsInternalApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareDraftsInternalApi' do
    it 'should create an instance of SettingsClustersSoftwareDraftsInternalApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi)
    end
  end

  # unit tests for delete_and_create
  # Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted.
  # @param cluster Identifier of the cluster
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsClustersSoftwareDraftsInternalCreateResult]
  describe 'delete_and_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_and_import
  # Imports the desired software specification as a new draft. If there is a draft already associated with the user for this cluster, that draft will be deleted before new draft is created.
  # @param cluster Identifier of the cluster.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsClustersSoftwareDraftsInternalImportSpec] :request_body 
  # @return [EsxSettingsClustersSoftwareDraftsInternalCreateResult]
  describe 'delete_and_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

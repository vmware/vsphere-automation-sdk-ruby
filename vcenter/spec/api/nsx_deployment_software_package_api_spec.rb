# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NsxDeploymentSoftwarePackageApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NsxDeploymentSoftwarePackageApi' do
    it 'should create an instance of NsxDeploymentSoftwarePackageApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi)
    end
  end

  # unit tests for cancel
  # Cancel running NSX download or upload process. This would interrupt the NSX binary upload or download process and clean up the NSX binary being uploaded. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download
  # Download NSX binaries from the my.vmware.com portal on vCenter Server. To call this API user needs to first Authenticate, then get List of accounts, select a listed account and check its entitlement and then invoke download. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'download test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets Stage operation status like MUB file staged version, staging in progress, stage percentage etc. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [VcenterNsxDeploymentSoftwarePackageInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload
  # Upload NSX binaries to vCenter server. This API would provide the URI which has to be used to upload the content. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterNsxDeploymentSoftwarePackageUploadSpec] :request_body 
  # @return [VcenterNsxDeploymentSoftwarePackageUploadResult]
  describe 'upload test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

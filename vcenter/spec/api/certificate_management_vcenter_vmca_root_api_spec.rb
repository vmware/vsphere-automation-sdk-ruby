# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::CertificateManagementVcenterVmcaRootApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CertificateManagementVcenterVmcaRootApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::CertificateManagementVcenterVmcaRootApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CertificateManagementVcenterVmcaRootApi' do
    it 'should create an instance of CertificateManagementVcenterVmcaRootApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::CertificateManagementVcenterVmcaRootApi)
    end
  end

  # unit tests for create
  # Replace Root Certificate with VMCA signed one using the given Spec.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterCertificateManagementVcenterVmcaRootCreate] :request_body 
  # @return [nil]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

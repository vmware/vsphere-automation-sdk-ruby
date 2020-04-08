# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::CertificateAuthorityCertificateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CertificateAuthorityCertificateApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::CertificateAuthorityCertificateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CertificateAuthorityCertificateApi' do
    it 'should create an instance of CertificateAuthorityCertificateApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::CertificateAuthorityCertificateApi)
    end
  end

  # unit tests for cert_status
  # Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  # @param cert The certificate to be verified in string format.
  # @param [Hash] opts the optional parameters
  # @return [VcenterCertificateAuthorityCertificateCertStatusResp]
  describe 'cert_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for count_certs
  # Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  # @param status The information is about status of certificate in query.
  # @param [Hash] opts the optional parameters
  # @return [VcenterCertificateAuthorityCertificateCountCertsResp]
  describe 'count_certs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enum_certs
  # List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  # @param status The information is about status of certificate in query.
  # @param [Hash] opts the optional parameters
  # @return [VcenterCertificateAuthorityCertificateEnumCertsResp]
  describe 'enum_certs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for gen_cert
  # Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterCertificateAuthorityCertificateGenCertResp]
  describe 'gen_cert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_keys
  # Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterCertificateAuthorityCertificateGenerateKeys] :request_body 
  # @return [VcenterCertificateAuthorityCertificateGenerateKeysResp]
  describe 'generate_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
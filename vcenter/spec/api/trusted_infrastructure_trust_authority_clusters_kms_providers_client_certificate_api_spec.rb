# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi' do
    it 'should create an instance of TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi)
    end
  end

  # unit tests for create_task
  # Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'create_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task
  # Return the existing client certificate.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task
  # Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec] :request_body 
  # @return [String]
  describe 'update_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
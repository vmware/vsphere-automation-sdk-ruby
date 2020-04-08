# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi' do
    it 'should create an instance of TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi)
    end
  end

  # unit tests for create_task
  # Add a new Key Provider.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCreateSpec] :request_body 
  # @return [String]
  describe 'create_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_task
  # Remove a Key Provider.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task
  # Return information about a Key Provider.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_task
  # Return a list of summary of Key Providers.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'list_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task
  # Update an existing Key Provider.
  # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersUpdateSpec] :request_body 
  # @return [String]
  describe 'update_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NamespacesSupervisorServicesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NamespacesSupervisorServicesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NamespacesSupervisorServicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NamespacesSupervisorServicesApi' do
    it 'should create an instance of NamespacesSupervisorServicesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NamespacesSupervisorServicesApi)
    end
  end

  # unit tests for set
  # Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.
  # @param cluster Identifier for the cluster on which to enable the service. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param service_id ID of the Service that is being changed. The parameter must be an identifier for the resource type: vcenter.namespaces.SupervisorService.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterNamespacesSupervisorServicesSetSpec] :request_body 
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

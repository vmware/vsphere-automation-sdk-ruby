# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClusterEdrsMaintenanceModeApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClusterEdrsMaintenanceModeApi' do
    it 'should create an instance of ClusterEdrsMaintenanceModeApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi)
    end
  end

  # unit tests for enter
  # Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  # @param cluster Identifier of cluster that entering maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'enter test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enter_task
  # Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  # @param cluster Identifier of cluster that entering maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterClusterEdrsMaintenanceModeEnterTaskResp]
  describe 'enter_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exit
  # Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  # @param cluster Identifier of cluster that exiting maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'exit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exit_task
  # Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  # @param cluster Identifier of cluster that exiting maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterClusterEdrsMaintenanceModeExitTaskResp]
  describe 'exit_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get the status of the cluster maintenance mode. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
  # @param cluster Identifier of queried cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @return [VcenterClusterEdrsMaintenanceModeResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
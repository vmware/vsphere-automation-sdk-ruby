# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::LibrarySubscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LibrarySubscriptionsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::LibrarySubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LibrarySubscriptionsApi' do
    it 'should create an instance of LibrarySubscriptionsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::LibrarySubscriptionsApi)
    end
  end

  # unit tests for create
  # Creates a subscription of the published library.
  # @param library Identifier of the published library.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibrarySubscriptionsCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes the specified subscription of the published library. The subscribed library associated with the subscription will not be deleted.
  # @param library Identifier of the published library.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns information about the specified subscription of the published library.
  # @param library Identifier of the published library.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibrarySubscriptionsResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Lists the subscriptions of the published library.
  # @param library Identifier of the published library.
  # @param [Hash] opts the optional parameters
  # @return [ContentLibrarySubscriptionsListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the specified subscription of the published library. &lt;p&gt; This is an incremental update to the subscription. Except for the {@link UpdateSpecPlacement} {@term structure}, {@term fields} that are {@term unset} in the update specification will be left unchanged. If {@param.name spec#subscribedLibraryPlacement} is specified, all {@term fields} of the current subscribed library placement will be replaced by this placement.
  # @param library Identifier of the published library.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

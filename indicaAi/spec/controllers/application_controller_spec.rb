require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do

  let!(:user) { create(:user_identifier) }

  class TestController < ApplicationController
    before_action :authenticate_request!

    def action_test
      response_success('SUCCESS', 'Test Action')
    end

    def current_user_test
      response_success('SUCCESS', 'Current User Test Action', current_user)
    end
  end

  before do
    Rails.application.routes.draw do
      controller :test do
        post 'action_test' => :action_test
        post 'current_user_test' => :current_user_test
      end
    end
    @controller = TestController.new

  end

  context "when an action requires a before filter" do

    it 'should filter authenticate params' do
      headers = { :Authorization => 'Token test_token' }
      request.headers.merge! headers

      expect(controller).to receive(:authenticate_params).and_return({
              token: 'test_token', user_identifier: 'carla' })

      post :action_test, params: { user_identifier: 'carla' }, as: :json
    end

    it 'should get authorization token' do
      headers = { :Authorization => 'Token test_token' }
      request.headers.merge! headers

      expect(controller).to receive(:authorization_token).and_return('test_token')

      post :action_test, params: { user_identifier: 'carla' }, as: :json
    end

    it 'should return nil if don\'t has authorization token' do
      expect(controller).to receive(:authorization_token).and_return(nil)
      post :action_test, params: { user_identifier: 'carla' }, as: :json
    end

    it 'should return error if token is empty' do
      post :action_test
      assert_response :bad_request
      result = JSON.parse(response.body)
      expect(result['status']).to eq('ERROR')
      expect(result['message']).to eq('Empty Token')
    end

    it 'should return error if user identifier is invalid' do
      headers = { :Authorization => 'Token test_token' }
      request.headers.merge! headers

      post :action_test

      assert_response :bad_request
      result = JSON.parse(response.body)
      expect(result['status']).to eq('ERROR')
      expect(result['message']).to eq('Invalid user identifier')
    end

    it 'should verify token with Login API' do
      headers = { :Authorization => 'Token test_token' }
      request.headers.merge! headers

      mock_login_api = double('http')
      allow(mock_login_api).to receive(:body) {'{ "token": "token_test" }'}
      allow(controller).to receive(:post_request) {mock_login_api}

      post :action_test, params: { user_identifier: 'carla' }, as: :json
    end

    it 'should return authenticate failed if token is invalid' do
      headers = { :Authorization => 'Token invalid_token' }
      request.headers.merge! headers

      mock_login_api = double('http')
      allow(mock_login_api).to receive(:body) {'{ "non_field_errors": []}'}
      allow(controller).to receive(:post_request) {mock_login_api}

      post :action_test, params: { user_identifier: 'carla' }, as: :json

      assert_response :forbidden
      result = JSON.parse(response.body)
      expect(result['status']).to eq('ERROR')
      expect(result['message']).to eq('Authentication Failed')
    end

    it 'set current_user if token is valid' do
      headers = { :Authorization => 'Token test_token' }
      request.headers.merge! headers

      mock_login_api = double('http')
      allow(mock_login_api).to receive(:body) {'{ "token": "token_test" }'}
      allow(controller).to receive(:post_request) {mock_login_api}

      user = UserIdentifier.get_by_identifier('carla')

      post :current_user_test, params: { user_identifier: 'carla' }, as: :json

      result = JSON.parse(response.body)
      expect(result['status']).to eq('SUCCESS')
      expect(result['message']).to eq('Current User Test Action')
      expect(result['data']['identifier']).to eq('carla')

    end

  end
end

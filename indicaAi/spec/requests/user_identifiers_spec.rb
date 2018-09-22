# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Local API', type: :request do
  let!(:user_identifiers) { create_list(:user_identifier, 10) }
  let(:user_identifier_id) { user_identifiers.first.id }
  let!(:favorite_locals) { create_list(:favorite_local, 10, user_identifier: user_identifiers.first)}

  # Test list all users
  describe 'GET /users' do
    # make HTTP get request before each example
    before { get '/users/' }

    it 'returns users' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /user/:user_id' do
     before{
      get "/user/#{user_identifier_id}"
    }

    it 'return user_profile in json' do
      expect(json).not_to be_empty
      expect(json["id"]).to eq(user_identifiers.first.id)
      expect(json["identifier"]).to eq(user_identifiers.first.identifier)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /user/favorites/:user_id' do
    before{
      get "/user/favorites/#{user_identifier_id}"
    }
    it 'return favorites by user in json' do
      expect(json).not_to be_empty
      json.each do |item|
        # p item
        # tests of user id
        expect(item["user_identifier_id"]).to eq(user_identifier_id)
      end
    end
    
  end
end

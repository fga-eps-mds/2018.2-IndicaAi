# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'User Controller', type: :request do
  let!(:users_test) { create_list(:user_identifier, 10) }
  describe 'GET /users' do
    before { get '/users/' }
    it 'returns users' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe 'User Controller', type: :request do
  let!(:user_test) { create(:user_identifier) }
  describe 'GET /users/:id' do
    before { get "/users/#{user_test.id}" }
    it 'returns user' do
      expect(json[0]['identifier']).to eq(user_test.identifier)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe 'User Controller', type: :request do
  let!(:users_test) { create_list(:user_identifier, 10) }
  let!(:user_test) { users_test.first }
  let!(:favorites) do
    create_list(:favorite_local, 10, user_identifier: user_test)
  end
  describe 'GET /users/:id/favorites' do
    before { get "/users/#{user_test.id}/favorites" }
    it 'return favorites by user in json' do
      expect(json).not_to be_empty
      expect(json['favorites'][0]['user_identifier_id']).to eq(user_test.id)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

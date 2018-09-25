# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Local API', type: :request do
  let!(:users) { create_list(:user_identifier, 10) }
  let!(:user_id) { users.first.id }
  let!(:favorites) do
    create_list(:favorite_local, 10, user_identifier: users.first)
  end
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

RSpec.describe 'Local API', type: :request do
  let!(:users) { create_list(:user_identifier, 10) }
  let!(:user_id) { users.first.id }
  let!(:favorites) do
    create_list(:favorite_local, 10, user_identifier: users.first)
  end
  describe 'GET /user/favorites/:user_id' do
    before { get "/user/favorites/#{user_id}" }
    it 'return favorites by user in json' do
      expect(json).not_to be_empty
      json.each do |item|
        expect(item['user_identifier_id']).to eq(user_id)
      end
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

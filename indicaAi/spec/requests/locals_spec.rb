# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Local API', type: :request do
  let!(:locals) { create_list(:local, 10) }
  let!(:local_id) { locals.first.id }
  let!(:favorites) { create_list(:favorite_local, 10, local: locals.first) }

  describe 'GET /locals' do
    # make HTTP get request before each example
    before { get '/locals/' }

    it 'returns locals' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /local/favorites/:local_id' do
    before { get "/local/favorites/#{local_id}" }
    it 'return favorites by local in json' do
      expect(json).not_to be_empty
      json.each do |item|
        expect(item['local_id']).to eq(local_id)
      end
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

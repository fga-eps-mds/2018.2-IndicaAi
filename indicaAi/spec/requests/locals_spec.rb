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

  describe 'GET /locals/name/:name' do
    # make HTTP get request before each example
    let!(:local) { create(:local, name: 'plaza') }
    before { get "/locals/name/#{local.name}" }
    it 'return local by name' do
      expect(json).not_to be_empty
      expect(json[0][0]['name']).to eq('plaza')
    end
  end
end

RSpec.describe 'Local API 2', type: :request do
  describe 'GET /local/:id' do
    # make HTTP get request before each example
    let!(:local) { create(:local, name: 'plaza') }
    before { get "/local/#{local.id}" }
    it 'Should have status 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /local/:id' do
    before { get '/local/1' }
    it 'Should have status 404' do
      expect(response).to have_http_status(404)
    end
  end
end

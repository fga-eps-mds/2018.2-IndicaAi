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

RSpec.describe 'Local API', type: :request do
  let!(:category_test) { create(:category) }
  let!(:valid_params) do
    {
      'name' => Faker::Friends.location,
      'category_id' => category_test.id,
      'description' => Faker::Friends.quote,
      'latitude' => Faker::Number.decimal(2, 8).to_f,
      'longitude' => Faker::Number.decimal(2, 8).to_f,
      'opening_hours' => [
        {
          'day' => 7,
          'opens' => '15:30',
          'closes' => '16:00'
        }
      ]
    }
  end
  describe 'POST /locals' do
    it 'should returns success created local' do
      expect do
        post '/locals', params: valid_params
      end.to change(Local, :count).by(+1)
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe 'Local API 2', type: :request do
  describe 'GET /locals/:id' do
    # make HTTP get request before each example
    let!(:local) { create(:local, name: 'plaza') }
    before { get "/locals/#{local.id}" }
    it 'Should have status 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /locals/:id' do
    before { get '/locals/1' }
    it 'Should have status 404 when id does not exist' do
      expect(response).to have_http_status(404)
    end
  end
end

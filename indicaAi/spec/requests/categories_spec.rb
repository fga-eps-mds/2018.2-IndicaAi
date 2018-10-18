require 'rails_helper'

RSpec.describe 'Category index', type: :request do
  let!(:categories_test) { create_list(:category, 10) }
  describe 'GET /categories' do
    before { get '/categories/' }
    it 'returns all categories' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe 'Category list_locals', type: :request do
  let!(:category_test) { create(:category) }
  let!(:locals_test) { create_list(:local, 10, category: category_test) }
  describe 'GET /category/locals/:category_id' do
    before { get "/category/locals/#{category_test.id}" }
    it 'should returns locals of the category' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
      expect(json[0]['category_id']).to eq(category_test.id)
    end
  end
end

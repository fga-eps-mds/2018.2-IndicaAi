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

RSpec.describe 'Category search_categories', type: :request do
  let!(:category_test) { create(:category) }
  describe 'GET /categories/name/:name' do
    before { get "/categories/name/#{category_test.name}" }
    it 'returns category' do
      expect(json[0][0]['name']).to eq(category_test.name)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe 'Category show_category', type: :request do
  let!(:category_test) { create(:category) }
  describe 'GET /categories/:id' do
    before { get "/categories/#{category_test.id}" }
    it 'returns category' do
      expect(json[0]['name']).to eq(category_test.name)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe 'Category list_locals', type: :request do
  let!(:category_test) { create(:category) }
  let!(:local_test) { create(:local) }
  let!(:category_local) do
    create(:category_and_local, category: category_test, local: local_test)
  end
  describe 'GET /categories/:id/locals' do
    before { get "/categories/#{category_test.id}/locals" }
    it 'should returns locals of the category' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
      expect(json[0]['name']).to eq(local_test.name)
    end
  end
end

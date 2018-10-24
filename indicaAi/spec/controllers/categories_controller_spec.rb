require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let!(:categories_test) { create_list(:category, 10) }
  describe 'GET index' do
    before { get :index }
    it 'should returns all categories' do
      expect(response).to be_success
      assert assigns(:categories) == categories_test
      expect(assigns(:categories).length).to eq(10)
      expect(assigns(:categories)).not_to be_empty
    end
  end
end

RSpec.describe CategoriesController, type: :controller do
  let!(:category_test) { create(:category) }
  describe 'GET search categories' do
    before { get :search_categories, params: { name: category_test.name } }
    it 'should returns categories' do
      expect(response).to be_success
      assert assigns(:categories)[0] == category_test
    end
  end
end

RSpec.describe CategoriesController, type: :controller do
  let!(:category_test) { create(:category) }
  describe 'GET show_category' do
    before { get :show_category, params: { id: category_test.id } }
    it 'should returns category' do
      expect(response).to be_success
      assert assigns(:category) == category_test
    end
  end
end

RSpec.describe CategoriesController, type: :controller do
  let!(:category_test) { create(:category) }
  let!(:local_test) { create(:local) }
  let!(:category_local) do
    create(:category_and_local, category: category_test, local: local_test)
  end
  describe 'GET list_locals' do
    it 'should returns list of locals' do
      get :list_locals, params: { id: category_test.id }

      expect(response).to be_success
      assert assigns(:locals).first == local_test
      expect(assigns(:locals).length).to eq(1)
      expect(assigns(:locals)).not_to be_empty
    end
  end
end

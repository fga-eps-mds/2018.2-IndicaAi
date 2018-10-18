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
  let!(:locals_test) { create_list(:local, 10, category: category_test) }
  describe 'GET list_locals' do
    it 'should returns list of locals' do
      get :list_locals, params: { category_id: category_test.id }

      expect(response).to be_success
      assert assigns(:locals) == locals_test
      expect(assigns(:locals).length).to eq(10)
      expect(assigns(:locals)).not_to be_empty
    end
  end
end

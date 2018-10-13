require 'rails_helper'

RSpec.describe FavoriteLocalsController, type: :controller do
  let!(:user_test) { create(:user_identifier) }
  let!(:local_test) { create(:local) }
  let!(:local_test2) { create(:local) }
  let!(:valid_params) do
    {
      'local_id' => local_test.id,
      'user_identifier_id' => user_test.id
    }
  end
  describe 'Post create' do
    it 'should returns success saved favorite' do
      post :create, params: valid_params
      expect(response).to be_success
      expect(assigns(:favorite)).to have_attributes(valid_params)
      expect(assigns(:favorite)).to be_persisted
      expect(assigns(:favorite)).to be_a(FavoriteLocal)
      expect(assigns(:favorite)).not_to eq(nil)
    end
    it 'should returns not success saved favorite' do
      # local.id invalid
      valid_params['local_id'] = nil
      post :create, params: valid_params
      expect(response).not_to be_success
    end
  end
end

RSpec.describe FavoriteLocalsController, type: :controller do
  let!(:user_test) { create(:user_identifier) }
  let!(:local_test) { create(:local) }
  let!(:favorite_test) { create(:favorite_local) }
  let!(:valid_params) do
    {
      'id' => favorite_test.id,
      'local_id' => local_test.id,
      'user_identifier_id' => user_test.id
    }
  end
  describe 'Patch update' do
    before { patch :update, params: valid_params }
    it 'should returns success updated favorite_test' do
      expect(response).to be_success
      expect(assigns(:favorite)).to have_attributes valid_params
    end
  end
end

RSpec.describe FavoriteLocalsController, type: :controller do
  let!(:favorite_test) { create(:favorite_local) }
  let!(:valid_params) do
    { 'id' => favorite_test.id }
  end
  describe 'Delete destroy' do
    before { delete :destroy, params: { id: valid_params } }
    it 'should returns success deleted favorite' do
      expect(assigns(:favorite)).to eq(nil)
    end
  end
end

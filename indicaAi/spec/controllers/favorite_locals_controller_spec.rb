require 'rails_helper'

RSpec.describe FavoriteLocalsController, type: :controller do
  let!(:user_test) { create(:user_identifier) }
  let!(:local_test) { create(:local) }
  let!(:local_test2) { create(:local) }
  let!(:valid_params) do
    {
      'user_identifier' => user_test.identifier,
      'local' => {
        'local_id' => local_test.id,
      }
    }
  end

  before do
    allow(controller).to receive(:authenticate_request!) { true }
  end

  describe 'Post create' do
    it 'should returns success saved favorite' do
      post :create, params: valid_params
      expect(response).to be_success
      expect(assigns(:favorite)).to have_attributes(valid_params['local'])
      expect(assigns(:favorite)).to have_attributes(
        'user_identifier_id': user_test.id
      )
      expect(assigns(:favorite)).to be_persisted
      expect(assigns(:favorite)).to be_a(FavoriteLocal)
      expect(assigns(:favorite)).not_to eq(nil)
    end
    it 'should not returns success saved favorite' do
      valid_params['local']['local_id'] = nil
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
      'user_identifier' => favorite_test.user_identifier.identifier,
      'local' => {
        'local_id' => local_test.id
      }
    }
  end
  let!(:invalid_params) do
    {
      'id' => favorite_test.id,
      'user_identifier' => user_test.identifier,
      'local' => {
        'local_id' => favorite_test.local.id
      }
    }
  end

  before do
    allow(controller).to receive(:authenticate_request!) { true }
  end

  describe 'Put update' do

    it 'should returns success updated favorite_test' do
      put :update, params: valid_params
      expect(response).to be_success
      expect(assigns(:favorite)).to have_attributes(valid_params['local'])
      expect(assigns(:favorite)).to have_attributes(
        'user_identifier_id': favorite_test.user_identifier.id
      )
    end

    it 'should not update favorite if user has\'t not permission' do
      put :update, params: invalid_params
      expect(response).not_to be_success
      expect(FavoriteLocal.find(favorite_test.id)).to eq(favorite_test)
    end

  end
end

RSpec.describe FavoriteLocalsController, type: :controller do
  let!(:user_test) { create(:user_identifier) }
  let!(:favorite_test) { create(:favorite_local) }
  let!(:valid_params) do
    {
      'user_identifier' => favorite_test.user_identifier.identifier,
      'id' => favorite_test.id
    }
  end
  let!(:invalid_params) do
    {
      'user_identifier' => user_test.identifier,
      'id' => favorite_test.id
    }
  end

  before do
    allow(controller).to receive(:authenticate_request!) { true }
  end

  describe 'Delete destroy' do

    it 'should returns success deleted favorite' do
      delete :destroy, params: valid_params
      expect(response).to be_success
      expect(FavoriteLocal.find_by_id(favorite_test.id)).to eq(nil)
    end

    it 'should returns error - favorite not deleted' do
      allow_any_instance_of(FavoriteLocal).to receive(:destroy).and_return(false)
      delete :destroy, params: valid_params
      expect(response.status).to eq(422)
      expect(FavoriteLocal.find_by_id(favorite_test.id)).not_to eq(nil)
    end

    it 'should not delete favorite if user has\'n permission' do
      allow_any_instance_of(FavoriteLocal).to receive(:destroy).and_return(false)
      delete :destroy, params: valid_params
      expect(response.status).to eq(422)
      expect(FavoriteLocal.find_by_id(favorite_test.id)).not_to eq(nil)
    end
  end
end

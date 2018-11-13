require 'rails_helper'

RSpec.describe UserIdentifiersController, type: :controller do
  let!(:users_test) { create_list(:user_identifier, 10) }
  let!(:user) { users_test.first }
  describe 'GET index' do
    before { get :index }
    it { should route(:get, '/users').to(action: :index) }
    it 'should returns all users in assigns @users' do
      expect(response).to be_success
      # assigns(:users) is a variable in user_identifiers_controller
      assert assigns(:users) == users_test
      expect(assigns(:users).length).to eq(10)
      expect(assigns(:users)).not_to be_empty
    end
  end
end

RSpec.describe UserIdentifiersController, type: :controller do
  let!(:user_test) { create(:user_identifier) }
  describe 'GET show_user' do
    before { get :show_user, params: { id: user_test.id } }
    it 'should returns user' do
      expect(response).to be_success
      assert assigns(:user) == user_test
    end
  end
end

RSpec.describe UserIdentifiersController, type: :controller do
  let!(:users_test) { create(:user_identifier) }
  let!(:favorites_test) do
    create_list(:favorite_local, 10, user_identifier: users_test)
  end
  describe 'GET list_favorites' do
    it 'should returns list of favorites to assign @favorites ' do
      get :list_favorites, params: { id: users_test.id }
      should route(
        :get, "/users/#{users_test.id}/favorites"
      ).to(
        action: :list_favorites, id: users_test.id
      )
      expect(response).to be_success
      assert assigns(:favorites) == favorites_test
      expect(assigns(:favorites).length).to eq(10)
      expect(assigns(:favorites)).not_to be_empty
    end
  end
end

require 'rails_helper'

RSpec.describe UserIdentifiersController, type: :controller do
  let!(:users) { create_list(:user_identifier, 10) }
  let!(:user) { users.first }
  let!(:favorites_t) { create_list(:favorite_local, 10, user_identifier: user) }
  describe 'GET index' do
    before { get :index }
    it { should route(:get, '/users').to(action: :index) }
    it 'should returns all users in assigns @users' do
      assert assigns(:users) == users
      expect(assigns(:users).size).to eq(10)
      expect(assigns(:users)).not_to be_empty
    end
  end

  describe 'GET user_profile' do
    before { get :user_profile, params: { user_id: user.id } }
    it 'user_id in route should' do
      num = Faker::Number.between(1, 9999)
      route(:get, "/user/#{num}").to(action: :user_profile, user_id: num)
    end

    it 'should return the object user in assigns @user' do
      assert assigns(:user) == user
      expect(response.content_type).to eq 'application/json'
      expect(response).to be_success
    end
  end
end
RSpec.describe UserIdentifiersController, type: :controller do
  let!(:users) { create_list(:user_identifier, 10) }
  let!(:user) { users.first }
  let!(:favorites_t) { create_list(:favorite_local, 10, user_identifier: user) }
  describe 'GET list_favorites' do
    it 'should returns list of favorites to assign @favorites ' do
      get :list_favorites, params: { user_id: user.id }
      assert assigns(:favorites) == favorites_t
      expect(response.content_type).to eq 'application/json'
      expect(response).to be_success
    end
  end
end

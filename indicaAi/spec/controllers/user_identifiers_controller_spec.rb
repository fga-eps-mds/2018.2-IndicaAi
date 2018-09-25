require 'rails_helper'

RSpec.describe UserIdentifiersController, type: :controller do
  let!(:users) { create_list(:user_identifier, 10) }
  let!(:user) { users.first }
  let!(:favorites) do
    create_list(:favorite_local, 10, user_identifier: user)
  end
  describe 'GET index' do
    before { get :index }
    it { should route(:get, '/users').to(action: :index) }
    it 'should returns all users in assigns users' do
      should route(:get, '/users').to(action: :index)
      #expect(assigns(:users)) == users
      #assert assigns(:users) == users
      #expect(assigns(:users).size).to eq(10)
      #expect(assigns(:users)).not_to be_empty
    end
  end

  describe 'GET list_favorites' do
    it 'should returns list of favorites to assign favorites ' do
      get :list_favorites, params: { user_id: user.id }
      should route(:get, '/user/favorites/${user.id}').to(action: :list_favorites, favorites.user: user)
      #assert assigns(:favorites) == favorites
      #expect(response.content_type).to eq 'application/json'
      #expect(response).to be_success
    end
  end
end

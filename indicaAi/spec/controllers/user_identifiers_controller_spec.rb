require 'rails_helper'

RSpec.describe UserIdentifiersController, type: :controller do
  
  describe "GET index" do
    it { should route(:get, '/users').to(action: :index) }

    it "should returns all users in assigns @users" do
      user_tests = create_list(:user_identifier, 10)
      get :index
      # p user
      # p assigns(:users)
      assert assigns(:users) == user_tests
      expect(assigns(:users).size).to eq(10)
      expect(assigns(:users)).not_to be_empty
    end

    it "should not returns true in assigns @users" do
      user_tests = create_list(:user_identifier, 10)
      get :index
      user_tests = create_list(:user_identifier, 10)
      assert assigns(:users) != user_tests
    end
  end

  describe "GET user_profile" do
    it "user_id in route should" do
      num = Faker::Number.between(1, 9999)
      route(:get, "/user/#{num}").to(action: :user_profile, user_id: num)
    end

    it "should return the object user_test in assigns @user into action user_profile and response" do
      user_test = create(:user_identifier)
      get :user_profile, params: {user_id: user_test.id}
      assert assigns(:user) == user_test
      expect(response.content_type).to eq "application/json"
      expect(response).to be_success
    end
  end

  describe "GET list_favorites" do
    it "should returns list of favorites to assign @favorites " do
      user_test = create(:user_identifier)
      favorites_test = create_list(:favorite_local, 10, user_identifier: user_test)
      get :list_favorites, params: {user_id: user_test.id}
      assert assigns(:favorites) == favorites_test
      expect(response.content_type).to eq "application/json"
      expect(response).to be_success
    end
  end
end

require 'rails_helper'

RSpec.describe LocalsController, type: :controller do
  describe "GET list_favorites" do
    it "should returns list of favorites to assign @favorites " do
      local_test = create(:local)
      favorites_test = create_list(:favorite_local, 10, local: local_test)
      get :list_favorites, params: {local_id: local_test.id}
      assert assigns(:favorites) == favorites_test
      expect(response.content_type).to eq "application/json"
      expect(response).to be_success
    end
  end
end

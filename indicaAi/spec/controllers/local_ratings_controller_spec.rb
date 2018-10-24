require 'rails_helper'

RSpec.describe LocalRatingsController, type: :controller do
  let!(:user_test) { create(:user_identifier) }
  let!(:local_test) { create(:local) }
  let!(:valid_params) do
    {
      local_id: local_test.id,
      user_identifier_id: user_test.id,
      value: Faker::Number.between(0, 5)
    }
  end
  describe 'POST rating_a_place' do
    it 'should create a LocalRatingsController' do
      post :rating_a_place, params: valid_params
      expect(response).to be_success
      expect(assigns(:rating)).to have_attributes(valid_params)
      expect(assigns(:rating)).to be_persisted
      expect(assigns(:rating)).to be_a(LocalRating)
      expect(assigns(:rating)).not_to eq(nil)
    end
  end
end

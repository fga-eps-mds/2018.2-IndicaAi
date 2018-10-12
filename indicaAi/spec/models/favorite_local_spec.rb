require 'rails_helper'

RSpec.describe FavoriteLocal, type: :model do
  let!(:favorite_test) { create(:favorite_local) }
  let!(:user_test_id) { favorite_test.user_identifier_id }
  let!(:local_test_id) { favorite_test.local_id }
  describe 'validations' do
    it { should validate_presence_of(:local) }
    it { should validate_presence_of(:user_identifier) }
  end
end

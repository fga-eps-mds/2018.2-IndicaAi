require 'rails_helper'

RSpec.describe FavoriteLocal, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:local) }
    it { should validate_presence_of(:user_identifier) }
    it { should validate_uniqueness_of(:user_identifier_id).scoped_to(:local_id) }
  end
end

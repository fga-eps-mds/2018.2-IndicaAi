require 'rails_helper'

RSpec.describe UserIdentifier, type: :model do
  it { should have_many(:favorite_locals).dependent(:destroy) }
  it { should validate_presence_of(:identifier) }

  let! (:user_identifier) { create(:user_identifier) }
  let!(:favorite_locals) { create_list(:favorite_local, 10, user_identifier:user_identifier) }
  it 'should return favorite locals related with user' do
    result = UserIdentifier.find_favorites(user_identifier.id) 
    assert result == favorite_locals
  end
end

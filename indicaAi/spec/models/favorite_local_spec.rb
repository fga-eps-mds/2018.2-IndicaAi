require 'rails_helper'

RSpec.describe FavoriteLocal, type: :model do
  let! (:local) { create(:local) }
  let!(:favorite_locals) { create_list(:favorite_local, 10, local:local) }
  it 'should return favorite locals related with local' do

    result = FavoriteLocal.find_by_local(local.id) 
    assert result == favorite_locals
  end

  it { should validate_presence_of(:local) }
  it { should validate_presence_of(:user_identifier) }
end

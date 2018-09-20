require 'rails_helper'

RSpec.describe FavoriteLocal, type: :model do
let! (:local) { create(:local) }
  let!(:favorite_locals) { create_list(:favorite_local, 10, local:local) }
  it 'should return favorite locals related with local' do
    p favorite_locals

  #  local_favorite = create(:favorite_local, local:local)
   result = FavoriteLocal.find_by_local(local.id)
    assert result == favorite_locals
  end
  it 'should not return favorite locals related with local' do
    p favorite_locals

  #  local_favorite = create(:favorite_local, local:local)
   result = FavoriteLocal.find_by_local(local.id)
    assert result == favorite_locals
  end
end

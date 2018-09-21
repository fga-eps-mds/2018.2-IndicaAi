require 'rails_helper'

RSpec.describe Local, type: :model do
  it { should have_many(:favorite_locals).dependent(:destroy) }
  it { should validate_presence_of(:name) }

  let! (:local) { create(:local) }
  let!(:favorite_locals) { create_list(:favorite_local, 10, local:local) }
  it 'should return favorite locals related with local' do
    result = Local.find_favorites(local.id) 
    assert result == favorite_locals
  end
end

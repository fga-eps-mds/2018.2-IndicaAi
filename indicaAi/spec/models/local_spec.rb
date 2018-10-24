require 'rails_helper'

RSpec.describe Local, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:longitude) }
  end

  describe 'Search By Name' do
    it 'Testing Search By Name - Should return similar names to params' do
      local = create(:local)
      name = local.name
      result = Local.find_by_name(name)
      assert result.first, local
    end
  end

  describe 'Find Local Ratings' do
    it 'Find Local Ratings - Should return rating associated to params' do
      local = create(:local)
      nota = create(:local_rating, local: local)

      id = local.id
      result = Local.find_local_ratings(id)
      assert result.first, nota
    end
  end
end

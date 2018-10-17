require 'rails_helper'

RSpec.describe LocalRating, type: :model do
  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(0) }

  describe 'testing validations' do
    it 'should return a integer though a float was given' do
      note2 = LocalRating.new
      note2.value = 3.4
      assert note2.value == 3
    end

    it 'Must exist a user' do
      local = Local.create(name: 'Teste')
      local.save
      rating = LocalRating.new
      rating.value = 4
      rating.local = local
      assert rating.save == false
    end

    it 'Must exist a local' do
      user = UserIdentifier.create(identifier: 345)
      user.save
      rating = LocalRating.new
      rating.value = 4
      rating.user_identifier = user
      assert rating.save == false
    end

    it 'Must exist a value' do
      local = Local.create(name: 'Teste')
      local.save
      user = UserIdentifier.create(identifier: 345)
      user.save
      rating = LocalRating.new
      rating.user_identifier = user
      rating.local = local
      assert rating.save == false
    end
    it { should belong_to(:user_identifier) }
    it { should belong_to(:local) }
    it { should validate_presence_of(:value) }
    it { should validate_numericality_of(:value) }
    it { should validate_numericality_of(:value).is_less_than_or_equal_to(5) }
  end
end

require 'rails_helper'

RSpec.describe UserIdentifier, type: :model do
  context 'Validate of UserIdentifier' do
    it { should validate_presence_of(:identifier) }
    it { should have_many(:favorite_locals).dependent(:destroy) }
    it { should validate_numericality_of(:identifier) }
    it { should validate_uniqueness_of(:identifier) }
    it 'user valid ' do
      user = create(:user_identifier)
      expect(user.valid?).to be_truthy
    end

    it 'user invalid - without identifier or is not number' do
      # identifier empty
      user = UserIdentifier.new
      user.save
      expect(user.valid?).to be_falsey
      user.identifier = Faker::Lorem.word
      expect(user.valid?).to be_falsey
    end

    it 'user invalid - is not unique' do
      number = Faker::Number.between(1, 9999)
      user = UserIdentifier.new(identifier: number)
      user.save
      user2 = UserIdentifier.new(identifier: number)
      user2.save
      expect(user2.valid?).to be_falsey
    end
  end
end

RSpec.describe UserIdentifier, type: :model do
  let!(:user) { create(:user_identifier) }
  let!(:user2) { create(:user_identifier) }
  let!(:favorites) { create_list(:favorite_local, 10, user_identifier: user) }
  context 'Find user by id' do
    it 'should return user related with id' do
      result = UserIdentifier.find_by_user_id(user.id)
      expect(result).to eql(user)
    end

    it 'should not return user related with id' do
      result = UserIdentifier.find_by_user_id(user2.id)
      expect(result).not_to eql(user)
    end
  end

  context 'Return favorites by users' do
    it 'should return favorite locals related with user' do
      result = UserIdentifier.find_favorites(user.id)
      assert result == favorites
    end

    it 'should not return favorite locals related with user' do
      result2 = UserIdentifier.find_favorites(user2.id)
      assert result2 != favorites
    end
  end
end

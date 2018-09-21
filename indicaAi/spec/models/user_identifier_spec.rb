require 'rails_helper'

RSpec.describe UserIdentifier, type: :model do
  it { should have_many(:favorite_locals).dependent(:destroy) }

  context "Validate of UserIdentifier" do
    it { should validate_presence_of(:identifier) }
    it 'user valid' do
      user = create(:user_identifier)
      expect(user.valid?).to be_truthy
    end

    it 'user invalid' do
      # identifier empty
      user = UserIdentifier.new
      user.save
      expect(user.valid?).to be_falsey
    end
  end

  context "Find user by id" do
    let! (:user_identifier) { create(:user_identifier) }
    let! (:user_identifier_2) { create(:user_identifier) }

    it 'should return user related with id' do
      result = UserIdentifier.find_by_user_id(user_identifier.id)
      expect(result).to eql(user_identifier)
    end

    it 'should not return user related with id' do
      result = UserIdentifier.find_by_user_id(user_identifier_2.id)
      expect(result).not_to eql(user_identifier)
    end
  end

  context "Return favorites by users" do
    let! (:user_identifier) { create(:user_identifier) }
    let!(:favorite_locals) { create_list(:favorite_local, 10, user_identifier:user_identifier) }
    it 'should return favorite locals related with user' do
      result = UserIdentifier.find_favorites(user_identifier.id)
      assert result == favorite_locals
    end

    let! (:user_identifier_2) { create(:user_identifier) }
    let!(:favorite_locals_2) { create_list(:favorite_local, 10, user_identifier:user_identifier_2) }
    it 'should not return favorite locals related with user' do
      result2 = UserIdentifier.find_favorites(user_identifier_2.id)
      assert result2 != favorite_locals
    end
  end
end

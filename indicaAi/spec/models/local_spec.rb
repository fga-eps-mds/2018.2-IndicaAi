require 'rails_helper'

RSpec.describe Local, type: :model do
  it { should have_many(:favorite_locals).dependent(:destroy) }

  context "Validate of UserIdentifier" do
    it { should validate_presence_of(:name) }

    it 'local valid' do
      local = create(:local)
      expect(local.valid?).to be_truthy
    end

    it 'local invalid' do
      local = create(:local)
      local.name = ""
      local.save
      expect(local.valid?).to be_falsey
    end
  end

  context "Return favorites by locals" do
    let! (:local) { create(:local) }
    let!(:favorite_locals) { create_list(:favorite_local, 10, local:local) }
    it 'should return favorite locals related with local' do
      result = Local.find_favorites(local.id) 
      assert result == favorite_locals
    end

    let! (:local_2) { create(:local) }
    let!(:favorite_locals_2) { create_list(:favorite_local, 10, local:local_2) }
    it 'should not return favorite locals related with local' do
      result2 = Local.find_favorites(local_2.id) 
      assert result2 != favorite_locals
    end
  end
end

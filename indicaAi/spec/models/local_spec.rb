require 'rails_helper'

RSpec.describe Local, type: :model do
  let!(:local) { create(:local) }
  let!(:favorite_locals) { create_list(:favorite_local, 10, local: local) }
  it { should have_many(:favorite_locals).dependent(:destroy) }
  context 'Validate of UserIdentifier' do
    it { should validate_presence_of(:name) }
    it 'local valid' do
      local = create(:local)
      expect(local.valid?).to be_truthy
    end

    it 'local invalid' do
      local.name = ''
      expect(local.valid?).to be_falsey
    end
  end
end

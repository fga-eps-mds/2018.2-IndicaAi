require 'rails_helper'

RSpec.describe LocalImage, type: :model do
  describe 'validations' do
    it { should belong_to(:local) }
  end
end

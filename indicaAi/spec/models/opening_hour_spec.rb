require 'rails_helper'

RSpec.describe OpeningHour, type: :model do
  describe 'testing validations' do
    it { should belong_to(:local) }
    it { should validate_presence_of(:local_id) }
    it { should validate_presence_of(:day) }
    it { should validate_presence_of(:opens) }
    it { should validate_presence_of(:closes) }
    it { should validate_numericality_of(:day).is_greater_than_or_equal_to(1) }
    it { should validate_numericality_of(:day).is_less_than_or_equal_to(7) }
  end
end

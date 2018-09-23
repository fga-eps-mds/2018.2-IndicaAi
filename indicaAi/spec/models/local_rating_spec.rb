require 'rails_helper'

RSpec.describe LocalRating, type: :model do
  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(0) }

  describe 'testing validations' do
    context 'ratings validation tests' do
      let!(:note) { create(:local_rating) }
      it 'should return a integer value' do
        note.save
        # note = create(:local_rating)
        assert note.value.class == Integer
      end
    end
    it 'should return a integer though a float was given' do
      note2 = LocalRating.new
      note2.value = 3.4
      assert note2.value == 3
    end
    it { should belong_to(:local) }

    it { should validate_presence_of(:value) }

    it { should validate_numericality_of(:value) }

    it { should validate_numericality_of(:value).is_less_than_or_equal_to(5) }
  end
end

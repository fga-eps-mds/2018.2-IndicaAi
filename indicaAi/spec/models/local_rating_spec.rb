require 'rails_helper'

RSpec.describe LocalRating, type: :model do
  it 'Testing if value is integer - Should return true' do
    note1 = LocalRating.new
    note1.value = 3
    assert note1.value.class == Integer
  end

  it 'Testing typecast - Should return integer if input is float' do
    note2 = LocalRating.new
    note2.value = 3.4
    assert note2.value == 3
  end
  it { should belong_to(:local) }

  it { should validate_presence_of(:value) }

  it { should validate_numericality_of(:value) }

  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(0) }

  it { should validate_numericality_of(:value).is_less_than_or_equal_to(5) }
end

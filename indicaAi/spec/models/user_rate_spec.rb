require 'rails_helper'

RSpec.describe UserRate, type: :model do
  it { should validate_numericality_of(:rating) }
  it { should validate_numericality_of(:rating).is_less_than_or_equal_to(5) }
  it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(0)}
end

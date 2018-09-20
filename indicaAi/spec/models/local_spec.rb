require 'rails_helper'

RSpec.describe Local, type: :model do
  it { should have_many(:favorite_locals).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end

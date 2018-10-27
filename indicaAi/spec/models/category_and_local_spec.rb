require 'rails_helper'

RSpec.describe CategoryAndLocal, type: :model do
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:local) }
end

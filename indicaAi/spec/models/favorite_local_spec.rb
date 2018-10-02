require 'rails_helper'

RSpec.describe FavoriteLocal, type: :model do
  it { should validate_presence_of(:local) }
  it { should validate_presence_of(:user_identifier) }
end

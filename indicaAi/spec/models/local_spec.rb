require 'rails_helper'

RSpec.describe Local, type: :model do
  it { should validate_presence_of(:name) }

  it 'Testing Search By Name - Should return similar names to params' do
    params = 'FGA'
    local = Local.new
    local.name = 'FGA'
    expect(Local.find_by_name(params)) == true
  end

  it 'Testing Find Local Ratings - Should return rating associated to parms' do
    params = 1
    local = Local.new
    local.name = 'FGA'
    local.save
    expect(Local.find_local_ratings(params)) == true
  end

end


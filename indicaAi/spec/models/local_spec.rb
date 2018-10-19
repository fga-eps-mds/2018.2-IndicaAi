require 'rails_helper'

RSpec.describe Local, type: :model do
  it { should validate_presence_of(:name) }

  it 'Testing Search By Name - Should return similar names to params' do
    local = create(:local)
    name = local.name
    result = Local.find_by_name(name)
    assert result.first, local
  end

  it 'Testing Find Local Ratings - Should return rating associated to parms' do
    local = create(:local)
    nota = create(:local_rating, local: local)

    id = local.id
    result = Local.find_local_ratings(id)
    assert result.first, nota
  end

  it 'Testing Show Unique Place - Should return the local associate to id' do
    local = create(:local)
    local.name = 'Name'
    local.save
    result = Local.show_unique_place(local.id)
    assert result, local
  end
end

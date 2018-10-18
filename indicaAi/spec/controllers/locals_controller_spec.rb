require 'rails_helper'

RSpec.describe LocalsController, type: :controller do
  it { should route(:get, '/locals').to(action: :index) }
  it 'should return a JSON object' do
    get :index, format: :JSON
    expect(response).to be_success
  end

  context 'GET #search_locals' do
    let!(:local) { create(:local, name: 'Xoxo') }
    it 'should route locals/name/x to the corresponding action' do
      should route(:get, '/locals/name/x').to(action: :search_locals, name: 'x')
    end
  end
end

RSpec.describe LocalsController, type: :controller do
  let!(:category_test) { create(:category) }
  let!(:valid_params) do
    {
      'name' => Faker::Friends.location,
      'category_id' => category_test.id,
      'description' => Faker::Friends.quote,
      'latitude' => Faker::Number.decimal(2,8).to_f,
      'longitude' => Faker::Number.decimal(2, 8).to_f,
      'address' => Faker::Address.street_address,
      'telephone' => Faker::PhoneNumber.cell_phone
    }
  end
  describe 'POST #create' do
    it 'should returns success saved local' do
      post :create, params: valid_params
      
      expect(response).to be_success
      expect(assigns(:local)).to have_attributes(valid_params)
      expect(assigns(:local)).to be_persisted
      expect(assigns(:local)).to be_a(Local)
      expect(assigns(:local)).not_to eq(nil)
    end
  end
end

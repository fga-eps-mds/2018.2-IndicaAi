require 'rails_helper'

RSpec.describe LocalImagesController, type: :controller do
  let!(:local) { create(:local) }
  let!(:valid_params) do
    {
      id: local.id,
      image: Faker::StarWars.quote
    }
  end
  describe 'POST #recive_image' do
    it 'Should return sucess, Image Saved' do
      post :receive_image, params: valid_params  

      expect(response).to be_success
    end
    it 'Should return ERROR, Image not saved' do
      # local_id invalid
      valid_params['local_id'] = nil
      post :receive_image, params: valid_params

      expect(response).not_to be_success
    end
  end
end


require 'rails_helper'

RSpec.describe LocalImagesController, type: :controller do
  let!(:local) { create(:local) }
  let!(:valid_params) do
  @images = [Faker::ChuckNorris.fact,Faker::ChuckNorris.fact]
    {
      id: local.id,
      image: @images
    }
  end
  describe 'POST #recive_image' do
    it 'Should return sucess, Image Saved' do
      post :receive_image, params: valid_params  

      expect(response).to be_success
    end
    it 'Should return ERROR, Image not saved' do
      # local_id invalid
      valid_params['image'] = []
      post :receive_image, params: valid_params

      expect(response).to have_http_status(422)
    end
  end
end

require 'rails_helper'

RSpec.describe LocalImagesController, type: :controller do
  let!(:local) { create(:local) }
  images = [Faker::ChuckNorris.fact, Faker::ChuckNorris.fact]
  let!(:valid_params) do
    {
      id: local.id,
      image: images
    }
  end
  describe 'POST #recive_image' do
    it 'Should return sucess, Image Saved' do
      post :receive_image, params: valid_params
      expect(response).to be_success
    end
  end

  describe 'POST #recive_image' do
    it 'Should return have status 404' do
      # local_id invalid
      valid_params['id'] = 'hi'
      post :receive_image, params: valid_params
      expect(response).to have_http_status(404)
    end
  end
end

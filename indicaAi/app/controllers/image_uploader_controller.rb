# Image uploader controller
class Api::V1::UploadsController < ApplicationController
  def create
    new_image = Upload.new
    new_image.file = params['uploaded_image']
    new_image.user = current_user
    render json: Upload.last if new_image.save
    end
  end
end

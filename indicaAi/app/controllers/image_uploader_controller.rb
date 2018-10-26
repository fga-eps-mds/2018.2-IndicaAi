# Image uploader controller
class Api::V1::UploadsController < ApplicationController

    def create
      newImage = Upload.new
      newImage.file = params["uploaded_image"]
      newImage.user = current_user
      if newImage.save
        render json: Upload.last
      end
    end
  end

# Local Images Controller
class LocalImagesController < ApplicationController
  def receive_image
    local = Local.find(params[:id])
    return response_success('ERROR', 404) unless local.present?
    images = params[:image]
    images.each do |image|
      LocalImage.create(image: image, local_id: params[:id])
    end
    response_success('SUCCESS', 'Images saved', 200)
  end
end

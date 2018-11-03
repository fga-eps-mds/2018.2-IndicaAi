# Local Images Controller
class LocalImagesController < ApplicationController
  def receive_image
    local = Local.find(params[:id])
    if local.present?
      images = params[:image]
      images.each do |image|
        LocalImage.create(image: image, local_id: params[:id])
      end
      response_success('SUCCESS', 'Images saved', 200)
    else
      response_error('ERROR', 'Place not found', 422)
    end
  end

  private

  def local_images_params
    params.require(:local_id).permit(images: [])
  end
end

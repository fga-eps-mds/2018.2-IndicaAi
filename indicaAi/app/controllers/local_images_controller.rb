# Local Images Controller
class LocalImagesController < ApplicationController
  def receive_image
    local = Local.find(params[:id])
    if local.present?
        images = params[:images]
        images.each do |image|
            LocalImage.create(image: image, local: local)
        end
        response_success('SUCCESS', 'Images saved', 200)
    else
        response_error('ERROR', 'Images not saved', 422)  
    end
  else
  end

  private

  def local_images_params
    params.require(:local_id).permit({ images:[] })
  end

end

# Local Images Controller
class LocalImagesController < ApplicationController
  def local_images_params
    params.require(:local_id).permit({ images:[] })
  end

  def receive_image
    @image = LocalImage.create(params[:id], :image => params[:image] )
    response_success('SUCCESS', 'Image Saved', 200) if @image == true
  else
    response_error('ERROR', 'Image not saved', 422)  
  end
end
# Favorite Controller
class FavoriteLocalsController < ApplicationController
  # GET /favorites
  def index
    @favorites = FavoriteLocal.all
  #   render json: {status: 'SUCCESS', message:'Saved article', data:@favorite},status: :ok
    json_response(@favorites)
  end

  # Post /favorite/create
  def create
		@favorite = FavoriteLocal.new(favorite_params)
    @favorite.save

    if @favorite.save
      render json: {status: 'SUCCESS', message:'Saved favorite', data:@favorite},status: :ok
    else
      render json: {status: 'ERROR', message:'Favorite not saved', data:@favorite.erros},status: :unprocessable_entity
    end
  end
  
  # Patch /favorites/update/:id
  def update
    @favorite = FavoriteLocal.find(params[:id])
    @favorite.update(favorite_params)
    render json: {status: 'SUCCESS', message:'Updated favorite', data:@favorite},status: :ok
  end

  # Delete /favorites/destroy/:id
  def destroy
    @favorite = FavoriteLocal.find(params[:id])
    @favorite.destroy
    render json: {status: 'SUCCESS', message:'Deleted favorite', data:@favorite},status: :ok
  end
  
  private

		def favorite_params
			params.permit(:user_identifier_id, :local_id, :label, :body)
		end
end
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
      render json: {status: 'SUCCESS', message:'Saved article', data:@favorite},status: :ok
    else
      render json: {status: 'ERROR', message:'Articles not saved', data:@favorite.erros},status: :unprocessable_entity
    end
  end
  
  private

		def favorite_params
			params.permit(:user_identifier_id, :local_id, :label, :body)
		end
end
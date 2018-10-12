# Favorite Controller
class FavoriteLocalsController < ApplicationController
  # GET /favorites
  def index
    @favorites = FavoriteLocal.all
    json_response(@favorites)
  end

  # Post /favorite/create
  def create
		@favorite = FavoriteLocal.new(favorite_params)
    if @favorite.valid?
      @favorite.save
      render json: {
        status: 'SUCCESS', message:'Saved favorite',
        data:@favorite
      },status: :ok
    else
      render json: {
        status: 'ERROR', message:'Favorite not saved'
        # data:@favorite.erros
      },status: :unprocessable_entity
    end
  end
  
  # Patch /favorites/update/:id
  def update
    @favorite = FavoriteLocal.find(params[:id])
    @favorite.update(favorite_params)

    if @favorite.save
      render json: {
        status: 'SUCCESS', message:'Updated favorite',
        data:@favorite
      },status: :ok
    else
      render json: {
        status: 'ERROR', message:'Not updated favorite',
      },status: :unprocessable_entity
    end
  end

  # Delete /favorites/destroy/:id
  def destroy
    @favorite = FavoriteLocal.find(params[:id])
    if @favorite.destroy
      render json: {
        status: 'SUCCESS', message:'Deleted favorite',
      },status: :ok
    end
  end
  
  private

		def favorite_params
			params.permit(:user_identifier_id, :local_id, :label, :body)
		end
end
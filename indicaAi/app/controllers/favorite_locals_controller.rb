# Favorite Controller
class FavoriteLocalsController < ApplicationController
  # Post /favorite/create
  def create
    @favorite = FavoriteLocal.new(favorite_params)
    if @favorite.save
      response_success('SUCCESS', 'Saved favorite', @favorite, 200)
    else
      response_error('ERROR', 'Favorite not saved', 422)
    end
  end

  # Put /favorites/update/:id
  def update
    @favorite = FavoriteLocal.find_by_id(params[:id])

    if @favorite.nil?
      response_error('ERROR', 'Favorite not found', 404)
    elsif @favorite.update(favorite_params)
      response_success('SUCCESS', 'Updated favorite', @favorite, 200)
    else
      response_error('ERROR', 'Favorite not updated', 422)
    end
  end

  # Delete /favorites/destroy/:id
  def destroy
    @favorite = FavoriteLocal.find_by_id(params[:id])

    if @favorite.nil?
      response_error('ERROR', 'Favorite not found', 404)
    elsif @favorite.destroy
      response_success('SUCCESS', 'Deleted favorite', @favorite, 200)
    else
      response_error('ERROR', 'Favorite not deleted', 422)
    end
  end

  private

  def favorite_params
    params.permit(:user_identifier_id, :local_id)
  end
end

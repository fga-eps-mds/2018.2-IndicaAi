# Favorite Controller
class FavoriteLocalsController < ApplicationController

  before_action :authenticate_request!

  # Post /favorite/create
  def create
    @favorite = FavoriteLocal.new(favorite_params)
    @favorite.user_identifier = current_user
    if @favorite.save
      response_success('SUCCESS', 'Saved favorite', @favorite, 200)
    else
      response_error('ERROR', @favorite.errors, 422)
    end
  end

  # Put /favorites/update/:id
  def update
    @favorite = FavoriteLocal.find_by_id(params[:id])

    if @favorite.nil?
      response_error('ERROR', 'Favorite not found', 404)
    elsif @favorite.user_identifier != current_user
      response_error('ERROR', 'User hasn\'t permission', :forbidden)
    elsif @favorite.update(favorite_params)
      response_success('SUCCESS', 'Updated favorite', @favorite, 200)
    else
      response_error('ERROR', @favorite.errors, 422)
    end
  end

  # Delete /favorites/destroy/:id
  def destroy
    @favorite = FavoriteLocal.find_by_id(params[:id])

    if @favorite.nil?
      response_error('ERROR', 'Favorite not found', 404)
    elsif current_user.nil? || @favorite.user_identifier != current_user
      response_error('ERROR', 'User hasn\'t permission', :forbidden)
    elsif @favorite.destroy
      response_success('SUCCESS', 'Deleted favorite', @favorite, 200)
    else
      response_error('ERROR', @favorite.errors, 422)
    end
  end

  private

  def favorite_params
    params.require(:local).permit(:local_id)
  end
end

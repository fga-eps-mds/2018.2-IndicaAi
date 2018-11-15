# Favorite Controller
class FavoriteLocalsController < ApplicationController
  # Post /favorite/create
  def create
    if (user = UserIdentifier.find_by(identifier: params[:user_identifier]))
      @favorite = FavoriteLocal.new(favorite_create_params(params, user))
      result = { favorite: @favorite, user: user }
      if @favorite.save
        response_success('SUCCESS', 'Favorite saved', result, 200)
      else response_error('ERROR', 'Favorite not saved', 422)
      end
    else response_error('ERROR', 'User not found', 422)
    end
  end

  # Put /favorites/update/:id
  def update
    @favorite = FavoriteLocal.find_by_id(params[:id])

    if @favorite.nil?
      response_error('ERROR', 'Favorite not found', 404)
    elsif @favorite.update(favorite_update_params)
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
    end
  end

  private

  def favorite_create_params(params, user)
    {
      user_identifier_id: user.id,
      local_id: params[:local_id]
    }
  end

  def favorite_update_params
    params.permit(:user_identifier_id, :local_id)
  end
end

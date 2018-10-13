# Favorite Controller
class FavoriteLocalsController < ApplicationController
  # Post /favorite/create
  def create
    @favorite = FavoriteLocal.new(favorite_params)
    if @favorite.save
      render_success('SUCCESS', 'Saved favorite', @favorite)
    else
      render_error('ERROR', 'Favorite not saved')
    end
  end

  # Patch /favorites/update/:id
  def update
    @favorite = FavoriteLocal.find(params[:id])
    @favorite.update(favorite_params)

    if @favorite.save
      render_success('SUCCESS', 'Updated favorite', @favorite)
    else
      render_error('ERROR', 'Not updated favorite')
    end
  end

  # Delete /favorites/destroy/:id
  def destroy
    @favorite = FavoriteLocal.find(params[:id])
    return render_success('SUCCESS', 'Deleted favorite', @favorite) if
      @favorite.destroy
  end

  private

  def favorite_params
    params.permit(:user_identifier_id, :local_id, :label, :body)
  end

  def render_success(type, message, data)
    render json: {
      status: type, message: message,
      data: data
    }, status: :ok
  end

  def render_error(type, message)
    render json: {
      status: type, message: message
    }, status: :unprocessable_entity
  end
end

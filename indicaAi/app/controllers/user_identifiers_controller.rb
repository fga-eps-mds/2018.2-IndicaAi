# Users Controller
class UserIdentifiersController < ApplicationController
  # List all users
  def index
    @users = UserIdentifier.all
    json_response(@users)
  end

  def show_user
    @user = UserIdentifier.find_by(identifier: params[:user_identifier])
    result = []
    result << @user.as_json(methods: [:favorite_locals])
    json_response(result)
  end

  # list all favorites of user
  def list_favorites
    if (user = UserIdentifier.find_by(identifier: params[:user_identifier]))
      @favorites = UserIdentifier.find_favorites(user.id)
      result = []
      @favorites.each do |favorite|
        result << response_format_favorite(favorite)
      end
      json_response(favorites: result)
    else
      response_error('ERROR', 'User not found', 422)
    end
  end
end

private

def response_format_favorite(favorite)
  favorite.as_json(
    include: { local: {
      include: {
        opening_hours: { only: %i[day opens closes] },
        categories: { only: %i[id name] },
        local_ratings: { only: %i[id value] },
        local_images: { only: %s(image) }
      }
    } }
  )
end
